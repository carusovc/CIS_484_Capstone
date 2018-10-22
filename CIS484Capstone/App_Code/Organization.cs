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
   
    public Organization(String orgName, String city, String county)
    {
        setOrgName(orgName);
        setCity(city);
        setCounty(county);
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

}