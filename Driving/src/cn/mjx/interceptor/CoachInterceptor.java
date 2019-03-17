package cn.mjx.interceptor;

import cn.mjx.coach.vo.Coach;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class CoachInterceptor extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		Coach coach = (Coach) invocation.getInvocationContext().getSession()
				.get("coach");
		if (coach != null) {
			return invocation.invoke();

		} else {
			ActionSupport actionSupport = (ActionSupport) invocation
					.getAction();
			actionSupport.addActionMessage("ÇëÏÈµÇÂ¼£¡£¡");
			return "error";
		}
	}

}
