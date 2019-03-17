package cn.mjx.adminCoa.action;

import org.apache.struts2.ServletActionContext;

import cn.mjx.appointment.service.AppointmentService;
import cn.mjx.appointment.vo.Appointment;
import cn.mjx.coach.service.CoachService;
import cn.mjx.coach.vo.Coach;
import cn.mjx.students.vo.Students;
import cn.mjx.util.PageBean;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AdminCoaAction extends ActionSupport implements ModelDriven<Coach> {
	private Coach coach = new Coach();
	private CoachService coachService;
	private AppointmentService appointmentService;

	public AppointmentService getAppointmentService() {
		return appointmentService;
	}

	public void setAppointmentService(AppointmentService appointmentService) {
		this.appointmentService = appointmentService;
	}

	private int page = 1;

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

	public Coach getModel() {
		// TODO Auto-generated method stub
		return coach;
	}

	public String findAll() {
		PageBean<Coach> pageBean = coachService.findAll(page);

		ServletActionContext.getContext().getValueStack()
				.set("pageBean", pageBean);
		return "findAll";
	}

	public String delete() {
		coachService.delete(coach);
		return "delete";
	}

	public String passOn() {
		coachService.updateCoach(coach.getCid(), 1);
		return "pass";
	}

	public String passOut() {
		coachService.updateCoach(coach.getCid(), 0);
		coach = coachService.findOneBycid(coach.getCid());
		for (Appointment appointment : coach.getAppointment()) {
			appointmentService.delete(appointment);
		}

		return "pass";
	}

	public String edit() {
		coach = coachService.findOneBycid(coach.getCid());
		return "edit";
	}

	public String editover() {

		coachService.updateAdminCoach(coach);
		return "editover";
	}
}
