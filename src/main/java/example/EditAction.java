package example;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.struts2.json.annotations.JSON;

import net.sf.json.JSONObject;
import service.EditService;

import com.opensymphony.xwork2.ActionSupport;

import dto.Person;
import dto.State;


/**
 * Acts as a controller to handle actions
 * related to editing a Person.
 * @author bruce phillips
 *
 */
public class EditAction extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	
	private EditService editService;
	
	private Person person;
	private String result;
	
	private String [] sports = {"football", "baseball", "basketball","Squash","Ruby" };
	
	private String [] genders = {"male", "female", "not sure" };
	
	private List<State> states ;

	private String [] carModelsAvailable = {"Ford","Chrysler","Toyota","Nissan","Benz","Porsche"};

	public void setEditService(EditService editService) {
		this.editService = editService;
	}

	public String execute() throws Exception {
	    editService.savePerson(getPerson());
		return SUCCESS;
	}

	@JSON(serialize=false)
	public String executenew() throws Exception {
	    editService.savePerson(getPerson());
	    Person temp=getPerson();
	    JSONObject json=JSONObject.fromObject(temp);
	    setResult(json.toString());
	    return SUCCESS; 
	}
	

	public String input() throws Exception {
		setPerson( editService.getPerson() );
		return INPUT;
	}
	
	public Person getPerson() {
		return person;
	}
	
	public void setPerson(Person person) {
		this.person = person;
	}


	public List<String> getSports() {
		return Arrays.asList(sports);
	}
	
	public List<String> getGenders() {
		return Arrays.asList(genders);
	}

	public List<State> getStates() {
		states = new ArrayList<State>();
		states.add( new State("AZ", "Arizona") );
		states.add( new State("CA", "California") );
		states.add( new State("FL", "Florida") );
		states.add( new State("KS", "Kansas") );
		states.add( new State("NY", "New York") );
		states.add( new State("CHN", "China") );
		states.add( new State("HK", "HongKong") );
		return states;
	}



	public String [] getCarModelsAvailable() {
		return carModelsAvailable;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

}
