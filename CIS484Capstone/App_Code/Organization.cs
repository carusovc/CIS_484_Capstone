using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Organization
/// </summary>
public class Organization
{

    private String orgName;
    private String city;
    private String county;
    private String streetAddress;
    private String state;
    private String postalCode;
    private String contactFirstName;
    private String contactLastName;
    private String phoneNumber;
    private String email;

   
    public Organization(String orgName, String city, String county, String streetAddress, String state, String postalCode, String contactFirstName, String contactLastName, String phoneNumber, String email)
    {
        setOrgName(orgName);
        setCity(city);
        setCounty(county);
        setStreetAddress(streetAddress);
        setState(state);
        setPostalCode(postalCode);
        setContactFirstName(contactFirstName);
        setContactLastName(contactLastName);
        setPhoneNumber(phoneNumber);
        setEmail(email);
    }

    public void setOrgName(String orgName)
    {
        this.orgName = orgName;
    }

    public void setCity(String city)
    {
        this.city = city;
    }

    public void setCounty(String county)
    {
        this.county = county;
    }

    public void setStreetAddress(String streetAddress)
    {
        this.streetAddress = streetAddress;
    }

    public void setState(String state)
    {
        this.state = state;
    }

    public void setPostalCode(String postalCode)
    {
        this.postalCode = postalCode;
    }

    public void setContactFirstName(String contactFirstName)
    {
        this.contactFirstName = contactFirstName;
    }

    public void setContactLastName(String contactLastName)
    {
        this.contactLastName = contactLastName;
    }

    public void setPhoneNumber(String phoneNumber)
    {
        this.phoneNumber = phoneNumber;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public String getOrgName()
    {
        return orgName;
    }

    public String getCity()
    {
        return city;
    }

    public String getCounty()
    {
        return county;
    }
    public String getStreetAddress()
    {
        return streetAddress;
    }
    public String getState()
    {
        return state;
    }
    public String getPostalCode()
    {
        return postalCode;
    }
    public String getContactFirstName()
    {
        return contactFirstName;
    }
    public String getContactLastName()
    {
        return contactLastName;
    }
    public String getPhoneNumber()
    {
        return phoneNumber;
    }
    public String getEmail()
    {
        return email;
    }

}