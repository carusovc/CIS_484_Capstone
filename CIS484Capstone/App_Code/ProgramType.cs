using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class ProgramType
{
    private String programName;
    private DateTime lastUpdated;
    private String lastUpdatedBy;

    public ProgramType(String programName)
    {
        setProgramName(programName);
    }

    private void setProgramName(string programName)
    {
        this.programName = programName;
    }

    public String getProgramName()
    {
        return programName;
    }
}