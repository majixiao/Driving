package cn.mjx.students.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.mjx.admin.vo.AdminUser;
import cn.mjx.students.dao.StudentsDao;
import cn.mjx.students.vo.Students;
import cn.mjx.util.PageBean;

@Transactional
public class StudentsService {
	private StudentsDao studentsDao;

	public StudentsDao getStudentsDao() {
		return studentsDao;
	}

	public void setStudentsDao(StudentsDao studentsDao) {
		this.studentsDao = studentsDao;
	}

	public void registeredOne(Students students) {
		studentsDao.registeredOne(students);
	}

	public List findOneBysphone(String sphone) {
		// TODO Auto-generated method stub
		return studentsDao.findOneBysphone(sphone);
	}

	public List login(Students students) {
		// TODO Auto-generated method stub
		return studentsDao.login(students);
	}

	public void updateStu(Students students) {
		// TODO Auto-generated method stub
		studentsDao.updateStu(students);
	}

	public PageBean<Students> findAll(int page) {
		int totalpage;
		int totalcount;
		int limit = 7;
		PageBean<Students> pageBean = new PageBean<Students>();
		pageBean.setLimit(limit);
		pageBean.setPage(page);
		totalcount = studentsDao.findCount();
		pageBean.setTotalCount(totalcount);
		if ((totalcount % limit) == 0)
			totalpage = totalcount / limit;
		else {
			totalpage = totalcount / limit + 1;
		}
		pageBean.setTotalPage(totalpage);
		int begin = (page - 1) * limit;
		List<Students> list = studentsDao.findAll(begin, limit);
		pageBean.setList(list);
		return pageBean;
	}

	public List<Students> selectBysname(String sname) {
		// TODO Auto-generated method stub
		return studentsDao.selectBysname(sname);
	}

	public AdminUser adminLogin(String name, String pwd) {
		// TODO Auto-generated method stub
		return studentsDao.adminLogin(name,pwd);
	}

	public void delete(Students students) {
		// TODO Auto-generated method stub
		studentsDao.delete(students);
	}

	public Students findOneBysid(int sid) {
		// TODO Auto-generated method stub
	return	studentsDao.findOneBysid(sid);
	}
}
