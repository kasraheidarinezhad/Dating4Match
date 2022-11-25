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

public partial class Home : System.Web.UI.MasterPage
{
    Registration_DS.REGI_SELECTDataTable RegDT = new Registration_DS.REGI_SELECTDataTable();
    Registration_DSTableAdapters.REGI_SELECTTableAdapter RegAdapter = new Registration_DSTableAdapters.REGI_SELECTTableAdapter();

    Registration_DSTableAdapters.LOGIN_SELECTTableAdapter LoginAdapter = new Registration_DSTableAdapters.LOGIN_SELECTTableAdapter();
    Registration_DS.LOGIN_SELECTDataTable LDT = new Registration_DS.LOGIN_SELECTDataTable();

    //Account_DS.ACCOUNT_SELECTDataTable AccDT = new Account_DS.ACCOUNT_SELECTDataTable();
    //Account_DSTableAdapters.ACCOUNT_SELECTTableAdapter AccAdapter = new Account_DSTableAdapters.ACCOUNT_SELECTTableAdapter();

    Count_DS.COUNTMST_SELECTDataTable CntDT = new Count_DS.COUNTMST_SELECTDataTable();
    Count_DSTableAdapters.COUNTMST_SELECTTableAdapter CntAdapter = new Count_DSTableAdapters.COUNTMST_SELECTTableAdapter();

   
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            txtuname.Focus();          
            if (Page.IsPostBack == false)
            {
                drpageto.Text = "27";

                if (Session["a"] != null || Session["b"] != null || Session["c"] != null)
                {
                    rdosearch.SelectedValue = Session["a"].ToString();
                    drpagefrom.Text = Session["b"].ToString();
                    drpageto.Text = Session["c"].ToString();
                    //drpeducation.Text = Session["d"].ToString();
                    //drplocation.Text = Session["e"].ToString();
                }

                RegDT = RegAdapter.SelectAdvertise(1);
                dlistadv.DataSource = RegDT;
                dlistadv.DataBind();

            }
        }
        catch (Exception)
        { }
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            lbllogin.Text = "";
          //  int login = 0;
            if (txtuname.Text == "")
            {
                lbllogin.Text = "username !!";
            }
            else if (txtupass.Text == "")
            {
                lbllogin.Text = "password !!";
            }
            else
            {
                RegDT = RegAdapter.Select_For_Login(txtuname.Text, txtupass.Text);


                if (RegDT.Rows.Count == 1)
                {

                    LDT = LoginAdapter.SelectLoginByUserID(Convert.ToInt32(RegDT.Rows[0]["uid"].ToString()));
                    Session["status"] = RegDT.Rows[0]["status"].ToString();


                    if (RegDT.Rows[0]["status"].ToString() == "0" || RegDT.Rows[0]["status"].ToString() == "2")
                    {
                        lbllogin.Text = "Wait for Activation!!";
                    }
                    else
                    {
                        if (RegDT.Rows[0]["status"].ToString() == "1")
                        {
                            Session["abc"] = "User";
                        }
                        else if (RegDT.Rows[0]["status"].ToString() == "5")
                        {
                            Session["abc"] = "Visitor";
                        }

                        else if (RegDT.Rows[0]["status"].ToString() == "11")
                        {
                            Session["abc"] = "Engage";

                        }

                        Session["userid"] = RegDT.Rows[0]["uid"].ToString();
                        Session["username"] = RegDT.Rows[0]["username"].ToString();
                        Session["fname"] = RegDT.Rows[0]["fname"].ToString();
                        Session["lname"] = RegDT.Rows[0]["lname"].ToString();
                        Session["sex"] = RegDT.Rows[0]["gender"].ToString();
                        Session["img"] = RegDT.Rows[0]["image"].ToString();

                        Session["plan"] = LDT.Rows[0]["Status"].ToString();
                        LoginAdapter.UpdateLoginCount(Convert.ToInt16(Session["userid"].ToString()));


                        Response.Redirect("Main.aspx");

                        //if (RegDT.Rows[0]["status"].ToString() == "2" || RegDT.Rows[0]["status"].ToString() == "0")
                        //{
                        //    lbllogin.Text = "Wait for Activation!!";

                        //}
                        //else
                        //{
                        //    Response.Redirect("Main.aspx");
                        //}
                    }   
                }
                else
                {
                    lbllogin.Text = "Invalid Credential";

                }
                
            }





            //    RegDT = RegAdapter.SelectRegistration();

            //    for (int i = 0; i < RegDT.Rows.Count; i++)
            //    {
            //        if (txtuname.Text.ToLower() == RegDT.Rows[i]["username"].ToString().ToLower() && txtupass.Text == RegDT.Rows[i]["Password"].ToString())
            //        {
            //            Session["status"] = RegDT.Rows[i]["status"].ToString();
            //            AccDT = AccAdapter.SelectBYID(Convert.ToInt32(RegDT.Rows[i]["uid"].ToString()));
            //            LDT = LoginAdapter.SelectLoginByUserID(Convert.ToInt32(RegDT.Rows[i]["uid"].ToString()));

            //            if (RegDT.Rows[i]["status"].ToString() == "1" || RegDT.Rows[i]["status"].ToString() == "5" || RegDT.Rows[i]["status"].ToString() == "0" || RegDT.Rows[i]["status"].ToString() == "11")
            //            {
            //                if (RegDT.Rows[i]["status"].ToString() == "1")
            //                {
            //                    Session["abc"] = "User";
            //                }
            //                else if (RegDT.Rows[i]["status"].ToString() == "5")
            //                {
            //                   Session["abc"] = "Visitor";
            //                    //Session["abc"] = "User";
            //                }
            //                else if (RegDT.Rows[i]["status"].ToString() == "0")
            //                {
            //                    Session["abc"] = "New";
            //                    //Session["abc"] = "User";
            //                }
            //                else if (RegDT.Rows[i]["status"].ToString() == "11")
            //                {
            //                    Session["abc"] = "Engage";

            //                }
            //                //else if (RegDT.Rows[i]["status"].ToString() == "20")
            //                //{
            //                //    Session["abc"] = "SkEngage";

            //                //}


            //                Session["userid"] = RegDT.Rows[i]["uid"].ToString();
            //                Session["username"] = RegDT.Rows[i]["username"].ToString();
            //                Session["fname"] = RegDT.Rows[i]["fname"].ToString();
            //                Session["lname"] = RegDT.Rows[i]["lname"].ToString();
            //                Session["sex"] = RegDT.Rows[i]["gender"].ToString();
            //                Session["img"] = RegDT.Rows[i]["image"].ToString();


            //                //Session["plan"] = AccDT.Rows[0]["PlanName"].ToString();
            //                Session["planstatus"] = AccDT.Rows[0]["status"].ToString();

            //                Session["plan"] = LDT.Rows[0]["Status"].ToString();

            //                Session["startDate"] = Convert.ToDateTime(AccDT.Rows[0]["startdate"].ToString()).GetDateTimeFormats()[6].ToString();
            //                Session["planEnd"] = Convert.ToDateTime(AccDT.Rows[0]["EndDate"].ToString()).GetDateTimeFormats()[6].ToString();

            //               //update login count
            //                LoginAdapter.UpdateLoginCount(Convert.ToInt16(Session["userid"].ToString()));


            //                ///hide 2018/////CntDT = CntAdapter.selectcountbyID(Convert.ToInt32(Session["userid"].ToString()));
            //                ////////if (CntDT.Rows.Count > 0)
            //                ////////{

            //                ////////    CntAdapter.CountMstLoginCountUpdate(Convert.ToInt32(Session["userid"].ToString()));
            //                //////2018//}


            //                //check leftdays of active palne
            //                // Session["LeftDays"] = AccDT.Rows[0]["LeftDays"].ToString();

            //                // DateTime DDate = Convert.ToDateTime(AccDT.Rows[0]["EndDate"].ToString()).Date;

            //              //  DateTime Enddate=Convert.ToDateTime(AccDT.Rows[0]["EndDate"].ToString());
            //               // DateTime StartDate=Convert.ToDateTime(AccDT.Rows[0]["startdate"].ToString());

            //                //int Leftdays = Enddate.DayOfYear - System.DateTime.Now.DayOfYear;
            //                //if (Leftdays < 0)
            //               // {
            //               //     Leftdays = 0;
            //               // }
            //               // AccAdapter.PLAN_CHECK_LEFTDAYS(Leftdays, Convert.ToInt32(Session["userid"].ToString()));

            //                //string Day = Convert.ToDateTime(AccDT.Rows[0]["EndDate"].ToString()) + Convert.ToDateTime(D);
            //                //- Convert.ToDateTime(System.DateTime.Now);
            //                Response.Redirect("Main.aspx");                         


            //            }
            //            else
            //            {
            //                if (Session["status"].ToString() == "2")
            //                {
            //                    lbllogin.Text = "Account is InActive!!";
            //                    login = 1;
            //                    break;
            //                }
            //                else
            //                {
            //                    lbllogin.Text = "Wait for Activation !!";
            //                    login = 1;
            //                    break;
            //                }
            //            }
            //        }

            //    }
            //    if (login == 0)
            //    {
            //        lbllogin.Text = "Invalid Credential";
            //    }
            //}
        }
        catch (Exception a)
        {
            lbllogin.Text = a.Message;
        }
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
            else
            {

                Session["a"] = rdosearch.SelectedValue;
                Session["b"] = drpagefrom.SelectedItem.Text;
                Session["c"] = drpageto.SelectedItem.Text;
                // Session["d"] = drpeducation.SelectedItem.Text;
                //  Session["e"] = drplocation.SelectedItem.Text;
                Response.Redirect("Search.aspx");
                //Response.Redirect("Search.aspx?a=" + drpsearch.SelectedValue + "&b=" + drpagefrom.SelectedItem.Text + "&c=" + drpageto.SelectedItem.Text + "&d=" + drpeducation.SelectedItem.Text + "&e=" + drplocation.SelectedItem.Text);

                //SimpleDT = SimpleAdapter.SelectSimpleSearch(drpsearch.SelectedValue, Convert.ToInt32(drpagefrom.SelectedItem.Text), Convert.ToInt32(drpageto.SelectedItem.Text), drpeducation.SelectedItem.Text, drplocation.SelectedItem.Text);
                //if (SimpleDT.Rows.Count > 0)
                //{
                //    listsearch.DataSource = SimpleDT;
                //    listsearch.DataBind();
                //}
            }
        }
        catch (Exception)
        { }
    }
    protected void dlistadv_ItemCommand(object source, DataListCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "View")
            {

                // Session["viewid"] = dlistadv.DataKeys[e.Item.ItemIndex].ToString();
               // Response.Redirect("registration.aspx");

                Session["viewid"] = dlistadv.DataKeys[e.Item.ItemIndex].ToString();
                Response.Redirect("UserView.aspx");

            }
        }
        catch (Exception a)
        { }
    }
}
