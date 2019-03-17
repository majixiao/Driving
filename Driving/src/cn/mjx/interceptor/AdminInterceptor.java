package cn.mjx.interceptor;

import cn.mjx.coach.vo.Coach;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class AdminInterceptor extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		String adminname = (String) invocation.getInvocationContext()
				.getSession().get("username");
		if (adminname != null) {
			
			return invocation.invoke();

		} else {
			ActionSupport actionSupport = (ActionSupport) invocation
					.getAction();
			actionSupport.addActionError("ÇëÏÈµÇÂ¼£¡£¡");
			return "adminerror";
		}
	}

}
