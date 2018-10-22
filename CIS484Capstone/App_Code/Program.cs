using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Program
{


    //private String organizationName;
    //private String educators;
    //private String bird;
    //private String mammal;
    //private String reptile;
    //private String city;
    //private String country;

    private String status;
    private int programTypeID;
    private String programAddress;
    private byte onOff;
    private int numOfChildren;
    private int numOfAdult;
    private char waitForPayment;
    private DateTime dateTime;
    private String reportMonth;

    public Program()
    {

    }
    //Overload Constructor
    public Program(byte onOff, string status, string programAddress, string reportMonth, DateTime dateTime, int programTypeID,
        int numOfChildren, int numOfAdult, char waitForPayment)
    {
        setOnOff(onOff);
        setStatus(status);
        //setOrganizationName(organizationName);
        setProgramAddress(programAddress);
        setReportMonth(reportMonth);
        setDateTime(dateTime);
        setProgramTypeID(programTypeID);
        //setEducators(educators);
        //setBird(bird);
        //setMammal(mammal);
        //setReptile(reptile);
        setNumOfChildren(numOfChildren);
        setNumOfAdult(numOfAdult);
        setWaitForPayment(waitForPayment);
        //setCity(city);
        //setCountry(country);

    }

    //Setters
    public void setOnOff(byte onOff)
    {
        this.onOff = onOff;
    }

    public void setStatus(string status)
    {
        this.status = status;
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

    public void setProgramTypeID(int program)
    {
        this.programTypeID = program;
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




    //Getters
    public byte getOnOff()
    {
        return onOff;
    }

    public String getStatus()
    {
        return status;
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

    public int getProgramTypeID()
    {
        return programTypeID;
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


}