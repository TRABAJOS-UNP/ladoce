package interceptores;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class InterceptorAcceso extends AbstractInterceptor{

	private String actionsPublicos;
	private String actionsCliente;
	private String actionsOperador;
	private String actionsGerente;
	
    private List<String> actionsSinFiltrar = new ArrayList<String>();
    private List<String> actionsC = new ArrayList<String>();
    private List<String> actionsO = new ArrayList<String>();
    private List<String> actionsG = new ArrayList<String>();
    
    public void setActionsCliente(String actionsCliente) {
		this.actionsCliente = actionsCliente;
	}

	public void setActionsOperador(String actionsOperador) {
		this.actionsOperador = actionsOperador;
	}

	public void setActionsGerente(String actionsGerente) {
		this.actionsGerente = actionsGerente;
	}

	@Override
    public void init()
    {
        actionsSinFiltrar = Arrays.asList(actionsPublicos.split(","));
        actionsC = Arrays.asList(actionsCliente.split(","));
        actionsO = Arrays.asList(actionsOperador.split(","));
        actionsG = Arrays.asList(actionsGerente.split(","));
    }
    
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
	
		    String result = Action.LOGIN;
		    String actionActual = (String)ActionContext.getContext().get(ActionContext.ACTION_NAME);
		    
		   if(actionsSinFiltrar.contains(actionActual)){
			   result = arg0.invoke();
		   }
		   else{
		    
		    if (arg0.getInvocationContext().getSession().containsKey("tipo"))
		    {
		    	switch(arg0.getInvocationContext().getSession().get("tipo").toString()){
		    	
			    	case "0001":
			    		if(actionsC.contains(actionActual)){
			    			result = arg0.invoke();
			    		}
			    		break;
			    	case "0002":	
			    		if(actionsO.contains(actionActual)){
			    			result = arg0.invoke();
			    		}
			    		break;
			    	case "0003":
			    		if(actionsG.contains(actionActual)){
			    			result = arg0.invoke();
			    			
			    		}
			    		break;
			    		
			    }
		    }
		    	
		    	
		    	
		    	
		    }

		    return result;
		}
	
	public void setActionsPublicos(String actionsPublicos)
	    {
	        this.actionsPublicos = actionsPublicos;
	    }
	 
}
