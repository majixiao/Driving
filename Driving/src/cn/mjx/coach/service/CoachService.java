package cn.mjx.coach.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.mjx.appointment.vo.Appointment;
import cn.mjx.coach.dao.CoachDao;
import cn.mjx.coach.vo.Coach;
import cn.mjx.util.PageBean;

@Transactional
public class CoachService {
	private CoachDao coachDao;

	public CoachDao getCoachDao() {
		return coachDao;
	}

	public void setCoachDao(CoachDao coachDao) {
		this.coachDao = coachDao;
	}

	public void registeredOne(Coach coach) {
		// TODO Auto-generated method stub
		coachDao.registeredOne(coach);
	}

	public List<Coach> findOneBysphone(String cphone) {
		// TODO Auto-generated method stub
		return coachDao.findOneBysphone(cphone);
	}

	public List<Coach> login(String sphone, String spw) {
		// TODO Auto-generated method stub
		return coachDao.login(sphone, spw);
	}

	public void updateCoach(Coach coach) {
		// TODO Auto-generated method stub
		coach.setCstate(1);
		coachDao.updateCoach(coach);
	}

	public PageBean<Coach> findAll(int page) {
		int totalpage;
		int totalcount;
		int limit = 7;
		PageBean<Coach> pageBean = new PageBean<Coach>();
		pageBean.setLimit(limit);
		pageBean.setPage(page);
		totalcount = coachDao.findCount();
		pageBean.setTotalCount(totalcount);
		if ((totalcount % limit) == 0)
			totalpage = totalcount / limit;
		else {
			totalpage = totalcount / limit + 1;
		}

		pageBean.setTotalPage(totalpage);
		int begin = (page - 1) * limit;
		List<Coach> list = coachDao.findAll(begin, limit);
		pageBean.setList(list);
		return pageBean;
	}

	public List<Coach> selectBysname(String cname) {
		// TODO Auto-generated method stub
		return coachDao.selectBysname(cname);
	}

	public List<Coach> selectBycid(int cid) {
		// TODO Auto-generated method stub
		return coachDao.selectBycid(cid);
	}

	public void delete(Coach coach) {
		// TODO Auto-generated method stub
		coachDao.delete(coach);
	}

	public void updateCoach(int cid, int i) {
		// TODO Auto-generated method stub
		coachDao.updateCoach(cid, i);
	}

	public Coach findOneBycid(int cid) {
		// TODO Auto-generated method stub
		return coachDao.findOneBycid(cid);
	}

	public void updateAdminCoach(Coach coach) {
		// TODO Auto-generated method stub
		coachDao.updateCoach(coach);
	}

}
