package cn.mjx.index.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {
	public String index() throws Exception {

		return SUCCESS;
	}

	public String login() {
		return SUCCESS;
	}
	

}
