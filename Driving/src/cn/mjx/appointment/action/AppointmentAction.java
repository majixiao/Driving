package cn.mjx.appointment.action;

import java.util.Date;

import org.apache.struts2.ServletActionContext;

import cn.mjx.appointment.service.AppointmentService;
import cn.mjx.appointment.vo.Appointment;
import cn.mjx.coach.service.CoachService;
import cn.mjx.coach.vo.Coach;
import cn.mjx.record.service.RecordService;
import cn.mjx.record.vo.Record;
import cn.mjx.students.vo.Students;
import cn.mjx.util.PageBean;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AppointmentAction extends ActionSupport implements
		ModelDriven<Appointment> {
	private Appointment appointment = new Appointment();
	private AppointmentService appointmentService;
	private RecordService recordService;

	public RecordService getRecordService() {
		return recordService;
	}

	public void setRecordService(RecordService recordService) {
		this.recordService = recordService;
	}

	private int page;

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

	public Appointment getModel() {
		// TODO Auto-generated method stub
		return appointment;
	}

	public void validateSaveAppointmnet() throws Exception {

		if (appointment.getPstarttime() == null
				|| appointment.getPstarttime().getTime() < new Date().getTime()) {
			this.addFieldError("pstarttime", "请输入合适的日期！！");
		}
		if (appointment.getPnumber() == 0) {
			this.addFieldError("pnumer", "请输入合适的人数！！");
		}
	}

	public String saveAppointmnet() {
		appointment.setPdate(new Date());
		appointment.setPremaining(appointment.getPnumber());
		Coach coach = (Coach) ServletActionContext.getRequest().getSession()
				.getAttribute("coach");
		appointment.setCoach(coach);
		// System.out.println(appointment.toString());容易引起堆栈溢出
		appointmentService.saveAppointment(appointment);

		return "saveAppointmnet";
	}

	public String selectAppointment() {
		Coach coach = (Coach) ServletActionContext.getRequest().getSession()
				.getAttribute("coach");
		PageBean<Appointment> pageBean = appointmentService.findAll(page,
				coach.getCid());
		ServletActionContext.getContext().getValueStack()
				.set("pageBean", pageBean);
		return "selectAppointment";
	}

	public String selectBypid() {

PageBean<Record> pageBean = recordService.findBypid(page,appointment.getPid());
		
ServletActionContext.getContext().getValueStack()
		.set("pageBean", pageBean);

		return "selectBypid";
	}
	
	public String delete(){
		appointmentService.delete(appointment);
		return "delete";
	}
}
