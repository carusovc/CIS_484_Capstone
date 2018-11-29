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
    private string cancelledInvoices; // To Deal with V2 10/23/18 8:30 pm
    private string paid; // To Deal with V2 10/23/18 8:30 pm
  //  private string paid;

   
    public Payment(decimal PaymentAmount, DateTime paymentDate, String checkNum, String paymentType, String invoice, string paid, string cancelledInvoices)
    {
        // Call Setters
        setPaymentAmount(paymentAmount);
        setPaymentDate(paymentDate);
        setCheckNum(checkNum);
        setPaymentType(paymentType);
        setInvoice(invoice);
        setPaid(paid);
        setCancelledInvoices(cancelledInvoices);
        
       // setPaid(paid);
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

    public void setCancelledInvoices(string cancelledInvoices)
    {
        this.cancelledInvoices = cancelledInvoices;
    }

    public void setPaid(string paid)
    {
        this.paid = paid;
    }
    

    //public void setPaid(string paid)
    //{
    //    this.paid = paid;
    //}
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

    public string getCancelledInvoices()
    {
        return this.cancelledInvoices;
    }

    public string getPaid()
    {
        return this.paid;
    }
    //public string getPaid()
    //{
    //    return this.paid;
    //}

}
