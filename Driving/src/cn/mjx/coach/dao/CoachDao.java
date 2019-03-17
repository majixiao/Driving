package cn.mjx.coach.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.mjx.appointment.vo.Appointment;
import cn.mjx.coach.vo.Coach;
import cn.mjx.students.vo.Students;
import cn.mjx.util.PageHibernateCallback;

public class CoachDao extends HibernateDaoSupport {

	public void registeredOne(Coach coach) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(coach);
	}

	public List<Coach> findOneBysphone(String cphone) {
		String hql = "from Coach where cphone='" + cphone + "'";
		List<Coach> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() >= 1)
			return list;

		else
			return null;
	}

	public List<Coach> login(String sphone, String spw) {
		String hql = "from Coach where cphone='" + sphone + "' and cpwd='"
				+ spw + "'";
		List<Coach> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() >= 1)
			return list;

		else
			return null;
	}

	public void updateCoach(Coach coach) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(coach);
	}

	public int findCount() {
		String hql = "select count(*) from Coach ";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {

			return list.get(0).intValue();

		} else {

			return 0;
		}
	}

	public List<Coach> findAll(int begin, int limit) {
		String hql = "from Coach";
		List<Coach> list = this.getHibernateTemplate().execute(
				new PageHibernateCallback<Coach>(hql, null, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	public List<Coach> selectBysname(String cname) {
		String hql = " from Coach where cname=?";
		List<Coach> list = this.getHibernateTemplate().find(hql, cname);
		if (list != null && list.size() > 0) {

			return list;

		} else {

			return null;
		}
	}

	public List<Coach> selectBycid(int cid) {
		String hql = " from Coach where cid=?";
		List<Coach> list = this.getHibernateTemplate().find(hql, cid);
		if (list != null && list.size() > 0) {

			return list;

		} else {

			return null;
		}
	}

	public void delete(Coach coach) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(coach);
	}

	public void updateCoach(int cid, int i) {
		// TODO Auto-generated method stub
		String hql = "update Coach set cstate=" + i + " where cid=" + cid;
		this.getSessionFactory().getCurrentSession().createSQLQuery(hql)
				.executeUpdate();
	}

	public Coach findOneBycid(int cid) {
		String hql = "from Coach where cid=" + cid;
		List<Coach> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() >= 1)
			return list.get(0);

		else
			return null;
	}

}
