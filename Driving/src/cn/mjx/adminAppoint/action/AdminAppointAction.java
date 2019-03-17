package cn.mjx.adminAppoint.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import cn.mjx.appointment.service.AppointmentService;
import cn.mjx.appointment.vo.Appointment;
import cn.mjx.coach.service.CoachService;
import cn.mjx.coach.vo.Coach;
import cn.mjx.util.PageBean;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AdminAppointAction extends ActionSupport implements
		ModelDriven<Appointment> {
	private Appointment appointment = new Appointment();
	private AppointmentService appointmentService;
	private CoachService coachService;

	public CoachService getCoachService() {
		return coachService;
	}

	public void setCoachService(CoachService coachService) {
		this.coachService = coachService;
	}

	private int page = 1;
	private int cid;

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public AppointmentService getAppointmentService() {
		return appointmentService;
	}

	public void setAppointmentService(AppointmentService appointmentService) {
		this.appointmentService = appointmentService;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public Appointment getModel() {
		// TODO Auto-generated method stub
		return appointment;
	}

	public String findAll() {
		PageBean<Appointment> pageBean = appointmentService.findAll(page);

		ServletActionContext.getContext().getValueStack()
				.set("pageBean", pageBean);
		return "findAll";

	}

	public String delete() {
		appointmentService.delete(appointment);
		return "delete";
	}

	public String edit() {
		List<Appointment> list = appointmentService.findBypid(appointment
				.getPid());
		if (list != null && list.size() > 0) {
			appointment = list.get(0);
		}
		return "edit";
	}

	public String editover() {
		Coach coach = coachService.findOneBycid(cid);
		appointment.setCoach(coach);
		appointmentService.updateAppoint(appointment);
		return "editover";
	}
}
