using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class UpgrageAccount : System.Web.UI.Page
{
    Payment_DS.PAYMENT_SELECTDataTable PDT = new Payment_DS.PAYMENT_SELECTDataTable();
    Payment_DSTableAdapters.PAYMENT_SELECTTableAdapter PAdapter = new Payment_DSTableAdapters.PAYMENT_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            MaintainScrollPositionOnPostBack = true;
            if (Page.IsPostBack == false)
            {
                Session["amt"] = "300";
                Session["time"] = "3 month";
                Session["plan"] = "Silver";
            }
        }
        catch (Exception)
        { }
    }
    protected void rdoone_CheckedChanged(object sender, EventArgs e)
    {try{
        //pnlone.Visible = true;
        //pnlyear.Visible = false;
        Session["amt"] = "300";
        Session["time"] = "3 month";
        Session["plan"] = "Silver";
    }
    catch (Exception)
    { }
    }

    protected void rdothree_CheckedChanged(object sender, EventArgs e)
    {try{
        //pnlone.Visible = false;
        //pnlyear.Visible = true;
        Session["amt"] = "500";
        Session["time"] = "6 month";
        Session["plan"] = "Gold";
    }
    catch (Exception)
    { }
    }
    protected void rdoyear_CheckedChanged(object sender, EventArgs e)
    {
        try{
        //pnlone.Visible = false;
        //pnlyear.Visible = true;
        Session["amt"] = "1000";
        Session["time"] = "1 year";
        Session["plan"] = "Platinum";
    }
    catch (Exception)
    { }
    }
    protected void btnupgrade_Click(object sender, EventArgs e)
    {
        try
        {
            if (rdoone.Checked == true)
            {
                Session["amt"] = "300";
                Session["time"] = "3 month";
                Session["plan"] = "Silver";
                //os0.SelectedIndex = 0;

            }
            else if (rdothree.Checked == true)
            {
                Session["amt"] = "500";
                Session["time"] = "6 month";
                Session["plan"] = "Gold";
                //os0.SelectedIndex = 1;
            }
            else if (rdoyear.Checked == true)
            {
                Session["amt"] = "1000";
                Session["time"] = "1 year";
                Session["plan"] = "Platinum";
                //os0.SelectedIndex = 2;

            }

            rdopayment.Visible = true;
            lblpayment.Visible = true;
            btnpay.Visible = true;
            // line.Visible = true;
        }
        catch (Exception)
        { }
    }
    protected void btnpay_Click(object sender, EventArgs e)
    {
        try
        {
            

            if (Session["amt"] != null )
            {
                if (rdoone.Checked == true)
                {
                    Session["amt"] = "300";
                    Session["time"] = "3 month";
                    Session["plan"] = "Silver";               
                
                }

                if (rdopayment.SelectedValue == "Cash")
                {
                    //Response.Redirect("office.aspx");
                }
                else
                {

                    Panel2.Visible = true;
                    btnpay.Visible = true;
                    Panel3.Visible = true;


                    PDT = PAdapter.SelectPaymentBYID(Convert.ToInt32(Session["userid"].ToString()));
                    if (PDT.Rows.Count > 0)
                    {
                        int updatepayment = PAdapter.Update(Convert.ToInt32(Session["userid"].ToString()), Session["plan"].ToString(), Convert.ToDouble(Session["amt"].ToString()), "online", "paypal");
                    }
                    else
                    {
                        int insertpayment = PAdapter.Insert(Convert.ToInt32(Session["userid"].ToString()), Session["plan"].ToString(), Convert.ToDouble(Session["amt"].ToString()), "online", "paypal");

                    }


                }
            }
        }
        catch (Exception)
        { }
    }
    protected void Image1_ServerClick(object sender, ImageClickEventArgs e)
    {
        //Response.Redirect("https://www.paypal.com/cgi-bin/webscr");
    }


    protected void rdopayment_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (rdopayment.SelectedValue == "Cash")
            {
                btnpay.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
            }
            else
            {
                Panel2.Visible = true;
                btnpay.Visible = false;
                Panel3.Visible = true;


                PDT = PAdapter.SelectPaymentBYID(Convert.ToInt32(Session["userid"].ToString()));
                if (PDT.Rows.Count > 0)
                {
                    int updatepayment = PAdapter.Update(Convert.ToInt32(Session["userid"].ToString()), Session["plan"].ToString(), Convert.ToDouble(Session["amt"].ToString()), "online", "paypal");
                }
                else
                {
                    int insertpayment = PAdapter.Insert(Convert.ToInt32(Session["userid"].ToString()), Session["plan"].ToString(), Convert.ToDouble(Session["amt"].ToString()), "online", "paypal");

                }

            }
        }
        catch (Exception)
        { }
    }
    

   

}
