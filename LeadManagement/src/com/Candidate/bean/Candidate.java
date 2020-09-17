package com.Candidate.bean;


import java.io.Serializable;

/**
 * JavaBean class used in jsp action tags.
 * @author Ramesh Fadatare
 */
public class Candidate implements Serializable {
    /**
     * 
     */
    private String firstName;
    private String lastName;
    private String email;
    private String hrName;
    private String domain;
    private String dateJoined;
    private String address;
    private String contact;
	private String adharNo;
	
    public String getFirstName() {
        return firstName;
    }
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getHrName() {
        return hrName;
    }
    public void setHrName(String hrName) {
        this.hrName = hrName;
    }
    public String getDomain() {
    	return domain;
    }
    public void setDomain(String domain) {
    	this.domain = domain;
    }
    public String getDateJoined() {
    	return dateJoined;
    }
    public void setDateJoined(String dateJoined) {
    	this.dateJoined = dateJoined;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getContact() {
        return contact;
    }
    public void setContact(String contact) {
        this.contact = contact;
    }
    public String getAdharNo() {
    	return adharNo;
    }
	public void setAdharNo(String adharNo) {
		this.adharNo = adharNo;
		
	}
}
