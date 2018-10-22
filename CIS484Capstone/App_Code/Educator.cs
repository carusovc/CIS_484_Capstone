using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Educator
/// </summary>
public class Educator
{

    private String firstName;
    private String lastName;

    public Educator(String firstName, String lastName)
    {
        setFirstName(firstName);
        setLastName(lastName);
    }

    public void setFirstName(String firstName)
    {
        this.firstName = firstName;

    }

    public void setLastName(String lastName)
    {
        this.lastName = lastName;
    }

    public String getFirstName()
    {
        return firstName;
    }

    public String getLastName()
    {
        return lastName;
    }
}