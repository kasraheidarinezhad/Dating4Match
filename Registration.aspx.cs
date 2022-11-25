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

public partial class Registraion : System.Web.UI.Page
{
    Registration_DS.REGI_SELECTDataTable RegDT = new Registration_DS.REGI_SELECTDataTable();
    Registration_DSTableAdapters.REGI_SELECTTableAdapter RegAdapter = new Registration_DSTableAdapters.REGI_SELECTTableAdapter();

    Registration_DSTableAdapters.PARTNER_SELECTTableAdapter PAdapter = new Registration_DSTableAdapters.PARTNER_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            MaintainScrollPositionOnPostBack = true;
        if (Page.IsPostBack == false)
        {
            MultiView1.ActiveViewIndex = 0;

            RegDT = RegAdapter.SelectAdvertise(1);
            dlistadv.DataSource = RegDT;
            dlistadv.DataBind();
        }
    }
    catch (Exception)
    { }
    }
    protected void lnknext_Click(object sender, EventArgs e)
    {
        
    }
    protected void lnknexttologin_Click(object sender, EventArgs e)
    {
       

    }
    protected void lnkpartner_Click(object sender, EventArgs e)
    {
       
   

    }
    protected void btnregistration_Click(object sender, EventArgs e)
    {
        try
        {
            lblavilable.Text = "";
            lbllogin.Text = "";


             RegDT = RegAdapter.SelectRegistration();
             int username = 0;
             if (RegDT.Rows.Count > 0)
             {
                 
                 for (int i = 0; i < RegDT.Rows.Count; i++)
                 {
                     if (txtuname.Text == RegDT.Rows[i]["username"].ToString())
                     {
                         lbllogin.Text = "Username already exist !!";
                         username = 1;
                         break;
                     }
                 }
             }

             if (txtupass.Text.Length < 5)
             {
                 username = 1;
                 lbllogin.Text = "Password must be more than 5 character.!";
             }

            if(txtupass.Text!=txtupassconfirm.Text)
            {
                username = 1;
                lbllogin.Text = "password not same.!";
            }
            
             if (username == 0)
             {


                 DateTime dob = Convert.ToDateTime(drpDD.SelectedItem.Text + " " + drpMM.SelectedItem.Text + " " + drpYYYY.SelectedItem.Text);

                 int currentyear = Convert.ToInt32(DateTime.Today.Year.ToString());
                 int AGE = currentyear - Convert.ToInt32(drpYYYY.SelectedItem.Text);


                 

                 string img = "";
                     if (drpgender.SelectedItem.Text == "MALE")
                     {
                         img= "~/Profileimg/boys.jpg";
                     }
                     else
                     {
                         img = "~/Profileimg/girls.jpg";
                     }

                     if (rdomember.SelectedIndex == 0)
                     {

                        // String PID = drpCity.SelectedItem.Text.Substring(0, 2).ToUpper();

                         int insertdetail = RegAdapter.Insert("MM", txtfname.Text, txtmname.Text, txtlname.Text, drpgender.SelectedItem.Text, dob, AGE, txtemail.Text,
                          txtadd1.Text, txtadd2.Text, drpCity.SelectedItem.Text, txtdist.Text, txtpincode.Text, txtmobile.Text, txtareacode.Text,
                          txtlandline.Text, drpReligion.SelectedItem.Text, txtsubcast.Text, rdoftype.SelectedItem.Text, 0, txtuname.Text, txtupass.Text, img);
                     }
                     else if(rdomember.SelectedIndex == 1)
                     {
                         
                         int insertdetail = RegAdapter.Insert("VT", txtfname.Text, txtmname.Text, txtlname.Text, drpgender.SelectedItem.Text, dob, AGE, txtemail.Text,
                            txtadd1.Text, txtadd2.Text, drpCity.SelectedItem.Text, txtdist.Text, txtpincode.Text, txtmobile.Text, txtareacode.Text,
                            txtlandline.Text, drpReligion.SelectedItem.Text, txtsubcast.Text, rdoftype.SelectedItem.Text, 0, txtuname.Text, txtupass.Text, img);
                            
                     }
                    int partnerinsert = PAdapter.Insert(txtuname.Text, Convert.ToInt32(drpfromage.SelectedItem.Text), Convert.ToInt32(drptoage.SelectedItem.Text), drpfromheight.SelectedItem.Text, drptoheight.SelectedItem.Text, drplocation.SelectedItem.Text, drpeducation.SelectedItem.Text, rdofamily.SelectedItem.Text, rdomangal.SelectedItem.Text);


              
                 lblregistration.Text = "Registration done Successfully, After Confirmation we will activate your Account Soon.!";
                 TextboxClear();
              
             }
         }
         catch (Exception a)
         {
             lblregistration.Text = a.Message.ToString();
         }
    }
    private void TextboxClear()
    {
        txtfname.Text = "";
        txtmname.Text = "";
        txtlname.Text = "";
        drpgender.Text = "SELECT";
        drpMM.Text = "MM";
        drpDD.Text = "DD";
        drpYYYY.Text = "YYYY";
        txtemail.Text = "";
        txtadd1.Text = "";
        txtadd2.Text = "";
        drpCity.Text = "SELECT";
        txtdist.Text = "";
        txtpincode.Text = "";
        txtmobile.Text = "";
        txtareacode.Text = "";
        txtlandline.Text = "";
        drpReligion.Text = "SELECT";
        txtsubcast.Text = "";
        txtuname.Text = "";
        txtupass.Text = "";
        drpeducation.Text = "SELECT";
        drplocation.Text = "SELECT";
        drpfromage.Text = "AGE";
        drptoage.Text = "AGE";
        drpfromheight.Text = "SELECT";
        drptoheight.Text = "SELECT";
        txtupassconfirm.Text = "";
    }
    protected void btnnext_Click(object sender, EventArgs e)
    {
        try
        {
            lblgender.Text = "";
            lblreligion.Text = "";
            lbldate.Text = "";
            lblpersonalerror.Text = "";

            if (rdomember.SelectedItem == null)
            {
                lblpersonalerror.Text = "Select membership Plan first!!";
            }

            else if (drpgender.Text == "SELECT")
            {
                lblgender.Text = "!!";
            }
           
            else if (drpDD.Text == "DD" || drpMM.Text == "MM" || drpYYYY.Text == "YYYY")
            {
                lbldate.Text = "!!";
            }
            
            else if (drpMM.SelectedIndex==2 && drpDD.SelectedIndex >29)
            {
                
                    lbldate.Text = "!!";
                
            }
            else if (drpReligion.Text == "SELECT")
            {
                lblreligion.Text = "!!";
            }
            else if (rdoftype.SelectedItem == null)
            {
                lblftype.Text = "!!";
            }
            else
            {
                RegDT = RegAdapter.SelectRegistration();
                if (RegDT.Rows.Count > 0)
                {
                    int emailmobile = 0;
                    for (int i = 0; i < RegDT.Rows.Count; i++)
                    {
                        if (txtemail.Text == RegDT.Rows[i]["email"].ToString())
                        {
                            lblpersonalerror.Text = "email already exist !!";
                            emailmobile = 1;
                            break;
                        }

                    }
                    if (emailmobile == 0)
                    {
                        for (int m = 0; m < RegDT.Rows.Count; m++)
                        {
                            if (txtmobile.Text == RegDT.Rows[m]["mobile"].ToString())
                            {
                                lblpersonalerror.Text = "mobile no already exist !!";
                                emailmobile = 1;
                                break;
                            }

                        }
                    }
                    if (emailmobile == 0)
                    {
                        if (rdomember.SelectedIndex == 0)
                        {
                            MultiView1.ActiveViewIndex = 1;
                            txtadd1.Focus();
                        }
                        else
                        {
                            MultiView1.ActiveViewIndex = 2;
                            drpfromage.Focus();
                        }
                    }

                }
                else
                {
                    if (rdomember.SelectedIndex == 0)
                    {
                        MultiView1.ActiveViewIndex = 1;
                    }
                    else
                    {
                        MultiView1.ActiveViewIndex = 2;
                    }

                   
                }
            }
        }

        catch (Exception a)
        {
            lbl.Text = a.Message;
        }

    }
    protected void btnaddress_Click(object sender, EventArgs e)
    {
        try{
        lblcity.Text = "";
        if (drpCity.Text == "SELECT")
        {
            lblcity.Text = "!!";
        }
        else
        {
            MultiView1.ActiveViewIndex = 2;
            drpfromage.Focus();
        }
    }
    catch (Exception)
    { }

    }
  

    protected void btnpartner_Click(object sender, EventArgs e)
    {
        try
        {
            lblavilable.Text = "";
            lblage.Text = "";
            lblhight.Text = "";
            lbllocation.Text = "";
            lbleducation.Text = "";
            lblfamily.Text = "";
            lblmangal.Text = "";

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
            else if (drpeducation.Text == "SELECT")
            {
                lbleducation.Text = "!!";
            }
            else if (rdofamily.SelectedItem == null)
            {
                lblfamily.Text = "!!";
            }
            else if (rdomangal.SelectedItem == null)
            {
                lblmangal.Text = "!!";

            }
            else
            {

                MultiView1.ActiveViewIndex = 3;
                txtuname.Focus();
            }
        }
        catch (Exception)
        { 
        
        }
    }


    protected void rdomember_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rdomember.SelectedIndex == 0)
        {
            //pnlfree.Visible = true;
           // pnlpremium.Visible = false;
        }
        else if(rdomember.SelectedIndex==1)
        {
            //pnlpremium.Visible = true;
            //pnlfree.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void dlistadv_ItemCommand(object source, DataListCommandEventArgs e)
    {
       
    }
    protected void btnback1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnback2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void btnback3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void txtuname_TextChanged(object sender, EventArgs e)
    {
        try
        {
            RegDT = RegAdapter.SelectByUserName(txtuname.Text);

            if (RegDT.Rows.Count > 0)
            {
                lblavilable.ForeColor = System.Drawing.Color.Maroon;
                lblavilable.Text = "Username already taken !!";
                txtuname.Focus();
            }
            else
            {
                
                lblavilable.ForeColor = System.Drawing.Color.DarkGreen;
                lblavilable.Text = "Username is available.";
                txtupass.Focus();
            }

        }
        catch (Exception)
        { 
        
        }

    }
}
