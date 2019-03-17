package cn.mjx.record.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.mjx.appointment.vo.Appointment;
import cn.mjx.record.dao.RecordDao;
import cn.mjx.record.vo.Record;
import cn.mjx.students.vo.Students;
import cn.mjx.util.PageBean;

@Transactional
public class RecordService {
	private RecordDao recordDao;

	public RecordDao getRecordDao() {
		return recordDao;
	}

	public void setRecordDao(RecordDao recordDao) {
		this.recordDao = recordDao;
	}

	public PageBean<Record> findBypid(int page, int pid) {
		int totalpage;
		int totalcount;
		int limit = 8;
		PageBean<Record> pageBean = new PageBean<Record>();
		pageBean.setLimit(limit);
		pageBean.setPage(page);
		totalcount = recordDao.findCount(pid);
		pageBean.setTotalCount(totalcount);
		if ((totalcount % limit) == 0)
			totalpage = totalcount / limit;
		else {
			totalpage = totalcount / limit + 1;
		}

		pageBean.setTotalPage(totalpage);
		int begin = (page - 1) * limit;
		List<Record> list = recordDao.findAll(begin, limit, pid);
		pageBean.setList(list);
		return pageBean;
	}

	public void saveOne(Record record) {
		// TODO Auto-generated method stub
		recordDao.saveOne(record);
	}

	public List<Record> findRecord(Students students, int pid) {
		// TODO Auto-generated method stub
		return recordDao.findRecord(students, pid);
	}

	public PageBean<Record> findBysid(int page, int sid) {
		int totalpage;
		int totalcount;
		int limit = 7;
		PageBean<Record> pageBean = new PageBean<Record>();
		pageBean.setLimit(limit);
		pageBean.setPage(page);
		totalcount = recordDao.findCountBysid(sid);
		pageBean.setTotalCount(totalcount);
		if ((totalcount % limit) == 0)
			totalpage = totalcount / limit;
		else {
			totalpage = totalcount / limit + 1;
		}

		pageBean.setTotalPage(totalpage);
		int begin = (page - 1) * limit;
		List<Record> list = recordDao.findAllBysid(sid, begin, limit);
		pageBean.setList(list);
		return pageBean;
	}

	public void delete(Record record) {
		// TODO Auto-generated method stub
		recordDao.delete(record);
	}

	public Record findByrid(int rid) {
		// TODO Auto-generated method stub
		return recordDao.findByrid(rid);
	}

}
