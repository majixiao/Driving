package cn.mjx.record.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.mjx.appointment.vo.Appointment;
import cn.mjx.record.vo.Record;
import cn.mjx.students.vo.Students;
import cn.mjx.util.PageHibernateCallback;

public class RecordDao extends HibernateDaoSupport {

	public int findCount(int pid) {
		String hql = "select count(*) from Record where pid=" + pid;
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {

			return list.get(0).intValue();

		} else {

			return 0;
		}
	}

	public List<Record> findAll(int begin, int limit, int pid) {
		String hql = "from Record where pid=" + pid;
		List<Record> list = this.getHibernateTemplate().execute(
				new PageHibernateCallback<Record>(hql, null, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	public void saveOne(Record record) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().merge(record);
	}

	public List<Record> findRecord(Students students, int pid) {
		String hql = "from Record where sid=? and pid=?";
		List<Record> list = this.getHibernateTemplate().find(hql,
				students.getSid(), pid);

		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	public int findCountBysid(int sid) {
		String hql = "select count(*) from Record where sid=" + sid;
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {

			return list.get(0).intValue();

		} else {

			return 0;
		}
	}

	public List<Record> findAllBysid(int sid, int begin, int limit) {
		String hql = "from Record where sid=" + sid;
		List<Record> list = this.getHibernateTemplate().execute(
				new PageHibernateCallback<Record>(hql, null, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	public void delete(Record record) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(record);
	}

	public Record findByrid(int rid) {
		String hql = "from Record where rid=" + rid;
		List<Record> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
}
