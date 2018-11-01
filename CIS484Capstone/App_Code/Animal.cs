using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Animal
{
    private String animalType;
    private String animalName;
    private DateTime lastUpdated;
    private String lastUpdatedBy;

    public Animal(String animalType, String animalName)
    {
        setAnimalType(animalType);
        setAnimalName(animalName);
    }

    private void setAnimalName(string animalName)
    {
        this.animalName = animalName;
    }

    private void setAnimalType(string animalType)
    {
        this.animalType = animalType;
    }

    public String getAnimalName()
    {
        return animalName;
    }

    public String getAnimalType()
    {
        return animalType;
    }
}