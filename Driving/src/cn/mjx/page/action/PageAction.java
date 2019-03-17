package cn.mjx.page.action;

import java.util.List;

import cn.mjx.coach.service.CoachService;
import cn.mjx.coach.vo.Coach;
import cn.mjx.students.service.StudentsService;
import cn.mjx.students.vo.Students;
import cn.mjx.util.MailUtil;

import com.opensymphony.xwork2.ActionSupport;

public class PageAction extends ActionSupport {
	private String phone;
	private String kind;
	private StudentsService studentsService;
	private CoachService coachService;

	public StudentsService getStudentsService() {
		return studentsService;
	}

	public void setStudentsService(StudentsService studentsService) {
		this.studentsService = studentsService;
	}

	public CoachService getCoachService() {
		return coachService;
	}

	public void setCoachService(CoachService coachService) {
		this.coachService = coachService;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String adminlogin() {

		return "adminlogin";
	}

	public String studentsSelect() {
		return "studentsSelect";
	}

	public String editAppointment() {
		return "editAppointment";
	}

	public String recordFail() {
		this.addActionMessage("�Բ���ԤԼʧ�ܣ���");
		return "recordFail";
	}

	public String recordSuccess() {
		this.addActionMessage("��ϲ�㣬ԤԼ�ɹ���ע�⿼��ʱ�䣡��");
		return "recordSuccess";
	}

	public String recordAgain() {
		this.addActionMessage("���Ѿ�ԤԼ������ȷ�ϣ�");
		return "recordAgain";
	}

	public String recordDelete() {

		this.addActionMessage("����ɾ���ɹ�����");
		return "recordDelete";
	}

	public String chanelRecord() {
		this.addActionMessage("ȡ��ԤԼ�ɹ�����");
		return "chanelRecord";
	}

	public String chanelFail() {
		this.addActionMessage("ȡ��ԤԼʧ�ܣ���������");
		return "chanelFail";
	}

	public String forget() {

		return "forget";
	}

	public String sendEmail() {
		this.addActionMessage("����Աδ�������������������ϵ����Ա");
		/*
		 * if (kind.equals("stu")) { List<Students> list =
		 * studentsService.findOneBysphone(phone); if (list != null &&
		 * list.size() > 0) { Students students = list.get(0);
		 * MailUtil.sendMail(students.getSemail(), students.getSpw());
		 * this.addActionMessage("�ʼ��ѷ���!!!"); } else {
		 * this.addActionMessage("δ�ҵ��û�!!!"); }
		 * 
		 * } else {
		 * 
		 * List<Coach> list = coachService.findOneBysphone(phone); if (list !=
		 * null && list.size() > 0) { Coach coach = list.get(0);
		 * MailUtil.sendMail(coach.getCemail(), coach.getCpwd());
		 * this.addActionMessage("�ʼ��ѷ���!!!"); } else {
		 * this.addActionMessage("δ�ҵ��û�!!!"); }
		 * 
		 * }
		 */

		return "sendEmail";
	}
}
