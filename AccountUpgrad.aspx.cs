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

public partial class AccountUpgrad : System.Web.UI.Page
{
    Payment_DS.PAYMENT_SELECTDataTable PDT = new Payment_DS.PAYMENT_SELECTDataTable();
    Payment_DSTableAdapters.PAYMENT_SELECTTableAdapter PAdapter = new Payment_DSTableAdapters.PAYMENT_SELECTTableAdapter();

    Registration_DS.LOGIN_SELECTDataTable LDT = new Registration_DS.LOGIN_SELECTDataTable();
    Registration_DSTableAdapters.LOGIN_SELECTTableAdapter LAdapter = new Registration_DSTableAdapters.LOGIN_SELECTTableAdapter();

    Msg_DS.MSGMST_SELECTDataTable MsgDT = new Msg_DS.MSGMST_SELECTDataTable();
    Msg_DSTableAdapters.MSGMST_SELECTTableAdapter MsgAdapter = new Msg_DSTableAdapters.MSGMST_SELECTTableAdapter();

    Count_DS.COUNTMST_SELECTDataTable CntDT = new Count_DS.COUNTMST_SELECTDataTable();
    Count_DSTableAdapters.COUNTMST_SELECTTableAdapter CntAdapter = new Count_DSTableAdapters.COUNTMST_SELECTTableAdapter();

    Account_DS.ACCOUNT_SELECTDataTable AccDT = new Account_DS.ACCOUNT_SELECTDataTable();
    Account_DSTableAdapters.ACCOUNT_SELECTTableAdapter AccAdapter = new Account_DSTableAdapters.ACCOUNT_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            MultiView1.ActiveViewIndex = 0;



            PDT = PAdapter.SelectPaymentBYID(Convert.ToInt32(Session["userid"].ToString()));
            AccDT = AccAdapter.SelectBYID(Convert.ToInt32(Session["userid"].ToString()));

          //  int meera = 0;


            //if (PDT.Rows.Count > 0)
            if(Session["planstatus"].ToString()=="3")
            {
               lblallready.Visible = true;
                btnapplyvisitor.Visible = false;

            }
            else
            {
                lblallready.Visible = false;


             //2018   CntDT = CntAdapter.selectcountbyID(Convert.ToInt32(Session["userid"].ToString()));

              //  if (Convert.ToInt32(CntDT.Rows[0]["status"].ToString()) == 0)
                    if(Session["planstatus"].ToString()=="2")
                    {
                    btnapplyvisitor.Visible = false;


                    LDT = LAdapter.SelectLoginByUserID(Convert.ToInt32(Session["userid"].ToString()));

                    if (Session["abc"].ToString() == "User")
                    {
                        //check profile upadate setting

                        MultiView1.ActiveViewIndex = 0;
                        if (LDT.Rows[0]["personal"].ToString() == "1")
                        {
                            lnkp.Enabled = false;
                            lnkp.ForeColor = System.Drawing.Color.DarkGreen;

                        }
                        else
                        {
                            lnkp.Enabled = true;

                        }
                        if (LDT.Rows[0]["Education"].ToString() == "1")
                        {
                            LinkButton2.Enabled = false;
                            LinkButton2.ForeColor = System.Drawing.Color.DarkGreen;
                            //lblfill.Visible = false;

                        }
                        else
                        {
                            LinkButton2.Enabled = true;


                        }
                        if (LDT.Rows[0]["other"].ToString() == "1")
                        {
                            LinkButton3.Enabled = false;
                            LinkButton3.ForeColor = System.Drawing.Color.DarkGreen;
                        }
                        else
                        {
                            LinkButton3.Enabled = true;

                        }


                        //count msg 15 to account active

                        MsgDT = MsgAdapter.SelectMsgCountForActiveAccount(Convert.ToInt32(Session["userid"].ToString()));


                        //get msg from countmst table

                    //2018    CntDT = CntAdapter.selectcountbyID(Convert.ToInt32(Session["userid"].ToString()));


                        Msg_DS.MSG_DISTINCTTO_COUNTDataTable TODT = new Msg_DS.MSG_DISTINCTTO_COUNTDataTable();
                        Msg_DSTableAdapters.MSG_DISTINCTTO_COUNTTableAdapter TOADAPTER = new Msg_DSTableAdapters.MSG_DISTINCTTO_COUNTTableAdapter();

                        ////2018  TODT = TOADAPTER.SelectMsgCountDistinctTO(Convert.ToInt32(Session["userid"].ToString()));

                        ////if (TODT.Rows.Count < 4 && Convert.ToInt32(CntDT.Rows[0]["msgcount"].ToString()) >= 12)
                        ////{
                        ////    lblemsg.Visible = true;
                        ////    lblemsg.Text = "We consider maximum 3 message to one person.";
                        ////    lblmsg15.Text = "11";

                        ////}
                        ////else
                        ////{
                        ////    lblemsg.Visible = false;
                        ////    lblemsg.Text = "";
                        ////    lblmsg15.Text = CntDT.Rows[0]["msgcount"].ToString();
                        ////    if (Convert.ToInt32(lblmsg15.Text) >= 12)
                        ////    {
                        ////        lblmsg15.ForeColor = System.Drawing.Color.DarkGreen;
                        ////    }
                        ////}




                        //////check login count
                        ////if (Convert.ToInt32(CntDT.Rows[0]["LoginCount"].ToString()) >= 20)
                        ////{
                        ////    lbllogin15.ForeColor = System.Drawing.Color.DarkGreen;
                        ////}

                        ////lbllogin15.Text = CntDT.Rows[0]["LoginCount"].ToString();

                        ////// int lblms15=Convert.ToInt32(lblmsg15.Text);

                        if (LDT.Rows[0]["personal"].ToString() == "1" && LDT.Rows[0]["Education"].ToString() == "1" && LDT.Rows[0]["other"].ToString() == "1")
                        {
                            btnupgrade.Enabled = true;

                        }
                        else
                        {
                            btnupgrade.Enabled = false;

                        } 

                    }
                    else if (Session["abc"].ToString() == "Visitor")
                    {
                        MultiView1.ActiveViewIndex = 1;

                        //lnkp.Enabled = false;
                        // LinkButton2.Enabled = false;
                        // LinkButton3.Enabled = false;

                        //check login count
                        ////// 2018 if (Convert.ToInt32(CntDT.Rows[0]["LoginCount"].ToString()) >= 20)
                        //////{
                        //////    Label9.ForeColor = System.Drawing.Color.DarkGreen;
                        //////    Label9.Text = CntDT.Rows[0]["LoginCount"].ToString();
                        //////    btnvisitorupgrad.Enabled = true;

                        //////}
                        //////else
                        //////{
                        //////    Label9.Text = CntDT.Rows[0]["LoginCount"].ToString();
                        //////    btnvisitorupgrad.Enabled = false;
                        //////2018}

                    }
                    else if (Session["abc"].ToString() == "New")
                    {
                        lnkp.Enabled = false;
                        LinkButton2.Enabled = false;
                        LinkButton3.Enabled = false;

                    }
                    if (Page.IsPostBack == false)
                    {

                    }


                }
                else
                {
                    btnapplyvisitor.Visible = true;

                }


            }
        }
        catch (Exception a)
        { }
    }
    

   
    protected void btnpay_Click(object sender, EventArgs e)
    {
        try
        {
            

            if (Session["amt"] != null )
            {
                
                    Session["amt"] = "300";
                    Session["time"] = "3 month";
                    Session["plan"] = "Silver"; 

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


    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("userprofile.aspx?edit=education");

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("userprofile.aspx?edit=other");

    }
    protected void btnupgrade_Click(object sender, EventArgs e)
    {
        try
        {
                     
                Session["amt"] = "300";
                Session["time"] = "3 month";
                Session["plan"] = "Active Member";

                PDT = PAdapter.SelectPaymentBYID(Convert.ToInt32(Session["userid"].ToString()));
                //


                if (PDT.Rows.Count == 0)
                {

                    int insertpayment = PAdapter.Insert(Convert.ToInt32(Session["userid"].ToString()), Session["plan"].ToString(), Convert.ToDouble(Session["amt"].ToString()), "online", "paypal");
                    AccAdapter.ACCOUNT_APPYFOR_UPGRADE(Convert.ToInt32(Session["userid"].ToString()), 3);
                    Session["planstatus"] = "3";

                    //int updatepayment = PAdapter.Update(Convert.ToInt32(Session["userid"].ToString()), Session["plan"].ToString(), Convert.ToDouble(Session["amt"].ToString()), "online", "paypal");
                }
                else
                {

                    AccAdapter.ACCOUNT_APPYFOR_UPGRADE(Convert.ToInt32(Session["userid"].ToString()), 3);
                    Session["planstatus"] = "3";
                }
                //    if(PDT.Rows[0]["status"].ToString()=="1")
                //{
                    

                //    //int updatepayment = PAdapter.Update(Convert.ToInt32(Session["userid"].ToString()), Session["plan"].ToString(), Convert.ToDouble(Session["amt"].ToString()), "online", "paypal");
                //}
                //else
                //{
                //    if (PDT.Rows.Count < 0)
                //    {
                //        int insertpayment = PAdapter.Insert(Convert.ToInt32(Session["userid"].ToString()), Session["plan"].ToString(), Convert.ToDouble(Session["amt"].ToString()), "online", "paypal");
                //    }
                //    AccAdapter.ACCOUNT_APPYFOR_UPGRADE(Convert.ToInt32(Session["userid"].ToString()), 3);
                //    Session["planstatus"] = "3";
                //}


            

        }
        catch (Exception)
        { }
    }
    protected void lnkp_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserProfile.aspx");
    }
    protected void btnvisitorupgrad_Click(object sender, EventArgs e)
    {
        Session["amt"] = "300";
        Session["time"] = "3 month";
        Session["plan"] = "Active Member";

        PDT = PAdapter.SelectPaymentBYID(Convert.ToInt32(Session["userid"].ToString()));
       
        if (PDT.Rows.Count == 0)
        {

            int insertpayment = PAdapter.Insert(Convert.ToInt32(Session["userid"].ToString()), Session["plan"].ToString(), Convert.ToDouble(Session["amt"].ToString()), "online", "paypal");
            AccAdapter.ACCOUNT_APPYFOR_UPGRADE(Convert.ToInt32(Session["userid"].ToString()), 3);
            Session["planstatus"] = "3";
        }
        else
        {

            AccAdapter.ACCOUNT_APPYFOR_UPGRADE(Convert.ToInt32(Session["userid"].ToString()), 3);
            Session["planstatus"] = "3";
        }

        
        
        //else
       // {
            
           
       // }

    }
    protected void btnapplyvisitor_Click(object sender, EventArgs e)
    {
       //2018 CntDT = CntAdapter.selectcountbyID(Convert.ToInt32(Session["userid"].ToString()));

        ////AccAdapter.ACCOUNT_APPYFOR_UPGRADE(Convert.ToInt32(Session["userid"].ToString()),2);
        ////Session["planstatus"] = "2";
        //// if(CntDT.Rows.Count<=0)
        ////{
        ////    int inst = CntAdapter.Insert(Convert.ToInt32(Session["userid"].ToString()));
        ////    btnapplyvisitor.Visible = false;

        ////    if (Session["abc"].ToString() == "User")
        ////    {
        ////        MultiView1.ActiveViewIndex = 0;
        ////    }
        ////    else if (Session["abc"].ToString() == "Visitor")
        ////    {
        ////        MultiView1.ActiveViewIndex = 1;
            
        ////    }

        ////}
        ////else if (Convert.ToInt32(CntDT.Rows[0]["status"].ToString()) == 0)
        ////{
        ////    btnapplyvisitor.Visible = false;
        ////    if (Session["abc"].ToString() == "User")
        ////    {
        ////        MultiView1.ActiveViewIndex = 0;
        ////    }
        ////    else if (Session["abc"].ToString() == "Visitor")
        ////    {
        ////        MultiView1.ActiveViewIndex = 1;

        ////    }
        ////}2018


         if (Session["abc"].ToString() == "User")
         {
             MultiView1.ActiveViewIndex = 0;
         }
         else if (Session["abc"].ToString() == "Visitor")
         {
             MultiView1.ActiveViewIndex = 1;

         }

    }
}
