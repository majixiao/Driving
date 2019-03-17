package cn.mjx.students.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import cn.mjx.appointment.service.AppointmentService;
import cn.mjx.appointment.vo.Appointment;
import cn.mjx.coach.service.CoachService;
import cn.mjx.coach.vo.Coach;
import cn.mjx.record.vo.Record;
import cn.mjx.students.service.StudentsService;
import cn.mjx.students.vo.Students;
import cn.mjx.util.PageBean;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class StudentsAction extends ActionSupport implements
		ModelDriven<Students> {
	private Students students = new Students();
	private String checkimg;// 获取验证码
	private String kind;
	private StudentsService studentsService;
	private AppointmentService appointmentService;
	private CoachService coachService;
	private int page;
	private String cname;
	private int cid;

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public CoachService getCoachService() {
		return coachService;
	}

	public void setCoachService(CoachService coachService) {
		this.coachService = coachService;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public AppointmentService getAppointmentService() {
		return appointmentService;
	}

	public void setAppointmentService(AppointmentService appointmentService) {
		this.appointmentService = appointmentService;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getCheckimg() {
		return checkimg;
	}

	public StudentsService getStudentsService() {
		return studentsService;
	}

	public void setStudentsService(StudentsService studentsService) {
		this.studentsService = studentsService;
	}

	public void setCheckimg(String checkimg) {
		this.checkimg = checkimg;
	}

	public Students getModel() {
		// TODO Auto-generated method stub
		return students;
	}

	// 验证用户名是否存在
	public String ajax() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		String sphone = students.getSphone();
		if (sphone.length() != 11) {
			response.getWriter().write(
					"<font color='red'>请 确 认 手 机 号 ！ ！ ！ ！ </font>");
			response.getWriter().flush();
		} else {
			List<Students> stu = studentsService.findOneBysphone(sphone);
			if (stu != null && stu.size() >= 1) {
				response.getWriter().write(
						"<font color='red'>用 户 名 已 经 存 在 ! !</font>");
				response.getWriter().flush();
			} else {
				response.getWriter().write(
						"<font color='green'>用 户 名 可 用 </font>");
				response.getWriter().flush();
			}

		}

		return NONE;
	}

	public String registered() throws Exception {
		String checkcode1 = (String) ServletActionContext.getRequest()
				.getSession().getAttribute("checkcode");
		System.out.println(students);
		if (!checkcode1.equalsIgnoreCase(checkimg)) {
			System.out.println("验证码错误錯誤");
			this.addActionError("验证码输入错误！！！");
			return "registeredFail";
		} else {
			System.out.println(students);
			System.out.println(checkcode1 + "---" + checkimg);
			System.out.println("验证码输入正确");
			studentsService.registeredOne(students);
			this.addActionError("注册成功！！");
			return "registered";

		}
	}

	public String login() {
		if (kind.equals("stu")) {
			List<Students> stu = studentsService.login(students);
			if (stu != null && stu.size() >= 1) {
				Students student = stu.get(0);
				ServletActionContext.getRequest().getSession()
						.setAttribute("student", student);
				return "loginIn";
			} else {
				this.addActionError("请检查学员用户名与密码!!!!!!!!");
				return "loginFail";
			}
		} else {

			return "coachLogin";
		}
	}

	public String loginOut() {
		ServletActionContext.getRequest().getSession()
				.removeAttribute("student");

		return "loginOut";
	}

	public String update() {
		studentsService.updateStu(students);
		ServletActionContext.getRequest().getSession()
				.setAttribute("student", students);

		return "update";
	}

	public String lookAppointment() {
		PageBean<Appointment> pageBean = appointmentService.findAll(page);

		ServletActionContext.getContext().getValueStack()
				.set("pageBean", pageBean);

		return "lookAppointment";
	}

	public String stulookAppointment() {
		PageBean<Appointment> pageBean = appointmentService.findAll(page);

		ServletActionContext.getContext().getValueStack()
				.set("pageBean", pageBean);
		return "stulookAppointment";
	}

	public String coachSelect() {
		PageBean<Coach> pageBean = coachService.findAll(page);

		ServletActionContext.getContext().getValueStack()
				.set("pageBean", pageBean);
		return "coachSelect";
	}

	public String selectBycname() throws UnsupportedEncodingException {
		cname=URLDecoder.decode(cname,"utf-8");

		List<Coach> list = coachService.selectBysname(cname);
		if (list != null && list.size() > 0) {
			PageBean<Coach> pageBean = new PageBean<Coach>();
			pageBean.setLimit(5);
			pageBean.setPage(1);
			pageBean.setTotalCount(1);
			pageBean.setTotalPage(1);
			System.out.println(cname);
			pageBean.setList(list);
			ServletActionContext.getContext().getValueStack()
					.set("pageBean", pageBean);
			return "selectBycname";
		} else {
			this.addActionError("未找到教员的名字！！");
			PageBean<Coach> pageBean = coachService.findAll(1);
			ServletActionContext.getContext().getValueStack()
					.set("pageBean", pageBean);
			return "coachSelect";
		}

	}

	public String selectBycid() {
		List<Coach> list = coachService.selectBycid(cid);
		if (list != null && list.size() > 0) {
			PageBean<Coach> pageBean = new PageBean<Coach>();
			pageBean.setLimit(5);
			pageBean.setPage(1);
			pageBean.setTotalCount(1);
			pageBean.setTotalPage(1);
			pageBean.setList(list);
			ServletActionContext.getContext().getValueStack()
					.set("pageBean", pageBean);
			return "selectBycid";
		} else {
			this.addActionError("未找到教员的名字！！");
			PageBean<Coach> pageBean = coachService.findAll(1);
			ServletActionContext.getContext().getValueStack()
					.set("pageBean", pageBean);
			return "coachSelect";
		}

	}

	public String stuRecordAppointment() {
		PageBean<Appointment> pageBean = appointmentService.findAll(page);

		ServletActionContext.getContext().getValueStack()
				.set("pageBean", pageBean);

		return "stuRecordAppointment";
	}
}
