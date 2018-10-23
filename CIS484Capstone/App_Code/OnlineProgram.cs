using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for OnlineProgram
/// </summary>
public class OnlineProgram
{
    public OnlineProgram()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    private DateTime date;
    //private int dateOfMonth;
    private String month;
    private int type;
    private int kidsInClass;
    private String city;
    private String stateCountry;
    private int numOfPeople;
    private String comments;
    private String teacher;
    private String email;
    //private String educator;
    //private String theme;
    //private String animalsUsed;
    //private String grade;


    //Overload Constructor
    public OnlineProgram(DateTime date, string month, int type, int kidsInClass, int numOfPeople, string city, string stateCountry, string teacher, string email, string comments)
    {
        setDate(date);
        setMonth(month);
        setType(type);
        setKidsInClass(kidsInClass);
        setNumOfPeople(numOfPeople);
        setCity(city);
        setStateCountry(stateCountry);


        setTeacher(teacher);
        setEmail(email);
        setComments(comments);
        //setEducator(educator);
        //setTheme(theme);
        //setAnimalsUsed(animalsUsed);     
        //setGrade(grade);

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

    public void setType(int type)
    {
        this.type = type;
    }

    public void setKidsInClass(int kidsInClass)
    {
        this.kidsInClass = kidsInClass;
    }

    public void setCity(String city)
    {
        this.city = city;
    }

    public void setStateCountry(string stateCountry)
    {
        this.stateCountry = stateCountry;
    }

    public void setNumOfPeople(int numOfPeople)
    {
        this.numOfPeople = numOfPeople;
    }

    //public void setDateOfMonth(int dateOfMonth)
    //{
    //    this.dateOfMonth = dateOfMonth;
    //}

    //public void setGrade(string grade)
    //{
    //    this.grade = grade;
    //}

    public void setTeacher(string teacher)
    {
        this.teacher = teacher;
    }

    public void setEmail(string email)
    {
        this.email = email;
    }

    public void setComments(string comments)
    {
        this.comments = comments;
    }

    //public void setEducator(string educator)
    //{
    //    this.educator = educator;
    //}

    //public void setTheme(string theme)
    //{
    //    this.theme = theme;
    //}

    //public void setAnimalsUsed(string animalsUsed)
    //{
    //    this.animalsUsed = animalsUsed;
    //}

    //Getters
    public DateTime getDate()
    {
        return date;
    }

    public String getMonth()
    {
        return month;
    }

    public int getType()
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

    //public int getDateOfMonth()
    //{
    //    return dateOfMonth;
    //}


    //public String getGrade()
    //{
    //    return grade;
    //}

    public String getTeacher()
    {
        return teacher;
    }

    public String getEmail()
    {
        return email;
    }

    public String getCity()
    {
        return city;
    }

    public String getComments()
    {
        return comments;
    }

    //public String getEducator()
    //{
    //    return educator;
    //}

    //public String getTheme()
    //{
    //    return theme;
    //}

    //public String getAnimalsUsed()
    //{
    //    return animalsUsed;
    //}
}
