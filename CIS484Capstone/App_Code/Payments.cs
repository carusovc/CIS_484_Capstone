using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payment
/// </summary>
public class Payment
{
    public Payment()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    //private int paymentID;
    private decimal paymentAmount;
    private DateTime paymentDate;
    private String checkNum;
    private String paymentType;
    private String invoice;
    private char cancelledInvoice; // To Deal with V2 10/23/18 8:30 pm
    private int orgID; // To Deal with V2 10/23/18 8:30 pm

   
    public Payment(decimal PaymentAmount, DateTime paymentDate, String checkNum, String paymentType, String invoice, char cancelledInvoice, int orgID)
    {
        // Call Setters
        setPaymentAmount(paymentAmount);
        setPaymentDate(paymentDate);
        setCheckNum(checkNum);
        setPaymentType(paymentType);
        setInvoice(invoice);
        setCancelled(cancelledInvoice);
        setOrgId(orgID);
    }

    //Setters
    public void setPaymentAmount(decimal paymentAmount)
    {
        this.paymentAmount = paymentAmount;
    }

    public void setPaymentDate(DateTime paymentDate)
    {
        this.paymentDate = paymentDate;
    }

    public void setCheckNum(String checkNum)
    {
        this.checkNum = checkNum;
    }

    public void setPaymentType(String paymentType)
    {
        this.paymentType = paymentType;
    }

    public void setInvoice(String invoice)
    {
        this.invoice = invoice;
    }

    public void setCancelled(char cancelledInvoice)
    {
        this.cancelledInvoice = cancelledInvoice;
    }

    public void setOrgId(int orgID)
    {
        this.orgID = orgID;
    }
    
    //Getters

    public decimal getPaymentAmount()
    {
        return paymentAmount;
    }

    public DateTime getPaymentDate()
    {
        return this.paymentDate;
    }

    public String getCheckNum()
    {
        return this.checkNum;
    }

    public String getPaymentType()
    {
        return this.paymentType;
    }

    public String getInvoice()
    {
        return this.invoice;
    }

    public char getCancelledInvoice()
    {
        return this.cancelledInvoice;
    }

    public int getOrgId()
    {
        return this.orgID;
    }

}
