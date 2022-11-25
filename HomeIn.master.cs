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
using System.IO;
using System.Drawing.Imaging;
using System.Drawing;
using System.Drawing.Drawing2D;

public partial class HomeIn : System.Web.UI.MasterPage
{
    Registration_DS.REGI_SELECTDataTable RegDT = new Registration_DS.REGI_SELECTDataTable();
    Registration_DSTableAdapters.REGI_SELECTTableAdapter RegAdapter = new Registration_DSTableAdapters.REGI_SELECTTableAdapter();

    Registration_DS.LOGIN_SELECTDataTable LDT = new Registration_DS.LOGIN_SELECTDataTable();
    Registration_DSTableAdapters.LOGIN_SELECTTableAdapter LAdapter = new Registration_DSTableAdapters.LOGIN_SELECTTableAdapter();

    Msg_DS.MSGMST_SELECTDataTable MsgDT = new Msg_DS.MSGMST_SELECTDataTable();
    Msg_DSTableAdapters.MSGMST_SELECTTableAdapter MsgAdapter = new Msg_DSTableAdapters.MSGMST_SELECTTableAdapter();

    Payment_DS.PAYMENT_SELECTDataTable PDT = new Payment_DS.PAYMENT_SELECTDataTable();
    Payment_DSTableAdapters.PAYMENT_SELECTTableAdapter PAdapter = new Payment_DSTableAdapters.PAYMENT_SELECTTableAdapter();

    Registration_DS.PARTNER_MATCHES1DataTable AlertDT = new Registration_DS.PARTNER_MATCHES1DataTable();
    Registration_DSTableAdapters.PARTNER_MATCHES1TableAdapter AlertAdapter = new Registration_DSTableAdapters.PARTNER_MATCHES1TableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lblname.Text = "";
            if (Session["userid"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {

                RegDT = RegAdapter.SelectByID(Convert.ToInt32(Session["userid"].ToString()));
                imgphotos.ImageUrl = RegDT.Rows[0]["image"].ToString();
             
                
                lblname.Text = Session["fname"].ToString() + " " + Session["lname"].ToString();// +" - " + RegDT.Rows[0]["ProfileID"].ToString();
                lbldisplay.Text = "Welcome " + lblname.Text;
                lblprofile.Text = "Your ProfileID = " + RegDT.Rows[0]["ProfileID"].ToString();
                Session["PID"] = RegDT.Rows[0]["ProfileID"].ToString();


                if (Session["sex"].ToString() == "MALE")
                {
                    RegDT = RegAdapter.SelectAdvertise(2);
                   
                }
                else
                {
                    RegDT = RegAdapter.SelectAdvertise(3);
                
                }
                dlistadv.DataSource = RegDT;
                dlistadv.DataBind();

                
                ////if (Session["planstatus"].ToString() == "0" || Session["planstatus"].ToString() == "2" || Session["planstatus"].ToString() == "3")
                ////{
                ////    lblstatus.Text = "Account Status - " + Session["plan"].ToString();
                ////    lblstatusmsg.Text = "Upgrade your Account, and get full Access.";
                ////    ImageButton1.Visible = true;
                ////}
                ////else if (Session["planstatus"].ToString() == "1")
                ////{
                ////    lblstatus.Text = "Account Status - " + Session["plan"].ToString();
                ////    lblstatusmsg.Text = "";
                ////    ImageButton1.Visible = false;
                ////}


                if (Session["abc"].ToString() == "User")
                {
                   LDT = LAdapter.SelectLoginByUserID(Convert.ToInt32(Session["userid"].ToString()));
                                   
                        lblnew.Visible = true;
                        // display message and alert for full fill up profile user..

                        MsgDT = MsgAdapter.SelectMsgUnread(Convert.ToInt32(Session["userid"].ToString()));
                        //HyperLink2.Text = "Message - (" + MsgDT.Rows.Count.ToString() + ")";

                        AlertDT = AlertAdapter.SelectAlertCountt(Session["username"].ToString(), Session["sex"].ToString());
                        // HyperLink1.Text = "Profile Alert - (" + AlertDT.Rows.Count.ToString() + ")";
                    
                        lblnew.Text = " You have " + MsgDT.Rows.Count.ToString() + " New Message !! and " + AlertDT.Rows.Count.ToString() + " Prfile Matches.";
                
                    
                    //}
                }
                else if (Session["abc"].ToString() == "Visitor")
                {
                                   
                
                    lblnew.Visible = true;
                    lblnew.Text = "You are logged in as visitor, so we are not consider your profile in our search.";
                    lblnew.ForeColor = System.Drawing.Color.DarkGreen;
                    

                }
                else if (Session["abc"].ToString() == "New")
                {
                  
                   // ImageButton1.Visible = false;                  
                    lblnew.Visible = true;
                    lblnew.Text = "Your account is under review, we will active your account soon.";
                    lblnew.ForeColor = System.Drawing.Color.DarkGreen;
                
                }
                else if (Session["abc"].ToString() == "Engage")
                {
                   
                    //ImageButton1.Visible = false;
                 
                    lblnew.Visible = true;
                    lblnew.Text = "Congratulation !! Thanks for notify us about your engage status.";
                    lblnew.ForeColor = System.Drawing.Color.DarkGreen;
                }
                //else if (Session["abc"].ToString() == "SkEngage")
                //{
                   
                //    ImageButton1.Visible = false;
                   
                //    lblnew.Visible = true;
                //    lblnew.Text = "Congratulation !! We are very happy to hear about you.";
                //    lblnew.ForeColor = System.Drawing.Color.DarkGreen;

                //}

            }
            if (Page.IsPostBack == false)
            {
                drpageto.Text = "27";

                if (Session["a"] != null || Session["b"] != null || Session["c"] != null || Session["d"] != null || Session["e"] != null)
                {
                    drpsearch.SelectedValue = Session["a"].ToString();
                    drpagefrom.Text = Session["b"].ToString();
                    drpageto.Text = Session["c"].ToString();
                    if (Session["d"] != null && Session["e"] != null)
                    {
                        drpeducation.Text = Session["d"].ToString();
                        drplocation.Text = Session["e"].ToString();
                    }

                }

            }
            //fill the unread message
            MsgDT = MsgAdapter.SelectMsgUnread(Convert.ToInt32(Session["userid"].ToString()));
            HyperLink2.Text = "Message - (" + MsgDT.Rows.Count.ToString() + ")";
            //count the profile mathches..

            //RegDT = RegAdapter.SelectMatchesProfile(Session["username"].ToString());
            //HyperLink1.Text = "Profile Alert - (" + RegDT.Rows.Count.ToString() + ")";

           
            AlertDT = AlertAdapter.SelectAlertCountt(Session["username"].ToString(), Session["sex"].ToString());
            HyperLink1.Text = "Profile Alert - (" + AlertDT.Rows.Count.ToString() + ")";

        }
        catch (Exception)
        { }
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        try
        {
            lblsearcherror.Text = "";
            Registration_DS.SEARCHDataTable SimpleDT = new Registration_DS.SEARCHDataTable();
            Registration_DSTableAdapters.SEARCHTableAdapter SimpleAdapter = new Registration_DSTableAdapters.SEARCHTableAdapter();

            if (Convert.ToInt32(drpagefrom.SelectedIndex) > Convert.ToInt32(drpageto.SelectedIndex))
            {
                lblsearcherror.Text = "Select proper age !!";

            }

            Session["a"] = drpsearch.SelectedValue;
            Session["b"] = drpagefrom.SelectedItem.Text;
            Session["c"] = drpageto.SelectedItem.Text;
            Session["d"] = drpeducation.SelectedItem.Text;
            Session["e"] = drplocation.SelectedItem.Text;
            Response.Redirect("searchIn.aspx");
        }
        catch (Exception)
        { }
    }
    protected void lnkphotos_Click(object sender, EventArgs e)
    {
        try
        {
            if (lnkphotos.Text == "Change Photos")
            {
                filephotos.Visible = true;
                lnkphotos.Text = "Update";
            }
            else if (lnkphotos.Text == "Update")
            {
                lnkphotos.Text = "Change Photos";
                filephotos.Visible = false;

                string fname = "";
                if (filephotos.HasFile)
                {
                   // RegDT = RegAdapter.SelectByID(Convert.ToInt32(Session["userid"].ToString()));
                    //imgphotos.ImageUrl = RegDT.Rows[0]["image"].ToString();

                   // String path = Server.MapPath("~/Profileimg/") + RegDT.Rows[0]["image"].ToString();

                   // if (System.IO.File.Exists(path))
                  ///// { 
                   //     System.IO.File.Delete(path);
                   // } 

                    //filephotos.SaveAs("httpdocs/Profileimg/" + Session["userid"].ToString() + filephotos.FileName);

                    filephotos.SaveAs(Server.MapPath("~/Profileimg/") + Session["userid"].ToString() + filephotos.FileName);
                    fname = "~/Profileimg/" + Session["userid"].ToString() + filephotos.FileName.ToString();

                    RegAdapter.UpdateImage(Convert.ToInt32(Session["userid"].ToString()), fname.ToString());


                    

                    Response.Redirect("main.aspx");
                }
                else
                {
                    filephotos.Visible = false;
                }



            }
        }
        catch (Exception a)
        { }
        
    }
    protected void dlistadv_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "View")
        {
            Session["viewid"] = dlistadv.DataKeys[e.Item.ItemIndex].ToString();
            Response.Redirect("user.aspx");
            
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserProfile.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("userprofile.aspx?edit=education");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("userprofile.aspx?edit=other");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
      
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["abc"].ToString() == "User" || Session["abc"].ToString() == "New")
            {
                Response.Redirect("Userdetail.aspx");
            }
            else
            {
                Response.Redirect("Visitordetail.aspx");
            }
        }
        catch (Exception)
        { }
    }
    protected void LinkButton4_Click1(object sender, EventArgs e)
    {
        Session["abc"] = null;
        Session["userid"] = null;
        Session["username"] = null;
        Session["planstatus"] = null;
        Response.Redirect("Default.aspx");
    }
}
