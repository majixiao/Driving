package cn.mjx.login.action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	// 用户与学员进
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
		this.addActionMessage("预约信息发布成功");
		return "toHome";
	}
	
}
