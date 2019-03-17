package cn.mjx.appointment.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.mjx.appointment.dao.AppointmentDao;
import cn.mjx.appointment.vo.Appointment;
import cn.mjx.record.vo.Record;
import cn.mjx.students.vo.Students;
import cn.mjx.util.PageBean;

@Transactional
public class AppointmentService {
	private AppointmentDao appointmentDao;

	public AppointmentDao getAppointmentDao() {
		return appointmentDao;
	}

	public void setAppointmentDao(AppointmentDao appointmentDao) {
		this.appointmentDao = appointmentDao;
	}

	public void saveAppointment(Appointment appointment) {
		// TODO Auto-generated method stub
		appointmentDao.saveAppointment(appointment);
	}

	public PageBean<Appointment> findAll(int page, int cid) {
		int totalpage;
		int totalcount;
		int limit = 5;
		PageBean<Appointment> pageBean = new PageBean<Appointment>();
		pageBean.setLimit(limit);
		pageBean.setPage(page);
		totalcount = appointmentDao.findCount(cid);
		pageBean.setTotalCount(totalcount);
		if ((totalcount % limit) == 0)
			totalpage = totalcount / limit;
		else {
			totalpage = totalcount / limit + 1;
		}

		pageBean.setTotalPage(totalpage);
		int begin = (page - 1) * limit;
		List<Appointment> list = appointmentDao.findAll(begin, limit, cid);
		pageBean.setList(list);
		return pageBean;
	}

	public void delete(Appointment appointment) {
		// TODO Auto-generated method stub
		appointmentDao.delete(appointment);
	}

	public PageBean<Appointment> findAll(int page) {
		int totalpage;
		int totalcount;
		int limit = 7;
		PageBean<Appointment> pageBean = new PageBean<Appointment>();
		pageBean.setLimit(limit);
		pageBean.setPage(page);
		totalcount = appointmentDao.findCount();
		pageBean.setTotalCount(totalcount);
		if ((totalcount % limit) == 0)
			totalpage = totalcount / limit;
		else {
			totalpage = totalcount / limit + 1;
		}

		pageBean.setTotalPage(totalpage);
		int begin = (page - 1) * limit;
		List<Appointment> list = appointmentDao.findAll(begin, limit);
		pageBean.setList(list);
		return pageBean;
	}

	public List<Appointment> findBypid(int pid) {
		// TODO Auto-generated method stub
		return appointmentDao.findBypid(pid);
	}

	public void updateAppoint(Appointment appointment) {
		// TODO Auto-generated method stub
		appointmentDao.updateAppoin(appointment);
	}

}
