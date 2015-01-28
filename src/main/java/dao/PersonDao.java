package dao;

import java.util.List;

import dto.PersonVS;

public interface PersonDao {

	public PersonVS selectPerson(String id);
	   
    public void savePerson(PersonVS person);
   
    public void updatePerson(PersonVS person);
   
    public void deletePerson(String id);
   
    public List<PersonVS> selectAll();
}
