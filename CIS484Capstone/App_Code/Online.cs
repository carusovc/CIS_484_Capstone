using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Online
{
    private DateTime date;
    private int dateOfMonth;
    private String month;
    private String type;
    private int kidsInClass;
    private String stateCountry;
    private int numOfPeople;
    private String grade;
    private String teacher;
    private String email;
    private String educator;
    private String theme;
    private String animalsUsed;

    public Online()
    {

    }

    //Overload Constructor
    public Online(DateTime date, string month, string type, int kidsInClass, string stateCountry, int numOfPeople, string grade, string teacher, string email, string educator, string theme, string animalsUsed)
    {
        setDate(date);
        setMonth(month);
        setType(type);
        setKidsInClass(kidsInClass);
        setStateCountry(stateCountry);
        setNumOfPeople(numOfPeople);
        setGrade(grade);
        setTeacher(teacher);
        setEmail(email);
        setEducator(educator);
        setTheme(theme);
        setAnimalsUsed(animalsUsed);       
        
    }

    //Setters
    public void setDate(DateTime date)
    {
        this.date = date;
    }

    public void setMonth(string month)
    {
        this.month = month;
    }

    public void setType(string type)
    {
        this.type = type;
    }

    public void setKidsInClass(int kidsInClass)
    {
        this.kidsInClass = kidsInClass;
    }

    public void setStateCountry(string stateCountry)
    {
        this.stateCountry = stateCountry;
    }

    public void setNumOfPeople(int numOfPeople)
    {
        this.numOfPeople = numOfPeople;
    }

    public void setDateOfMonth(int dateOfMonth)
    {
        this.dateOfMonth = dateOfMonth;
    }

    public void setGrade(string grade)
    {
        this.grade = grade;
    }

    public void setTeacher(string teacher)
    {
        this.teacher = teacher;
    }

    public void setEmail(string email)
    {
        this.email = email;
    }

    public void setEducator(string educator)
    {
        this.educator = educator;
    }

    public void setTheme(string theme)
    {
        this.theme = theme;
    }

    public void setAnimalsUsed(string animalsUsed)
    {
        this.animalsUsed = animalsUsed;
    }

    //Getters
    public DateTime getDate()
    {
        return date;
    }

    public String getMonth()
    {
        return month;
    }

    public String getType()
    {
        return type;
    }

    public int getKidsInClass()
    {
        return kidsInClass;
    }

    public String getStateCountry()
    {
        return stateCountry;
    }

    public int getNumOfPeople()
    {
        return numOfPeople;
    }

    public int getDateOfMonth()
    {
        return dateOfMonth;
    }


    public String getGrade()
    {
        return grade;
    }

    public String getTeacher()
    {
        return teacher;
    }

    public String getEmail()
    {
        return email;
    }

    public String getEducator()
    {
        return educator;
    }

    public String getTheme()
    {
        return theme;
    }

    public String getAnimalsUsed()
    {
        return animalsUsed;
    }
}

