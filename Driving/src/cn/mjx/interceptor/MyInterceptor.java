package cn.mjx.interceptor;

import cn.mjx.coach.vo.Coach;
import cn.mjx.students.vo.Students;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class MyInterceptor extends MethodFilterInterceptor {


	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		Students students = (Students) invocation.getInvocationContext()
				.getSession().get("student");
		Coach coach = (Coach) invocation.getInvocationContext().getSession()
				.get("coach");
		if (students != null||coach !=null) {
			return invocation.invoke();

		} else {
			ActionSupport actionSupport = (ActionSupport) invocation
					.getAction();
			actionSupport.addActionMessage("ÇëÏÈµÇÂ¼Å¶£¬Ç×£¡£¡");
			return "error";
	}

	}
}