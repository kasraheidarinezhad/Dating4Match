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
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lblname.Text = "";
            if (Session["userid"] == null)
            {
                Response.Redirect("Home.aspx");
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
                //if (Session["planstatus"].ToString() == "0")
                //{
                //    lblstatus.Text = "Account Status - " + Session["plan"].ToString() + " Member";
                //    lblstatusmsg.Text = "Upgrade your Account, and get full Access.";
                //    ImageButton1.Visible = true;
                //}
                //else if (Session["planstatus"].ToString() == "1")
                //{
                //    lblstatus.Text = "Account Status - " + Session["plan"].ToString() + " Member";
                //    lblstatusmsg.Text = "Now you can get full Access.";
                //    ImageButton1.Visible = false;
                //}

                //check profile upadate setting
                LDT = LAdapter.SelectLoginByUserID(Convert.ToInt32(Session["userid"].ToString()));

                //if (LDT.Rows[0]["personal"].ToString() == "1")
                //{
                //    LinkButton1.Visible = false;
                //    lblfill.Visible = false;
                //}
                //else
                //{
                //    LinkButton1.Visible = true;
                //    lblfill.Visible = true;
                //}
                //if (LDT.Rows[0]["Education"].ToString() == "1")
                //{
                //    LinkButton2.Visible = false;
                //    //lblfill.Visible = false;

                //}
                //else
                //{
                //    LinkButton2.Visible = true;
                //    lblfill.Visible = true;

                //}
                //if (LDT.Rows[0]["other"].ToString() == "1")
                //{
                //    LinkButton3.Visible = false;
                //    //lblfill.Visible = false;
                //}
                //else
                //{
                //    LinkButton3.Visible = true;
                //    lblfill.Visible = true;
                //}


            }
            if (Page.IsPostBack == false)
            {
                //drpageto.Text = "27";

                //if (Session["a"] != null || Session["b"] != null || Session["c"] != null || Session["d"] != null || Session["e"] != null)
                //{
                //    drpsearch.SelectedValue = Session["a"].ToString();
                //    drpagefrom.Text = Session["b"].ToString();
                //    drpageto.Text = Session["c"].ToString();
                //    if (Session["d"] != null && Session["e"] != null)
                //    {
                //        drpeducation.Text = Session["d"].ToString();
                //        drplocation.Text = Session["e"].ToString();
                //    }

                //}

            }
            //fill the unread message
            MsgDT = MsgAdapter.SelectMsgUnread(Convert.ToInt32(Session["userid"].ToString()));
            HyperLink2.Text = "Message - (" + MsgDT.Rows.Count.ToString() + ")";
            //count the profile mathches..
            RegDT = RegAdapter.SelectMatchesProfile(Session["username"].ToString());
            HyperLink1.Text = "Profile Alert - (" + RegDT.Rows.Count.ToString() + ")";

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
                    filephotos.SaveAs(Server.MapPath("~/Profileimg/") + filephotos.FileName);
                    fname = "~/Profileimg/" + filephotos.FileName.ToString();

                    RegAdapter.UpdateImage(Convert.ToInt32(Session["userid"].ToString()), fname.ToString());

                    Response.Redirect("main.aspx");
                }
                else
                {
                    filephotos.Visible = false;
                }



            }
        }
        catch (Exception)
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
        try
        {
            PDT = PAdapter.SelectPaymentBYID(Convert.ToInt32(Session["userid"].ToString()));
            if (PDT.Rows.Count > 0 && PDT.Rows[0]["status"].ToString() == "0")
            {
               // lbldate.Text = PDT.Rows[0]["Entrydate"].ToString();
                //MultiView1.ActiveViewIndex = 0;
                //Response.Redirect("main.aspx");
            }
            else
            {
                Response.Redirect("UpgrageAccount.aspx");
            }
        }
        catch (Exception)
        { }
    }
}
