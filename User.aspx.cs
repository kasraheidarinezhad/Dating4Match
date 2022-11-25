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

public partial class User : System.Web.UI.Page
{
    Registration_DS.REGI_SELECTDataTable REGDT = new Registration_DS.REGI_SELECTDataTable();
    Registration_DSTableAdapters.REGI_SELECTTableAdapter REGAdapter = new Registration_DSTableAdapters.REGI_SELECTTableAdapter();

    Registration_DS.LOGIN_SELECTDataTable LoginDT = new Registration_DS.LOGIN_SELECTDataTable();
    Registration_DSTableAdapters.LOGIN_SELECTTableAdapter LoginAdapter = new Registration_DSTableAdapters.LOGIN_SELECTTableAdapter();

    Msg_DS.MSGMST_SELECTDataTable MsgST = new Msg_DS.MSGMST_SELECTDataTable();
    Msg_DSTableAdapters.MSGMST_SELECTTableAdapter MsgAdapter = new Msg_DSTableAdapters.MSGMST_SELECTTableAdapter();


    Count_DS.COUNTMST_SELECTDataTable CntDT = new Count_DS.COUNTMST_SELECTDataTable();
    Count_DSTableAdapters.COUNTMST_SELECTTableAdapter CntAdapter = new Count_DSTableAdapters.COUNTMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
           // MaintainScrollPositionOnPostBack = true;
        MultiView1.ActiveViewIndex = 0;
        REGDT = REGAdapter.SelectByID(Convert.ToInt32(Session["viewid"].ToString()));


        LoginDT = LoginAdapter.SelectLoginByUserID(Convert.ToInt32(Session["userid"].ToString()));

        Session["personal"] = LoginDT.Rows[0]["personal"].ToString();
        Session["education"] = LoginDT.Rows[0]["education"].ToString();
        Session["other"] = LoginDT.Rows[0]["other"].ToString();

        imguser.ImageUrl = REGDT.Rows[0]["image"].ToString();
        lblfnale.Text = REGDT.Rows[0]["fname"].ToString();
        lblmname.Text = REGDT.Rows[0]["mname"].ToString();
        lbllnam.Text = REGDT.Rows[0]["lname"].ToString();
        lblcast.Text = REGDT.Rows[0]["cast"].ToString();
        lblgender.Text = REGDT.Rows[0]["gender"].ToString();
        lblreligion.Text = REGDT.Rows[0]["religion"].ToString();
        lblbirthdate.Text = REGDT.Rows[0]["Birthdate"].ToString();
        lblcity.Text = REGDT.Rows[0]["city"].ToString();
        

        lblname.Text = REGDT.Rows[0]["fname"].ToString() + " " + REGDT.Rows[0]["lname"].ToString();

        if (LoginDT.Rows[0]["Personal"].ToString() == "1")
        {
            lblfathername.Text = REGDT.Rows[0]["fathername"].ToString();
            lblmothername.Text = REGDT.Rows[0]["mothername"].ToString();
        }

        if (LoginDT.Rows[0]["Education"].ToString() == "1")
        {
            lbleducation.Text = REGDT.Rows[0]["Education"].ToString();
            lbloccupation.Text = REGDT.Rows[0]["Occupation"].ToString();
            //lblocuupationaddress.Text = REGDT.Rows[0]["OccupationLocation"].ToString();
            lblocclocation.Text = REGDT.Rows[0]["OccupationLocation"].ToString();
            lblfatheroccupation.Text = REGDT.Rows[0]["Fatheroccupation"].ToString();


            lcity.Text = REGDT.Rows[0]["City"].ToString();
            lpincodr.Text = REGDT.Rows[0]["Pincode"].ToString();
            ldistict.Text = "Sabar Kantha";
            Label27.Text = "About " + lblfnale.Text;
            labout.Text = REGDT.Rows[0]["ExtraDetail"].ToString();
        }

        if (LoginDT.Rows[0]["other"].ToString() == "1")
        {
            lblmaritial.Text = REGDT.Rows[0]["Maritialstatus"].ToString();
            lblbody.Text = REGDT.Rows[0]["look"].ToString();
            lblfood.Text = REGDT.Rows[0]["food"].ToString();

            lblhight.Text = REGDT.Rows[0]["hight"].ToString();
            lblweight.Text = REGDT.Rows[0]["weight"].ToString();
            lblsmok.Text = REGDT.Rows[0]["smoking"].ToString();
            lbldrink.Text = REGDT.Rows[0]["drinking"].ToString();
            lblblood.Text = REGDT.Rows[0]["bloodgroup"].ToString();
            lblmangal.Text = REGDT.Rows[0]["mangal"].ToString();
        }
    }
    catch (Exception)
    { }

    }
    protected void lnkpersonal_Click(object sender, EventArgs e)
    {
        try{
        MultiView1.ActiveViewIndex = 0;
        REGDT = REGAdapter.SelectByID(Convert.ToInt32(Session["viewid"].ToString()));


        LoginDT = LoginAdapter.SelectLoginByUserID(Convert.ToInt32(Session["userid"].ToString()));

        Session["personal"] = LoginDT.Rows[0]["personal"].ToString();
        Session["education"] = LoginDT.Rows[0]["education"].ToString();
        Session["other"] = LoginDT.Rows[0]["other"].ToString();


        imguser.ImageUrl = REGDT.Rows[0]["image"].ToString();
        lblfnale.Text = REGDT.Rows[0]["fname"].ToString();
        lblmname.Text = REGDT.Rows[0]["mname"].ToString();
        lbllnam.Text = REGDT.Rows[0]["lname"].ToString();
        lblcast.Text = REGDT.Rows[0]["cast"].ToString();
        lblgender.Text = REGDT.Rows[0]["gender"].ToString();
        lblreligion.Text = REGDT.Rows[0]["religion"].ToString();
        lblbirthdate.Text = REGDT.Rows[0]["Birthdate"].ToString();
        lblcity.Text = REGDT.Rows[0]["city"].ToString();


        if (LoginDT.Rows[0]["Personal"].ToString() == "1")
        {
            lblfathername.Text = REGDT.Rows[0]["fathername"].ToString();
            lblmothername.Text = REGDT.Rows[0]["mothername"].ToString();
        }

        if (LoginDT.Rows[0]["Education"].ToString() == "1")
        {
            lbleducation.Text = REGDT.Rows[0]["Education"].ToString();
            lbloccupation.Text = REGDT.Rows[0]["Occupation"].ToString();
            lblocclocation.Text = REGDT.Rows[0]["OccupationLocation"].ToString();
            lblfatheroccupation.Text = REGDT.Rows[0]["Fatheroccupation"].ToString();

            lcity.Text = REGDT.Rows[0]["City"].ToString();
            lpincodr.Text = REGDT.Rows[0]["Pincode"].ToString();
            ldistict.Text = "Sabar Kantha";
            Label27.Text = "About " + lblfnale.Text;
            labout.Text = REGDT.Rows[0]["ExtraDetail"].ToString();
        }

        if (LoginDT.Rows[0]["other"].ToString() == "1")
        {
            lblmaritial.Text = REGDT.Rows[0]["Maritialstatus"].ToString();
            lblbody.Text = REGDT.Rows[0]["look"].ToString();
            lblfood.Text = REGDT.Rows[0]["food"].ToString();

            lblhight.Text = REGDT.Rows[0]["hight"].ToString();
            lblweight.Text = REGDT.Rows[0]["weight"].ToString();
            lblsmok.Text = REGDT.Rows[0]["smoking"].ToString();
            lbldrink.Text = REGDT.Rows[0]["drinking"].ToString();
            lblblood.Text = REGDT.Rows[0]["bloodgroup"].ToString();
            lblmangal.Text = REGDT.Rows[0]["mangal"].ToString();
        }
    }
    catch (Exception)
    { }
    }
    protected void lnkaddress_Click(object sender, EventArgs e)
    {
        try{

            if (Session["abc"].ToString() == "User")
            {

                MultiView1.ActiveViewIndex = 1;
                if (Session["plan"].ToString() == "0")
                {
                    ImageButton1.Visible = true;
                    pnladdress.Visible = false;
                    lbleverithings.Visible = true;
                    lbluplandline.Text = "";
                    lblupcity.Text = "";
                    lblupaddress.Text = "";
                    lblupadd2.Text = "";
                    lblupmobile.Text = "";
                    lblemail.Text = "";
                }
                else if (Session["plan"].ToString() == "1")
                {
                    ImageButton1.Visible = false;
                    lbleverithings.Visible = false;

                    REGDT = REGAdapter.SelectByID(Convert.ToInt32(Session["viewid"].ToString()));
                    lblupaddress.Text = REGDT.Rows[0]["address1"].ToString();
                    lblupadd2.Text = REGDT.Rows[0]["address2"].ToString();
                    lblupcity.Text = REGDT.Rows[0]["city"].ToString();
                    lblupmobile.Text = REGDT.Rows[0]["mobile"].ToString();
                    lbluplandline.Text = REGDT.Rows[0]["areacode"].ToString() + " - " + REGDT.Rows[0]["landline"].ToString();
                    lblemail.Text = REGDT.Rows[0]["email"].ToString();
                    pnladdress.Visible = true;
                }
            }
            else if (Session["abc"].ToString() == "Visitor")
            {
                MultiView1.ActiveViewIndex = 3;
            }
            else if (Session["abc"].ToString() == "New")
            {
                MultiView1.ActiveViewIndex = 4;
            }




    }
    catch (Exception)
    { }
    
    }
    protected void lnkmsg_Click(object sender, EventArgs e)
    {
        if (Session["abc"].ToString() == "User")
        {
            MultiView1.ActiveViewIndex = 2;
        }
        else if (Session["abc"].ToString() == "Visitor")
        {
            MultiView1.ActiveViewIndex = 3;
        }
        else if (Session["abc"].ToString() == "New")
        {
            MultiView1.ActiveViewIndex = 4;
        }
    }
    protected void btnsendmsg_Click(object sender, EventArgs e)
    {try{

        int insermsg = MsgAdapter.Insert(Convert.ToInt32(Session["userid"].ToString()), Session["fname"].ToString() + " " + Session["lname"].ToString(), Session["img"].ToString(), Convert.ToInt32(Session["viewid"].ToString()), txtmsgsend.Text);
        txtmsgsend.Text = "";
        lblmsgsend.Text = "Message sent successfully.";
        MultiView1.ActiveViewIndex = 2;

        CntAdapter.COUNTMST_UPDATE_MESSAGE_COUNT(Convert.ToInt32(Session["userid"].ToString()));


    }
    catch (Exception)
    { }
    }
}
