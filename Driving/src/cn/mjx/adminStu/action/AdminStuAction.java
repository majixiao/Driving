package cn.mjx.adminStu.action;

import java.util.Iterator;
import java.util.Set;

import org.apache.struts2.ServletActionContext;

import cn.mjx.admin.vo.AdminUser;
import cn.mjx.appointment.vo.Appointment;
import cn.mjx.record.vo.Record;
import cn.mjx.students.service.StudentsService;
import cn.mjx.students.vo.Students;
import cn.mjx.util.PageBean;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AdminStuAction extends ActionSupport implements
		ModelDriven<Students> {
	private Students students = new Students();
	private StudentsService studentsService;
	private int page = 1;
	private String name;
	private String pwd;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public StudentsService getStudentsService() {
		return studentsService;
	}

	public void setStudentsService(StudentsService studentsService) {
		this.studentsService = studentsService;
	}

	public Students getModel() {
		// TODO Auto-generated method stub
		return students;
	}

	public String findAll() {
		System.out.println(page);
		PageBean<Students> pageBean = studentsService.findAll(page);

		ServletActionContext.getContext().getValueStack()
				.set("pageBean", pageBean);
		return "findall";
	}

	public String login() {
		AdminUser adminUser = studentsService.adminLogin(name, pwd);
		if (adminUser != null) {
			ServletActionContext.getRequest().getSession()
					.setAttribute("username", adminUser.getUsername());
			return "login";
		} else {
			this.addActionError("用户名或密码错误");
			return "loginFail";
		}
	}

	public String delete() {
		studentsService.delete(students);
		return "delete";
	}

	public String edit() {
		students = studentsService.findOneBysid(students.getSid());

		return "edit";
	}

	public String editover() {
		studentsService.updateStu(students);
		return "editover";
	}
}
