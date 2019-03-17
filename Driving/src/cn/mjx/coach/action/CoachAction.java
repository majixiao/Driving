package cn.mjx.coach.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import cn.mjx.coach.service.CoachService;
import cn.mjx.coach.vo.Coach;
import cn.mjx.students.vo.Students;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CoachAction extends ActionSupport implements ModelDriven<Coach> {
	private Coach coach = new Coach();
	private CoachService coachService;
	private String sphone;
	private String spw;

	public String getSphone() {
		return sphone;
	}

	public void setSphone(String sphone) {
		this.sphone = sphone;
	}

	public String getSpw() {
		return spw;
	}

	public void setSpw(String spw) {
		this.spw = spw;
	}

	public CoachService getCoachService() {
		return coachService;
	}

	public void setCoachService(CoachService coachService) {
		this.coachService = coachService;
	}

	private String checkimg;

	public String getCheckimg() {
		return checkimg;
	}

	public void setCheckimg(String checkimg) {
		this.checkimg = checkimg;
	}

	public Coach getModel() {
		// TODO Auto-generated method stub
		return coach;
	}

	public String ajax() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		String cphone = coach.getCphone();
		if (cphone.length() != 11) {
			response.getWriter().write(
					"<font id='check' color='red'>�� ȷ �� �� �� ��  </font>");
			response.getWriter().flush();
		} else {
			List<Coach> stu = coachService.findOneBysphone(cphone);
			if (stu != null && stu.size() >= 1) {
				response.getWriter().write(
						"<font id='check' color='red'>�� �� �� �� �� �� �� </font>");
				response.getWriter().flush();
			} else {
				response.getWriter().write(
						"<font id='check' color='green'>�� �� �� �� �� </font>");
				response.getWriter().flush();
			}

		}
		return NONE;
	}

	public String registered() {
		String checkcode1 = (String) ServletActionContext.getRequest()
				.getSession().getAttribute("checkcode");
		coach.setCdate(new Date());
		System.out.println(coach);
		if (!checkcode1.equalsIgnoreCase(checkimg)) {
			System.out.println("��֤������e�`");
			this.addActionError("��֤��������󣡣���");
			return "registeredFail";
		} else {
			System.out.println(checkcode1 + "-sss--" + checkimg);
			System.out.println("��֤��������ȷ");
			coachService.registeredOne(coach);
			this.addActionError("ע��ɹ�����  �ڹ���Ա��֤ͨ����ɵ�¼����");

			return "registered";

		}

	}

	public String login() {
		List<Coach> list = coachService.login(sphone, spw);

		if (list != null && list.size() >= 1) {
			Coach coach = list.get(0);
			if (coach.getCstate() == 1) {
				ServletActionContext.getRequest().getSession()
						.setAttribute("coach", coach);
				return "login";
			} else {
				this.addActionError("����˺Ż�δ���ͨ��!!!!!!!!");
				return "loginFail";

			}
		} else {
			this.addActionError("�����Ա�û���������!!!!!!!!");
			return "loginFail";
		}

	}

	public String loginOut() {
		ServletActionContext.getRequest().getSession().removeAttribute("coach");

		return "loginOut";
	}

	public String update() {
		System.out.println(coach.toString());
		coachService.updateCoach(coach);
		ServletActionContext.getRequest().getSession()
		.setAttribute("coach", coach);
		
		return "update";
	}
	
	public String delete(){
		coachService.delete(coach);
		return "delete";
	}
}
