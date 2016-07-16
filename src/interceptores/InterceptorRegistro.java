package interceptores;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import modeloDAO.ParametrosDAO;

public class InterceptorRegistro extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		
		String result;
		ParametrosDAO ps=new ParametrosDAO();
		ps.consultar_parametros();
		result = arg0.invoke();
		// TODO Auto-generated method stub
		return result;
	}

}
