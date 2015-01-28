package service;

import dto.Person;

public interface EditService {

	Person getPerson() ;

	void savePerson(Person personBean);
}
