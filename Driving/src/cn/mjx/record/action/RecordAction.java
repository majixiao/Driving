package cn.mjx.record.action;

import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import cn.mjx.appointment.service.AppointmentService;
import cn.mjx.appointment.vo.Appointment;
import cn.mjx.record.service.RecordService;
import cn.mjx.record.vo.Record;
import cn.mjx.students.vo.Students;
import cn.mjx.util.PageBean;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class RecordAction extends ActionSupport implements ModelDriven<Record> {
	private RecordService recordService;
	private AppointmentService appointmentService;
	private Record record = new Record();
	private int pid;
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

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public RecordService getRecordService() {
		return recordService;
	}

	public void setRecordService(RecordService recordService) {
		this.recordService = recordService;
	}

	public String recordAppointment() {
		Students students = (Students) ServletActionContext.getRequest()
				.getSession().getAttribute("student");
		List<Record> reList = recordService.findRecord(students, pid);
		if (reList == null) {

			List<Appointment> list = appointmentService.findBypid(pid);
			if (list != null && list.size() > 0) {
				Appointment appointment = list.get(0);
				System.out.println(list.get(0).hashCode());
				System.out.println(appointment.hashCode());
				if (appointment.getPremaining() > 0) {
					appointment.setPremaining(appointment.getPremaining() - 1);
					appointmentService.updateAppoint(appointment);
					Record record = new Record();
					record.setRdate(new Date());
					record.setAppointment(appointment);
					record.setStudents(students);
					recordService.saveOne(record);
					return "recordAppointment";
				} else
					return "recordFail";

			} else
				return "recordFail";

		} else {
			return "recordAgain";
		}
	}

	public String selectRecord() {
		Students students = (Students) ServletActionContext.getRequest()
				.getSession().getAttribute("student");
		PageBean<Record> pageBean = recordService.findBysid(page,
				students.getSid());

		ServletActionContext.getContext().getValueStack()
				.set("pageBean", pageBean);
		ServletActionContext.getContext().getValueStack()
				.set("nowdate", new Date());
		return "selectRecord";
	}

	public String delete() {
		recordService.delete(record);
		return "delete";
	}

	public String chanelRecord() {
		Record reco = recordService.findByrid(record.getRid());
		if (reco != null) {
			Appointment appointment = reco.getAppointment();
			appointment.setPremaining(appointment.getPremaining() + 1);
			appointmentService.updateAppoint(appointment);
			recordService.delete(reco);
			return "chanelRecord";
		}

		else {
			return "chanelFail";
		}
	}

	// Ä£ÐÍÇý¶¯
	public Record getModel() {

		return record;
	}
	
	
}
