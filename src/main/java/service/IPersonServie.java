package service;

import java.util.List;

import dto.PersonVS;

public interface IPersonServie {

	public void save(PersonVS person);
	public void update(PersonVS person);
	public void delete(String id);
	public PersonVS select(String id);
	public List<PersonVS> selectAll();
}
