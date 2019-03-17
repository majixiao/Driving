package cn.mjx.students.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.mjx.admin.vo.AdminUser;
import cn.mjx.students.vo.Students;
import cn.mjx.util.PageBean;
import cn.mjx.util.PageHibernateCallback;

public class StudentsDao extends HibernateDaoSupport {

	public void registeredOne(Students students) {
		// TODO Auto-generated method stub
		if (students != null) {
			this.getHibernateTemplate().save(students);
		}
	}

	public List findOneBysphone(String sphone) {
		String hql = "from Students where sphone='" + sphone + "'";
		List<Students> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() >= 1)
			return list;

		else
			return null;
	}

	public List login(Students students) {
		String hql = "from Students where sphone='" + students.getSphone()
				+ "' and spw='" + students.getSpw() + "'";
		List<Students> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() >= 1)
			return list;

		else
			return null;
	}

	public void updateStu(Students students) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(students);
	}

	public List<Students> findAll(int page, int limit) {
		String hql = "from Students";
		List<Students> list = this.getHibernateTemplate().execute(
				new PageHibernateCallback<Students>(hql, null, page, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;

	}

	public int findCount() {
		String hql = "select count(*) from Students";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {

			return list.get(0).intValue();

		} else {

			return 0;
		}
	}

	public List<Students> selectBysname(String sname) {
		String hql = " from Students where sname=?";
		List<Students> list = this.getHibernateTemplate().find(hql, sname);
		if (list != null && list.size() > 0) {

			return list;

		} else {

			return null;
		}
	}

	public AdminUser adminLogin(String name, String pwd) {
		String hql = " from AdminUser where username=? and password=?";
		List<AdminUser> list = this.getHibernateTemplate().find(hql, name, pwd);
		if (list != null && list.size() > 0) {

			return list.get(0);

		} else {

			return null;
		}
	}

	public void delete(Students students) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(students);
	}

	public Students findOneBysid(int sid) {
		String hql = "from Students where sid=" + sid;
		List<Students> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() >= 1)
			return list.get(0);

		else
			return null;
	}

}
