package cn.mjx.page.action;

import java.util.List;

import cn.mjx.coach.service.CoachService;
import cn.mjx.coach.vo.Coach;
import cn.mjx.students.service.StudentsService;
import cn.mjx.students.vo.Students;
import cn.mjx.util.MailUtil;

import com.opensymphony.xwork2.ActionSupport;

public class PageAction extends ActionSupport {
	private String phone;
	private String kind;
	private StudentsService studentsService;
	private CoachService coachService;

	public StudentsService getStudentsService() {
		return studentsService;
	}

	public void setStudentsService(StudentsService studentsService) {
		this.studentsService = studentsService;
	}

	public CoachService getCoachService() {
		return coachService;
	}

	public void setCoachService(CoachService coachService) {
		this.coachService = coachService;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String adminlogin() {

		return "adminlogin";
	}

	public String studentsSelect() {
		return "studentsSelect";
	}

	public String editAppointment() {
		return "editAppointment";
	}

	public String recordFail() {
		this.addActionMessage("对不起，预约失败！！");
		return "recordFail";
	}

	public String recordSuccess() {
		this.addActionMessage("恭喜你，预约成功，注意考试时间！！");
		return "recordSuccess";
	}

	public String recordAgain() {
		this.addActionMessage("你已经预约过，请确认！");
		return "recordAgain";
	}

	public String recordDelete() {

		this.addActionMessage("逾期删除成功！！");
		return "recordDelete";
	}

	public String chanelRecord() {
		this.addActionMessage("取消预约成功！！");
		return "chanelRecord";
	}

	public String chanelFail() {
		this.addActionMessage("取消预约失败！！请重试");
		return "chanelFail";
	}

	public String forget() {

		return "forget";
	}

	public String sendEmail() {
		this.addActionMessage("管理员未配置邮箱服务器，请联系管理员");
		/*
		 * if (kind.equals("stu")) { List<Students> list =
		 * studentsService.findOneBysphone(phone); if (list != null &&
		 * list.size() > 0) { Students students = list.get(0);
		 * MailUtil.sendMail(students.getSemail(), students.getSpw());
		 * this.addActionMessage("邮件已发送!!!"); } else {
		 * this.addActionMessage("未找到用户!!!"); }
		 * 
		 * } else {
		 * 
		 * List<Coach> list = coachService.findOneBysphone(phone); if (list !=
		 * null && list.size() > 0) { Coach coach = list.get(0);
		 * MailUtil.sendMail(coach.getCemail(), coach.getCpwd());
		 * this.addActionMessage("邮件已发送!!!"); } else {
		 * this.addActionMessage("未找到用户!!!"); }
		 * 
		 * }
		 */

		return "sendEmail";
	}
}
