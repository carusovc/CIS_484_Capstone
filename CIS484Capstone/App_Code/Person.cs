using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Person
/// </summary>
public class Person
{
    private String firstName;
    private String lastName;
    private String userName;
    public Person(String firstName, String lastName, String userName)
    {
        setFirstName(firstName);
        setLastName(lastName);
        setUserName(userName);
    }

    private void setUserName(String userName)
    {
        this.userName = userName;
    }

    private void setLastName(String lastName)
    {
        this.lastName = lastName;
    }

    private void setFirstName(String firstName)
    {
        this.firstName = firstName;
    }

    public String getFirstName()
    {
        return firstName;
    }

    public String getLastName()
    {
        return lastName;
    }

    public String getUserName()
    {
        return userName;
    }
}