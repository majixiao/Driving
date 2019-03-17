package cn.mjx.appointment.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.mjx.appointment.vo.Appointment;
import cn.mjx.students.vo.Students;
import cn.mjx.util.PageHibernateCallback;

public class AppointmentDao extends HibernateDaoSupport {

	public void saveAppointment(Appointment appointment) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(appointment);
	}

	public int findCount(int cid) {
		String hql = "select count(*) from Appointment where cid=" + cid;
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {

			return list.get(0).intValue();

		} else {

			return 0;
		}
	}

	public List<Appointment> findAll(int begin, int limit, int cid) {
		String hql = "from Appointment where cid=" + cid;
		List<Appointment> list = this.getHibernateTemplate()
				.execute(
						new PageHibernateCallback<Appointment>(hql, null,
								begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	public void delete(Appointment appointment) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(appointment);
	}

	public int findCount() {
		String hql = "select count(*) from Appointment ";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {

			return list.get(0).intValue();

		} else {

			return 0;
		}
	}

	public List<Appointment> findAll(int begin, int limit) {
		String hql = "from Appointment";
		List<Appointment> list = this.getHibernateTemplate()
				.execute(
						new PageHibernateCallback<Appointment>(hql, null,
								begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	public List<Appointment> findBypid(int pid) {
		String hql = "from Appointment where pid=?";
		List<Appointment> list = this.getHibernateTemplate().find(hql, pid);
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;

	}

	public void updateAppoin(Appointment appointment) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().merge(appointment);
	}
}
