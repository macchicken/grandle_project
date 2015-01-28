package dto;


public class PersonVS {

	private String id;
	private String firstName;
	private String lastName;
	private String email;
	private int age;
	private String phone;
	private String sport;
    private String gender;

    public PersonVS() {
		super();
		this.id=null;
		this.firstName=null;
		this.lastName=null;
	}

	public PersonVS(String id, String firstName, String lastName) {
		super();
		this.id = id!=null?id.trim():id;
		this.firstName = firstName!=null?firstName.trim():firstName;
		this.lastName = lastName!=null?lastName.trim():lastName;
	}

	public String getSport() {
		return sport!=null?sport.trim():sport;
	}
	public void setSport(String sport) {
		this.sport = sport!=null?sport.trim():sport;
	}
	public String getGender() {
		return gender!=null?gender.trim():gender;
	}
	public void setGender(String gender) {
		this.gender = gender!=null?gender.trim():gender;
	}
	public String getResidency() {
		return residency!=null?residency.trim():residency;
	}
	public void setResidency(String residency) {
		this.residency = residency!=null?residency.trim():residency;
	}
	public boolean isOver21() {
		return over21;
	}
	public void setOver21(boolean over21) {
		this.over21 = over21;
	}

	private String residency;
    private boolean over21;
//    private String [] carModels;

	public String getFirstName() {
		return firstName!=null?firstName.trim():firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName!=null?firstName.trim():firstName;
	}
	public String getLastName() {
		return lastName!=null?lastName.trim():lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName!=null?lastName.trim():lastName;
	}
	public String getEmail() {
		return email!=null?email.trim():email;
	}
	public void setEmail(String email) {
		this.email = email!=null?email.trim():email;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPhone() {
		return phone!=null?phone.trim():phone;
	}
	public void setPhone(String phone) {
		this.phone = phone!=null?phone.trim():phone;
	}
	public String getId() {
		return id!=null?id.trim():id;
	}
	public void setId(String id) {
		this.id = id!=null?id.trim():id;
	}

	public String toString(){
		return "First Name: "+firstName+"| Last Name: "+lastName+"| Email: "+email+ "| Phone number:"+phone+"| Age: "+age+" Favorite Sport: " + sport
				+"| Gender: " + gender + "| Residency: " + residency + "| Over 21: " + isOver21();
	}
}
