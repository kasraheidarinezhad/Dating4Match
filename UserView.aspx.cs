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
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            MaintainScrollPositionOnPostBack = true;
        MultiView1.ActiveViewIndex = 0;
        REGDT = REGAdapter.SelectByID(Convert.ToInt32(Session["viewid"].ToString()));


        imguser.ImageUrl = REGDT.Rows[0]["image"].ToString();
        lblfnale.Text = REGDT.Rows[0]["fname"].ToString();
        lblmname.Text = REGDT.Rows[0]["mname"].ToString();
        lbllnam.Text = REGDT.Rows[0]["lname"].ToString();
        lblcast.Text = REGDT.Rows[0]["cast"].ToString();
        lblgender.Text = REGDT.Rows[0]["gender"].ToString();
        lblreligion.Text = REGDT.Rows[0]["religion"].ToString();
        //lblbirthdate.Text = REGDT.Rows[0]["Birthdate"].ToString();
        lblbirthdate.Text =  Convert.ToDateTime(REGDT.Rows[0]["Birthdate"].ToString()).GetDateTimeFormats()[6].ToString();
        lblcity.Text = REGDT.Rows[0]["city"].ToString();
        

        lblname.Text = REGDT.Rows[0]["fname"].ToString().ToUpper() + " " + REGDT.Rows[0]["lname"].ToString().ToUpper();

          lblfathername.Text = REGDT.Rows[0]["fathername"].ToString();
            lblmothername.Text = REGDT.Rows[0]["mothername"].ToString();
           lbleducation.Text = REGDT.Rows[0]["Education"].ToString();
            lbloccupation.Text = REGDT.Rows[0]["Occupation"].ToString();
            //lblocuupationaddress.Text = REGDT.Rows[0]["OccupationLocation"].ToString();
            lblocclocation.Text = REGDT.Rows[0]["OccupationLocation"].ToString();
            lblfatheroccupation.Text = REGDT.Rows[0]["Fatheroccupation"].ToString();


            //lcity.Text = REGDT.Rows[0]["City"].ToString();
            //lpincodr.Text = REGDT.Rows[0]["Pincode"].ToString();
            //ldistict.Text = "Sabar Kantha";
            Label27.Text = "About " + lblfnale.Text;
            labout.Text = REGDT.Rows[0]["ExtraDetail"].ToString();
            lblwork.Text = REGDT.Rows[0]["Aboutjob"].ToString();
           //lblmaritial.Text = REGDT.Rows[0]["Maritialstatus"].ToString();
           // lblbody.Text = REGDT.Rows[0]["look"].ToString();
           // lblfood.Text = REGDT.Rows[0]["food"].ToString();

           // lblhight.Text = REGDT.Rows[0]["hight"].ToString();
           // lblweight.Text = REGDT.Rows[0]["weight"].ToString();
           // lblsmok.Text = REGDT.Rows[0]["smoking"].ToString();
           // lbldrink.Text = REGDT.Rows[0]["drinking"].ToString();
           // lblblood.Text = REGDT.Rows[0]["bloodgroup"].ToString();
           // lblmangal.Text = REGDT.Rows[0]["mangal"].ToString();
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

            //lcity.Text = REGDT.Rows[0]["City"].ToString();
            //lpincodr.Text = REGDT.Rows[0]["Pincode"].ToString();
           // ldistict.Text = "Sabar Kantha";
            Label27.Text = "About " + lblfnale.Text;
            labout.Text = REGDT.Rows[0]["ExtraDetail"].ToString();
            lblwork.Text = REGDT.Rows[0]["Aboutjob"].ToString();
        }

        if (LoginDT.Rows[0]["other"].ToString() == "1")
        {
            //lblmaritial.Text = REGDT.Rows[0]["Maritialstatus"].ToString();
            //lblbody.Text = REGDT.Rows[0]["look"].ToString();
            //lblfood.Text = REGDT.Rows[0]["food"].ToString();

            //lblhight.Text = REGDT.Rows[0]["hight"].ToString();
            //lblweight.Text = REGDT.Rows[0]["weight"].ToString();
            //lblsmok.Text = REGDT.Rows[0]["smoking"].ToString();
            //lbldrink.Text = REGDT.Rows[0]["drinking"].ToString();
            //lblblood.Text = REGDT.Rows[0]["bloodgroup"].ToString();
            //lblmangal.Text = REGDT.Rows[0]["mangal"].ToString();
        }
    }
    catch (Exception)
    { }
    }
   
}
