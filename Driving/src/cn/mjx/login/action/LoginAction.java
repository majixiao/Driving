package cn.mjx.login.action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	// �û���ѧԱ��
	public String stuSignUp() {
		return "stuSignUp";
	}

	public String coachSignUp() {
		return "coachSignUp";
	}

	public String updateStu() {
		return "updateStu";
	}

	public String updateCoach() {
		return "updateCoach";
	}

	public String toHome(){
		this.addActionMessage("ԤԼ��Ϣ�����ɹ�");
		return "toHome";
	}
	
}
