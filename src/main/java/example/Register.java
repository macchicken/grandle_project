package example;

import java.util.regex.Pattern;

import com.opensymphony.xwork2.ActionSupport;

import dto.Person;

public class Register extends ActionSupport {

	private static final long serialVersionUID = 1L;
    private Person person;
    private static Pattern emailP = Pattern.compile("[\\w]+[@][\\S]+");
    private static Pattern nameP = Pattern.compile("[\\w]+");
 
    @Override
    public String execute() throws Exception {
        //call Service class to store person's state in database
        return SUCCESS;
         
    }
     
    @Override
	public String input() throws Exception {
		return super.input();
	}

	public Person getPerson() {
        return person;
         
    }
     
    public void setPerson(Person person) {
        this.person = person;
    }
    
    public void validate(){
    	String firstName=person.getFirstName();
    	String lastName=person.getLastName();
    	String email=person.getEmail();
        
        if (firstName!=null&&!"".equals(firstName.trim())){
        	if (!nameP.matcher(firstName).matches()){
        		addFieldError( "person.firstName", "First name could only contain word charaters" );
        	}
        }else{
        	addFieldError( "person.firstName", "First name is required." );
        }
        if (lastName!=null&&!"".equals(lastName.trim())){
        	if (!nameP.matcher(lastName).matches()){
        		addFieldError( "person.lastName", "Last name could only contain word charaters" );
        	}
        }else{
        	addFieldError( "person.lastName", "Last name is required." );
        }
        if (email!=null&&!"".equals(email.trim())){
        	if (!emailP.matcher(email).matches()){
        		addFieldError( "person.email", "Email could match word@word foramt" );
        	}
        }else{
        	addFieldError( "person.email", "Email is required." );
        }
        if ( person.getAge() < 18 ){ 
            addFieldError( "person.age", "Age is required and must be 18 or older" );
        }
    }

}
