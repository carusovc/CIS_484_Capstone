using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Program
{


    private String cityCounty;
    private String state;
    private String status;
    private int programTypeID;
    private String programAddress;
    private byte onOff;
    private int numOfChildren;
    private int numOfAdult;
    private char waitForPayment;
    private DateTime date;
    //private String reportMonth;
    //private int grade;
    private string time;
    private String comments;

    public Program()
    {

    }
    //Overload Constructor
    public Program(byte onOff, string status, string programAddress, string cityCounty, int programTypeID,
        int numOfChildren, int numOfAdult, char waitForPayment, DateTime date, string time, string comments)
    {
        setOnOff(onOff);
        setStatus(status);
        //setOrganizationName(organizationName);
        setProgramAddress(programAddress);

        setDate(date);
        setTime(time);
        setComments(comments);
        setProgramTypeID(programTypeID);
        //setEducators(educators);
        //setBird(bird);
        //setMammal(mammal);
        //setReptile(reptile);
        setNumOfChildren(numOfChildren);
        setNumOfAdult(numOfAdult);
        setWaitForPayment(waitForPayment);
        //setGrade(grade);
        setCityCounty(cityCounty);
        //setState(state);

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

    public void setCityCounty(string cityCounty)
    {
        this.cityCounty = cityCounty;
    }

    //public void setState(string state)
    //{
    //    this.state = state;
    //}


    public void setProgramAddress(string programAddress)
    {
        this.programAddress = programAddress;
    }


    //public void setDateTime(DateTime dateTime)
    //{
    //    this.dateTime = dateTime;
    //}

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

    public void setDate(DateTime date)
    {
        this.date = date;
    }

    public void setTime(string time)
    {
        this.time = time;
    }

    public void setComments(String comments)
    {
        this.comments = comments;
    }
    //public void setGrade(int grade)
    //{
    //    this.grade = grade;
    //}


    //Getters
    public byte getOnOff()
    {
        return onOff;
    }

    public String getStatus()
    {
        return status;
    }

    public String getCityCounty()
    {
        return cityCounty;
    }

    //public String getState()
    //{
    //    return state;
    //}

    public String getProgramAddress()
    {
        return programAddress;
    }


    //public DateTime getDateTime()
    //{
    //    return dateTime;
    //}

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

    //public int getGrade()
    //{
    //    return grade;
    //}

    public DateTime getDate()
    {
        return date;
    }

    public string getTime()
    {
        return time;
    }

    public String getComments()
    {
        return comments;
    }
}
