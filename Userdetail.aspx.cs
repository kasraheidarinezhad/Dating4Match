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

public partial class Userdetail : System.Web.UI.Page
{
    Registration_DS.REGI_SELECTDataTable REGDT = new Registration_DS.REGI_SELECTDataTable();
    Registration_DSTableAdapters.REGI_SELECTTableAdapter REGAdapter = new Registration_DSTableAdapters.REGI_SELECTTableAdapter();
    
    Registration_DS.LOGIN_SELECTDataTable LoginDT = new Registration_DS.LOGIN_SELECTDataTable();
    Registration_DSTableAdapters.LOGIN_SELECTTableAdapter LoginAdapter = new Registration_DSTableAdapters.LOGIN_SELECTTableAdapter();

    Registration_DS.PARTNER_SELECTDataTable PDT = new Registration_DS.PARTNER_SELECTDataTable();
    Registration_DSTableAdapters.PARTNER_SELECTTableAdapter PAdapter = new Registration_DSTableAdapters.PARTNER_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        try{
            MaintainScrollPositionOnPostBack = true;
            if (Session["abc"] == "User" || Session["abc"]=="New")
            {

                REGDT = REGAdapter.SelectByID(Convert.ToInt32(Session["userid"].ToString()));

                LoginDT = LoginAdapter.SelectLoginByUserID(Convert.ToInt32(Session["userid"].ToString()));

                Session["personal"] = LoginDT.Rows[0]["personal"].ToString();
                Session["education"] = LoginDT.Rows[0]["education"].ToString();
                Session["other"] = LoginDT.Rows[0]["other"].ToString();

                lblfnale.Text = REGDT.Rows[0]["fname"].ToString();
                lblmname.Text = REGDT.Rows[0]["mname"].ToString();
                lbllnam.Text = REGDT.Rows[0]["lname"].ToString();
                lblmobile.Text = REGDT.Rows[0]["mobile"].ToString();
                lblemail.Text = REGDT.Rows[0]["email"].ToString();
                lblcast.Text = REGDT.Rows[0]["cast"].ToString();
                lblgender.Text = REGDT.Rows[0]["gender"].ToString();
                lblreligion.Text = REGDT.Rows[0]["religion"].ToString();
                //DateTime dob = Convert.ToDateTime(REGDT.Rows[0]["Birthdate"].ToString());
                //drpDD.Text = dob.Date.Day.ToString();
                //drpMM.Text = dob.Date.Month.ToString();
                //drpYYYY.Text = dob.Date.Year.ToString();
              //  lblbirthdate.Text = REGDT.Rows[0]["Birthdate"].ToString();

                lblbirthdate.Text = Convert.ToDateTime(REGDT.Rows[0]["Birthdate"].ToString()).GetDateTimeFormats()[6].ToString();

                lbladd1.Text = REGDT.Rows[0]["address1"].ToString();
                lbladd2.Text = REGDT.Rows[0]["address2"].ToString();
                lblareacode.Text = REGDT.Rows[0]["areacode"].ToString();
                lbllandline.Text = REGDT.Rows[0]["landline"].ToString();
                lblcity.Text = REGDT.Rows[0]["city"].ToString();
                lblpincode.Text = REGDT.Rows[0]["pincode"].ToString();


                if (LoginDT.Rows[0]["Personal"].ToString() == "1")
                {
                    lblfathername.Text = REGDT.Rows[0]["fathername"].ToString();
                    lblmothername.Text = REGDT.Rows[0]["mothername"].ToString();
                    lblaboutyou.Text = REGDT.Rows[0]["ExtraDetail"].ToString();
                }

                if (LoginDT.Rows[0]["Education"].ToString() == "1")
                {
                    lbleducation.Text = REGDT.Rows[0]["Education"].ToString();
                  //  lblbranch.Text = REGDT.Rows[0]["Branch"].ToString();
                    lbloccupation.Text = REGDT.Rows[0]["Occupation"].ToString();
                    lblocuupationaddress.Text = REGDT.Rows[0]["OccupationLocation"].ToString();
                    lblfatheroccupation.Text = REGDT.Rows[0]["Fatheroccupation"].ToString();
                    lblaboutjob.Text = REGDT.Rows[0]["Aboutjob"].ToString();
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


                PDT = PAdapter.SelectByName(Session["username"].ToString());

                lblphight.Text = PDT.Rows[0]["HeightFrom"].ToString() + " - " + PDT.Rows[0]["Heightto"].ToString();
                lblpage.Text = PDT.Rows[0]["AgeFrom"].ToString() + " - " + PDT.Rows[0]["AgeTo"].ToString();
                lblplocation.Text = PDT.Rows[0]["location"].ToString();
                lblpeducation.Text = PDT.Rows[0]["education"].ToString();
                lblpfamily.Text = PDT.Rows[0]["familytype"].ToString();
                lblpmangal.Text = PDT.Rows[0]["mangal"].ToString();
                lblaboutpartner.Text = PDT.Rows[0]["aboutpartner"].ToString();
            }
            else
            {
                Response.Redirect("Visitordetail.aspx");
            
            }
    }
    catch (Exception)
    { }
    }

    protected void lnkpersonal_Click(object sender, EventArgs e)
    {
        Response.Redirect("userprofile.aspx?edit=personal");
    }
    protected void lnkedu_Click(object sender, EventArgs e)
    {
        Response.Redirect("userprofile.aspx?edit=education");
    }
    protected void lnkother_Click(object sender, EventArgs e)
    {
        Response.Redirect("userprofile.aspx?edit=other");
    }
    protected void lnkaddress_Click(object sender, EventArgs e)
    {
        Response.Redirect("userprofile.aspx?edit=address");
    }
    protected void lnkpartner_Click(object sender, EventArgs e)
    {
        Response.Redirect("userprofile.aspx?edit=partner");
    }
}
