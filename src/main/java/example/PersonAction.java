package example;

import java.util.List;

import org.apache.log4j.Logger;

import service.PersonService;

import com.opensymphony.xwork2.ActionSupport;

import dto.Person;

public class PersonAction extends ActionSupport {

	private static final Logger logger = Logger.getLogger( PersonAction.class.getName() );
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	Person person ;
	int id ;
	List<Person> personList = PersonService.getPersons();
	PersonService personService = new PersonService();
	
	@Override
	public String execute() throws Exception {
		logger.debug("In execute method");
		return SUCCESS;
	}
	public String create() {
			logger.debug("In create method");
			person = new Person();
			return INPUT;
	}
	public String edit() {
	    logger.debug("In edit method");
	    person = personService.getPerson(id);
		return INPUT;
	}
	public String saveOrUpdate() {
		logger.debug("In saveOrUpdate method");
		if (person.getId() >-1) {
			personService.update(person) ;
		} else {
			personService.save(person);
		}
		personList = PersonService.getPersons() ;
		return SUCCESS;
	}
	public String delete() {
		logger.debug("In delete method");
		personService.deletePerson(id);
		personList = PersonService.getPersons() ;
		return SUCCESS;
	}
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	public List<Person> getPersonList() {
		return personList;
	}
	public void setPersonList(List<Person> personList) {
		this.personList = personList;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}
