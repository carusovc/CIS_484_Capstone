using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Program
{
    private Boolean onOff;
    private String status;
    private String organizationName;
    private String programAddress;
    private String reportMonth;
    private DateTime dateTime;
    private String program;
    private String educators;
    private String bird;
    private String mammal;
    private String reptile;
    private int numOfChildren;
    private int numOfAdult;
    private char waitForPayment;
    private String city;
    private String country;

    public Program()
    {

    }
    //Overload Constructor
    public Program(bool onOff, string status, string organizationName, string programAddress, string reportMonth, DateTime dateTime, string program,
        string educators, string bird, string mammal, string reptile, int numOfChildren, int numOfAdult, char waitForPayment, string city, string country)
    {
        setOnOff(onOff);
        setStatus(status);
        setOrganizationName(organizationName);
        setProgramAddress(programAddress);
        setReportMonth(reportMonth);
        setDateTime(dateTime);
        setProgram(program);
        setEducators(educators);
        setBird(bird);
        setMammal(mammal);
        setReptile(reptile);
        setNumOfChildren(numOfChildren);
        setNumOfAdult(numOfAdult);
        setWaitForPayment(waitForPayment);
        setCity(city);
        setCountry(country);

    }

    //Setters
    public void setOnOff(bool onOff)
    {
        this.onOff = onOff;
    }

    public void setStatus(string status)
    {
        this.status = status;
    }

    public void setOrganizationName(string organizationName)
    {
        this.organizationName = organizationName;
    }

    public void setProgramAddress(string programAddress)
    {
        this.programAddress = programAddress;
    }

    public void setReportMonth(string reportMonth)
    {
        this.reportMonth = reportMonth;
    }

    public void setDateTime(DateTime dateTime)
    {
        this.dateTime = dateTime;
    }

    public void setProgram(string program)
    {
        this.program = program;
    }

    public void setEducators(string educators)
    {
        this.educators = educators;
    }

    public void setBird(string bird)
    {
        this.bird = bird;
    }

    public void setMammal(string mammal)
    {
        this.mammal = mammal;
    }

    public void setReptile(string reptile)
    {
        this.reptile = reptile;
    }

    public void setNumOfChildren(int numOfChildren)
    {
        this.numOfChildren = numOfChildren;
    }

    public void setNumOfAdult(int numOfAdult)
    {
        this.numOfAdult = numOfAdult;
    }

    public void setWaitForPayment(char waitForPayment)
    {
        this.waitForPayment = waitForPayment;
    }

    public void setCity(string city)
    {
        this.city = city;
    }

    public void setCountry(string country)
    {
        this.country = country;
    }


    //Getters
    public Boolean getOnOff()
    {
        return onOff;
    }

    public String getStatus()
    {
        return status;
    }

    public String getOrganizationName()
    {
        return organizationName;
    }

    public String getProgramAddress()
    {
        return programAddress;
    }

    public String getReportMonth()
    {
        return reportMonth;
    }

    public DateTime getDateTime()
    {
        return dateTime;
    }

    public String getProgram()
    {
        return program;
    }

    public String getEducators()
    {
        return educators;
    }

    public String getBird()
    {
        return bird;
    }

    public String getMammal()
    {
        return mammal;
    }

    public String getReptile()
    {
        return reptile;
    }

    public int getNumOfChildren()
    {
        return numOfChildren;
    }

    public int getNumOfAdult()
    {
        return numOfAdult;
    }

    public char getWaitForPayment()
    {
        return waitForPayment;
    }

    public String getCity()
    {
        return city;
    }

    public String getCountry()
    {
        return country;
    }
}