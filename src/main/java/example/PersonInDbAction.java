package example;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.log4j.Logger;

import service.IPersonServie;

import com.opensymphony.xwork2.ActionSupport;

import dto.PersonVS;
import dto.State;

public class PersonInDbAction extends ActionSupport {

	private String [] sports = {"football", "baseball", "basketball","Squash","Ruby" };
	private String [] genders = {"male", "female", "not sure" };
	private List<State> states ;
	
	private static final Logger logger = Logger.getLogger(PersonInDbAction.class.getName());
	private IPersonServie newPersonService;

	private List<PersonVS> personList;
	private PersonVS person;
	private String id;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		logger.debug("In execute method");
		setPersonList(newPersonService.selectAll());
		return SUCCESS;
	}
	public String create() {
			logger.debug("In create method");
			setPerson(new PersonVS());
			setPersonList(newPersonService.selectAll());
			return INPUT;
	}

	public String edit() {
	    logger.debug("In edit method");
	    setPerson(newPersonService.select(this.id));
		return INPUT;
	}
	public String saveOrUpdate() {
		logger.debug("In saveOrUpdate method");
		if (person.getId()!=null&&!"".equals(person.getId().trim())) {
			newPersonService.update(person);
		} else {
			String newId= java.util.UUID.randomUUID().toString().replaceAll("-", "");
			person.setId(newId);
			newPersonService.save(person);
		}
		setPersonList(newPersonService.selectAll());
		return SUCCESS;
	}
	public String delete() {
		logger.debug("In delete method");
		if (this.id!=null&&!"".equals(this.id.trim())) {
			newPersonService.delete(this.id);
		}
		setPersonList(newPersonService.selectAll());
		return SUCCESS;
	}

	public List<PersonVS> getPersonList() {
		return personList;
	}
	public void setPersonList(List<PersonVS> personList) {
		this.personList = personList;
	}
	public PersonVS getPerson() {
		return person;
	}
	public void setPerson(PersonVS person) {
		this.person = person;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	public IPersonServie getNewPersonService() {
		return newPersonService;
	}
	public void setNewPersonService(IPersonServie newPersonService) {
		this.newPersonService = newPersonService;
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
}
