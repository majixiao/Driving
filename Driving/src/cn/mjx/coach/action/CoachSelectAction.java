package cn.mjx.coach.action;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import cn.mjx.coach.service.CoachService;
import cn.mjx.students.service.StudentsService;
import cn.mjx.students.vo.Students;
import cn.mjx.util.PageBean;

import com.opensymphony.xwork2.ActionSupport;

public class CoachSelectAction extends ActionSupport {
	private CoachService coachService;
	private StudentsService studentsService;
	private int page;
	private int find;
	public int getFind() {
		return find;
	}

	public void setFind(int find) {
		this.find = find;
	}

	private String sname;

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public CoachService getCoachService() {
		return coachService;
	}

	public void setCoachService(CoachService coachService) {
		this.coachService = coachService;
	}

	public StudentsService getStudentsService() {
		return studentsService;
	}

	public void setStudentsService(StudentsService studentsService) {
		this.studentsService = studentsService;
	}

	public String studentSelect() {
		PageBean<Students> pageBean = studentsService.findAll(page);
		ServletActionContext.getContext().getValueStack()
				.set("pageBean", pageBean);
		return "studentSelect";
	}

	public String selectBysname() throws Exception {
		sname=URLDecoder.decode(sname,"utf-8");

		List<Students> list = studentsService.selectBysname(sname);
		if (list != null && list.size() > 0) {
			PageBean<Students> pageBean = new PageBean<Students>();
			pageBean.setLimit(5);
			pageBean.setPage(1);
			pageBean.setTotalCount(1);
			pageBean.setTotalPage(1);
			System.out.println(sname);
			pageBean.setList(list);
			ServletActionContext.getContext().getValueStack()
					.set("pageBean", pageBean);
			return "selectBysname";
		} else {
			this.addActionError("未找到学员的名字！！");
			PageBean<Students> pageBean = studentsService.findAll(1);
			ServletActionContext.getContext().getValueStack()
					.set("pageBean", pageBean);
			return "studentSelect";
		}
	}
}
