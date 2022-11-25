using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Upgrade : System.Web.UI.Page
{
    Registration_DS.LOGIN_SELECTDataTable LDT = new Registration_DS.LOGIN_SELECTDataTable();
    Registration_DSTableAdapters.LOGIN_SELECTTableAdapter LAdapter = new Registration_DSTableAdapters.LOGIN_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        int update = 0;
        if (Session["abc"].ToString() == "User")
        {           
            LDT = LAdapter.SelectLoginByUserID(Convert.ToInt32(Session["userid"].ToString()));

            if (LDT.Rows[0]["personal"].ToString() == "1")
            {
                LinkButton1.Enabled = false;
                LinkButton1.ForeColor = Color.Green;
                //update = 1;
            }
            else
            {
                LinkButton1.Enabled = true;
                LinkButton1.ForeColor = Color.Maroon;
                update = 1;
            }

            if (LDT.Rows[0]["Education"].ToString() == "1")
            {
                LinkButton2.Enabled = false;
                LinkButton2.ForeColor = Color.Green;
               // update = 1;
            }
            else
            {
                LinkButton2.Enabled = true;
                LinkButton2.ForeColor = Color.Maroon;
                update = 1;
            }

            if (LDT.Rows[0]["other"].ToString() == "1")
            {
                LinkButton3.Enabled = false;
                LinkButton3.ForeColor = Color.Green;
                //update = 1;
            }
            else
            {
                LinkButton3.Enabled = true;
                LinkButton3.ForeColor = Color.Maroon;
                update = 1;

            }

            if (update == 0)
            {
                btnupgrade.Enabled = true;

            }
            else
            {
                btnupgrade.Enabled = false;
            }
        }
    }
    protected void btnupgrade_Click(object sender, EventArgs e)
    {
        LAdapter.LOGIN_UPDATE_STATUS(Convert.ToInt32(Session["userid"].ToString()), 1);
        lblmsg.Text = "Success! Your Account Has Been Upgraded";
        Session["plan"] = 1;
    }
}