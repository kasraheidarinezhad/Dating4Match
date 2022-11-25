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

public partial class UserProfile : System.Web.UI.Page
{

    Registration_DS.REGI_SELECTDataTable REGDT = new Registration_DS.REGI_SELECTDataTable();
    Registration_DSTableAdapters.REGI_SELECTTableAdapter REGAdapter = new Registration_DSTableAdapters.REGI_SELECTTableAdapter();

    Registration_DS.LOGIN_SELECTDataTable LoginDT = new Registration_DS.LOGIN_SELECTDataTable();
    Registration_DSTableAdapters.LOGIN_SELECTTableAdapter LoginAdapter = new Registration_DSTableAdapters.LOGIN_SELECTTableAdapter();

    Registration_DS.PARTNER_SELECTDataTable PDT = new Registration_DS.PARTNER_SELECTDataTable();
    Registration_DSTableAdapters.PARTNER_SELECTTableAdapter PAdapter = new Registration_DSTableAdapters.PARTNER_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            MaintainScrollPositionOnPostBack = true;
            if (Page.IsPostBack == false)
            {
                MultiView1.ActiveViewIndex = 0;
                
            }


            if (Session["abc"].ToString() == "User")
            {

                lnkaddessss.Visible = true;
                LNKEDUCATIONN.Visible = true;
                lnlotherr.Visible = true;
            }
            else if (Session["abc"].ToString() == "Visitor")
            {

                lnkaddessss.Visible = false;
                LNKEDUCATIONN.Visible = false;
                lnlotherr.Visible = false;
            
            }


            if (Request.QueryString["edit"] != null)
            {
                string edit = Request.QueryString["edit"].ToString();
                if (edit.ToString() == "personal")
                {
                    MultiView1.ActiveViewIndex = 0;

                }
                else if (edit.ToString() == "education")
                {
                    MultiView1.ActiveViewIndex = 1;
                }
                else if (edit.ToString() == "other")
                {
                    MultiView1.ActiveViewIndex = 2;

                }
                else if (edit.ToString() == "address")
                {
                    MultiView1.ActiveViewIndex = 3;
                }
                else if (edit.ToString() == "partner")
                {
                    MultiView1.ActiveViewIndex = 4;

                }

            }

            REGDT = REGAdapter.SelectByID(Convert.ToInt32(Session["userid"].ToString()));
            LoginDT = LoginAdapter.SelectLoginByUserID(Convert.ToInt32(Session["userid"].ToString()));

            if (Page.IsPostBack == false)
            {

                Session["personal"] = LoginDT.Rows[0]["personal"].ToString();
                Session["education"] = LoginDT.Rows[0]["education"].ToString();
                Session["other"] = LoginDT.Rows[0]["other"].ToString();

                txtfname.Text = REGDT.Rows[0]["fname"].ToString();
                txtmname.Text = REGDT.Rows[0]["mname"].ToString();
                txtlname.Text = REGDT.Rows[0]["lname"].ToString();
                txtmobile.Text = REGDT.Rows[0]["mobile"].ToString();
                txtemail.Text = REGDT.Rows[0]["email"].ToString();
                txtcast.Text = REGDT.Rows[0]["cast"].ToString();
                drpgender.Text = REGDT.Rows[0]["gender"].ToString();
                drpReligion.Text = REGDT.Rows[0]["religion"].ToString();
                DateTime dob = Convert.ToDateTime(REGDT.Rows[0]["Birthdate"].ToString());
                drpDD.Text = dob.Date.Day.ToString();
                drpMM.Text = dob.Date.Month.ToString();
                drpYYYY.Text = dob.Date.Year.ToString();
                txtadd1.Text = REGDT.Rows[0]["address1"].ToString();
                txtadd2.Text = REGDT.Rows[0]["address2"].ToString();
                txtareacode.Text = REGDT.Rows[0]["areacode"].ToString();
                txtlandline.Text = REGDT.Rows[0]["landline"].ToString();
                drpCity.Text = REGDT.Rows[0]["city"].ToString();
                txtpincode.Text = REGDT.Rows[0]["pincode"].ToString();


                if (LoginDT.Rows[0]["Personal"].ToString() == "1")
                {
                    txtfathername.Text = REGDT.Rows[0]["fathername"].ToString();
                    txtmothername.Text = REGDT.Rows[0]["mothername"].ToString();
                    txtdetail.Text = REGDT.Rows[0]["ExtraDetail"].ToString();
                }

                if (LoginDT.Rows[0]["Education"].ToString() == "1")
                {
                    drpeducation.Text = REGDT.Rows[0]["Education"].ToString();
                   // drpbranch.Text = REGDT.Rows[0]["Branch"].ToString();
                    txtoccu.Text = REGDT.Rows[0]["Occupation"].ToString();
                    txtoccuaddress.Text = REGDT.Rows[0]["OccupationLocation"].ToString();
                    txtfatheroccu.Text = REGDT.Rows[0]["Fatheroccupation"].ToString();
                   // txtjobprofile.Text = REGDT.Rows[0]["AboutJob"].ToString();
                }

                if (LoginDT.Rows[0]["other"].ToString() == "1")
                {
                    drpmaritial.Text = REGDT.Rows[0]["Maritialstatus"].ToString();
                    rdobody.Text = REGDT.Rows[0]["look"].ToString();
                    rdofood.Text = REGDT.Rows[0]["food"].ToString();

                    drphight.Text = REGDT.Rows[0]["hight"].ToString();
                    drpweight.Text = REGDT.Rows[0]["weight"].ToString();
                    rdosmoking.Text = REGDT.Rows[0]["smoking"].ToString();
                    rdodrinking.Text = REGDT.Rows[0]["drinking"].ToString();
                    drpbloodgroup.Text = REGDT.Rows[0]["bloodgroup"].ToString();
                    rdomangal.Text = REGDT.Rows[0]["mangal"].ToString();
                }

                lblage.Text = "";
                lblhight.Text = "";
                lbllocation.Text = "";
                lbledu.Text = "";
                lblfamily.Text = "";
                lblmangalpartne.Text = "";

                PDT = PAdapter.SelectByName(Session["username"].ToString());

                drpfromheight.Text = PDT.Rows[0]["HeightFrom"].ToString();
                drptoheight.Text = PDT.Rows[0]["Heightto"].ToString();
                drpfromage.Text = PDT.Rows[0]["AgeFrom"].ToString();
                drptoage.Text = PDT.Rows[0]["AgeTo"].ToString();
                drplocation.Text = PDT.Rows[0]["location"].ToString();
                drpEdu.Text = PDT.Rows[0]["education"].ToString();
                rdofamily.Text = PDT.Rows[0]["familytype"].ToString();
                rdomanglepartner.Text = PDT.Rows[0]["mangal"].ToString();
                txtaboutpartner.Text = PDT.Rows[0]["Aboutpartner"].ToString();
            }
        }
        catch (Exception)
        { }

    }
    protected void btnupdateEducation_Click(object sender, EventArgs e)
    {
        try
        {
            lbleducation.Text = "";
            if (drpeducation.Text == "SELECT")
            {
                lbleducation.Text = "!!";
                // lblbranch.Text = "";
            }
            else
            {
                REGAdapter.UpdateEducational(Convert.ToInt32(Session["userid"].ToString()), drpeducation.SelectedItem.Text, txtoccu.Text, txtoccuaddress.Text, txtfatheroccu.Text);
                LoginAdapter.Update(Convert.ToInt32(Session["userid"].ToString()), Convert.ToInt32(Session["personal"].ToString()), 1, Convert.ToInt32(Session["other"].ToString()));
               // Response.Redirect("userprofile.aspx");
            }
        }
        catch (Exception)
        { }
    }

    private void OtherClear()
    {
        lblmaritial.Text = "";
        lblbody.Text = "";
        lblfood.Text = "";
        lblsmok.Text = "";
        lbldrink.Text = "";
        lblmangal.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            OtherClear();

            if (drpmaritial.Text == "SELECT")
            {
                lblmaritial.Text = "!!";
            }
            else if (rdobody.SelectedItem == null)
            {
                lblbody.Text = "!!";
            }
            else if (rdofood.SelectedItem == null)
            {
                lblfood.Text = "!!";

            }
            else if (rdosmoking.SelectedItem == null)
            {
                lblsmok.Text = "!!";
            }
            else if (rdodrinking.SelectedItem == null)
            {
                lbldrink.Text = "!!";
            }
            else if (rdomangal.SelectedItem == null)
            {
                lblmangal.Text = "!!";
            }
            else
            {

                REGAdapter.UpdateOther(Convert.ToInt32(Session["userid"].ToString()), drpmaritial.SelectedItem.Text, rdobody.SelectedItem.Text, drphight.SelectedItem.Text, drpweight.SelectedItem.Text, drpbloodgroup.SelectedItem.Text, rdomangal.SelectedItem.Text, rdofood.SelectedItem.Text, rdosmoking.SelectedItem.Text, rdodrinking.SelectedItem.Text);
                LoginAdapter.Update(Convert.ToInt32(Session["userid"].ToString()), Convert.ToInt32(Session["personal"].ToString()), Convert.ToInt32(Session["education"].ToString()), 1);
               // Response.Redirect("userprofile.aspx");
            }
        }
        catch (Exception)
        { 
        }
    }
    protected void btnupdatepersonal_Click(object sender, EventArgs e)
    {
        try
        {
            MaintainScrollPositionOnPostBack = true;
            lblgender.Text = "";
            lblreligion.Text = "";
            lbldate.Text = "";
            if (drpgender.Text == "SELECT")
            {
                lblgender.Text = "!!";
            }
            else if (drpReligion.Text == "SELECT")
            {
                lblreligion.Text = "!!";
            }
            else if (drpDD.Text == "DD" || drpMM.Text == "MM" || drpYYYY.Text == "YYYY")
            {
                lbldate.Text = "!!";
            }

            else
            {

                DateTime dob = Convert.ToDateTime(drpDD.SelectedItem.Text + " " + drpMM.SelectedItem.Text + " " + drpYYYY.SelectedItem.Text);

                int currentyear = Convert.ToInt32(DateTime.Today.Year.ToString());
                int AGE = currentyear - Convert.ToInt32(drpYYYY.SelectedItem.Text);

                //string fname = "";
                //if (fileimg.HasFile)
                //{
                //    fileimg.SaveAs(Server.MapPath("~/Profileimg/") + fileimg.FileName);
                //    fname = "~/Profileimg/" + fileimg.FileName.ToString();

                //}

                REGAdapter.UpdateGeneral(Convert.ToInt32(Session["userid"].ToString()), txtfname.Text, txtmname.Text, txtlname.Text, drpgender.SelectedItem.Text, dob, AGE, txtemail.Text, txtmobile.Text, drpReligion.SelectedItem.Text, txtcast.Text, txtfathername.Text, txtmothername.Text, txtdetail.Text);

                LoginAdapter.Update(Convert.ToInt32(Session["userid"].ToString()), 1, Convert.ToInt32(Session["education"].ToString()), Convert.ToInt32(Session["other"].ToString()));
               // Response.Redirect("userprofile.aspx");
            }
        }
        catch (Exception)
        { 
        }
    }
    protected void btnaddressupdate_Click(object sender, EventArgs e)
    {
        try
        {
            lblcity.Text = "";
            if (drpCity.Text == "SELECT")
            {
                lblcity.Text = "!!";
            }
            else
            {
                REGAdapter.UpdateAddress(Convert.ToInt32(Session["userid"].ToString()), txtadd1.Text, txtadd2.Text, drpCity.SelectedItem.Text, txtdist.Text, txtpincode.Text, txtareacode.Text, txtlandline.Text);


            }
        }
        catch (Exception)
        { 
        
        }
    }
    protected void lnkpersonal_Click(object sender, EventArgs e)
    {
        lblgender.Text = "";
        lblreligion.Text = "";
        lbldate.Text = "";
        
    }
    protected void lnkeducation_Click(object sender, EventArgs e)
    {
        lbleducation.Text = "";
       
    }
    protected void lnkaddress_Click(object sender, EventArgs e)
    {
        lblcity.Text = "";
        
    }
    protected void lnkother_Click(object sender, EventArgs e)
    {
        OtherClear();
        
    }
    protected void lnkpartner_Click(object sender, EventArgs e)
    {
        try
        {

            lblage.Text = "";
            lblhight.Text = "";
            lbllocation.Text = "";
            lbledu.Text = "";
            lblfamily.Text = "";
            lblmangalpartne.Text = "";

            PDT = PAdapter.SelectByName(Session["username"].ToString());

            drpfromheight.Text = PDT.Rows[0]["HeightFrom"].ToString();
            drptoheight.Text = PDT.Rows[0]["Heightto"].ToString();
            drpfromage.Text = PDT.Rows[0]["AgeFrom"].ToString();
            drptoage.Text = PDT.Rows[0]["AgeTo"].ToString();
            drplocation.Text = PDT.Rows[0]["location"].ToString();
            drpEdu.Text = PDT.Rows[0]["education"].ToString();
            rdofamily.Text = PDT.Rows[0]["familytype"].ToString();
            rdomanglepartner.Text = PDT.Rows[0]["mangal"].ToString();
            txtaboutpartner.Text = PDT.Rows[0]["Aboutpartner"].ToString();
        }
        catch (Exception)
        { 
        }
    }
    protected void btnpartnerupdate_Click(object sender, EventArgs e)
    {
        try
        {
            lblage.Text = "";
            lblhight.Text = "";
            lbllocation.Text = "";
            lbledu.Text = "";
            lblfamily.Text = "";
            lblmangalpartne.Text = "";

            if (drpfromage.Text == "AGE")
            {
                lblage.Text = "!!";
            }
            else if (drptoage.Text == "AGE")
            {
                lblage.Text = "!!";
            }
            else if (Convert.ToInt32(drpfromage.Text) > Convert.ToInt32(drptoage.Text))
            {
                lblage.Text = "?";
            }
            else if (drpfromheight.Text == "SELECT" || drptoheight.Text == "SELECT")
            {
                lblhight.Text = "!!";
            }
            else if (Convert.ToInt32(drpfromheight.SelectedIndex) > Convert.ToInt32(drptoheight.SelectedIndex))
            {
                lblhight.Text = "?";
            }
            else if (drplocation.Text == "SELECT")
            {
                lbllocation.Text = "!!";
            }
            else if (drpEdu.Text == "SELECT")
            {
                lbledu.Text = "!!";
            }
            else if (rdofamily.SelectedItem == null)
            {
                lblfamily.Text = "!!";
            }
            else if (rdomanglepartner.SelectedItem == null)
            {
                lblmangalpartne.Text = "!!";

            }
            else
            {
                int updatepartner = PAdapter.Update(Session["username"].ToString(), Convert.ToInt32(drpfromage.SelectedItem.Text), Convert.ToInt32(drptoage.SelectedItem.Text), drpfromheight.SelectedItem.Text, drptoheight.SelectedItem.Text, drplocation.SelectedItem.Text, drpEdu.SelectedItem.Text, rdofamily.SelectedItem.Text, rdomanglepartner.SelectedItem.Text,txtaboutpartner.Text);

            }
        }
        catch (Exception)
        { 
        }
    }
    protected void lnkpersonall_Click(object sender, EventArgs e)
    {
        try
        {
            lblgender.Text = "";
            lblreligion.Text = "";
            lbldate.Text = "";
            MultiView1.ActiveViewIndex = 0;
        }
        catch (Exception)
        { 
        }   
    }
    protected void LNKEDUCATIONN_Click(object sender, EventArgs e)
    {
        try
        {
            lbleducation.Text = "";
            MultiView1.ActiveViewIndex = 1;
        }
        catch (Exception)
        { 
        }
    }
    protected void lnlotherr_Click(object sender, EventArgs e)
    {
        try
        {
            OtherClear();
            MultiView1.ActiveViewIndex = 2;
        }
        catch (Exception)
        { 
        
        }
    }
    protected void lnkaddessss_Click(object sender, EventArgs e)
    {
        lblcity.Text = "";
        MultiView1.ActiveViewIndex = 3;
    }
    protected void lnkpartnerr_Click(object sender, EventArgs e)
    {
        try
        {
            MultiView1.ActiveViewIndex = 4;
            lblage.Text = "";
            lblhight.Text = "";
            lbllocation.Text = "";
            lbledu.Text = "";
            lblfamily.Text = "";
            lblmangalpartne.Text = "";

            PDT = PAdapter.SelectByName(Session["username"].ToString());

            drpfromheight.Text = PDT.Rows[0]["HeightFrom"].ToString();
            drptoheight.Text = PDT.Rows[0]["Heightto"].ToString();
            drpfromage.Text = PDT.Rows[0]["AgeFrom"].ToString();
            drptoage.Text = PDT.Rows[0]["AgeTo"].ToString();
            drplocation.Text = PDT.Rows[0]["location"].ToString();
            drpEdu.Text = PDT.Rows[0]["education"].ToString();
            rdofamily.Text = PDT.Rows[0]["familytype"].ToString();
            rdomanglepartner.Text = PDT.Rows[0]["mangal"].ToString();
            txtaboutpartner.Text = PDT.Rows[0]["Aboutpartner"].ToString();
        }
        catch (Exception)
        { }
    }
}
