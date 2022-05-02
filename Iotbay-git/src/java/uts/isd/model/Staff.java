/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.isd.model;

/**
 *
 * @author Aliza faisal
 */
public class Staff {
    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private String position;
    private String address;
    private String username;
    private String password;
    private Boolean staffStatus;
    private String mobileNumber;

    public Staff(int id, String firstName, String lastName, String email, String position, String address, String username, String password, Boolean staffStatus, String mobileNumber) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.position = position;
        this.address = address;
        this.username = username;
        this.password = password;
        this.staffStatus = staffStatus;
        this.mobileNumber = mobileNumber;
    }

    public Staff() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getFirstName() {
        return firstName;
    }
     public int getid() {
        return id;
    }
 public void setid( int id) {
        this.id= id;
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

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getStaffStatus() {
        return staffStatus;
    }

    public void setStaffStatus(Boolean staffStatus) {
        this.staffStatus = staffStatus;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }
    
}
