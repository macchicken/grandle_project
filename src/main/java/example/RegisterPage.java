package example;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterPage extends ActionSupport {

	private static final long serialVersionUID = 1L;
     
 
    @Override
    public String execute() throws Exception {
        //call Service class to store person's state in database
        return SUCCESS;
         
    }
    
}
