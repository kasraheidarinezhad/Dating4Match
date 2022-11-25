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

public partial class FPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btncontactus_Click(object sender, EventArgs e)
    {
        try
        {
            MaintainScrollPositionOnPostBack = true;
            if (drpCity.SelectedIndex == 0)
            {
                lblmsg.Text = "Select Proper City !!";
            }
            else
            {
                Registration_DS.REGI_SELECTDataTable RegDT = new Registration_DS.REGI_SELECTDataTable();
                Registration_DSTableAdapters.REGI_SELECTTableAdapter RegAdapter = new Registration_DSTableAdapters.REGI_SELECTTableAdapter();

                RegDT = RegAdapter.ForgotPassword(drpCity.SelectedItem.Text, txtemail.Text);

                if (RegDT.Rows.Count == 1)
                {

                    string pass = RegDT.Rows[0]["Password"].ToString();
                    lblmsg.Text = "Password Sent Successfully on your Email !!";
                
                }
                else if (RegDT.Rows.Count == 0)
                {
                    lblmsg.Text = "Wrong Email OR City Name !!";
                
                }

            }
        }
        catch (Exception)
        {

        }
    }
}
