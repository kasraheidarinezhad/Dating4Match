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

public partial class Message : System.Web.UI.Page
   
{
    Msg_DS.MSGMST_SELECTDataTable MsgDT = new Msg_DS.MSGMST_SELECTDataTable();
    Msg_DSTableAdapters.MSGMST_SELECTTableAdapter MsgAdapter = new Msg_DSTableAdapters.MSGMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            MaintainScrollPositionOnPostBack = true;
            // MsgDT = MsgAdapter.SelectMsgInbox(Convert.ToInt32(Session["userid"].ToString()));
            MsgDT = MsgAdapter.SelectMsgUnread(Convert.ToInt32(Session["userid"].ToString()));
            if (MsgDT.Rows.Count > 0)
            {
                lblmsg.Text = "You have " + MsgDT.Rows.Count + " New Messages";

            }
            else
            {
                lblmsg.Text = "No New Messages !!";
            }
            GvMsg.DataSource = MsgDT;
            GvMsg.DataBind();


            if (Page.IsPostBack == false)
            {
                MultiView1.ActiveViewIndex = 0;
            }

            MsgDT = MsgAdapter.SelectMsgRead(Convert.ToInt32(Session["userid"].ToString()));
            lnkread.Text = MsgDT.Rows.Count + " Read Message";

            MsgDT = MsgAdapter.SelectMsgUnread(Convert.ToInt32(Session["userid"].ToString()));
            lnkunread.Text = MsgDT.Rows.Count + " UnRead Message";

            MsgDT = MsgAdapter.SelectMsgDeleted(Convert.ToInt32(Session["userid"].ToString()));
            lnkdeleted.Text = MsgDT.Rows.Count + " Delete Message";
        }
        catch (Exception)
        { }
    }

    private void BindMsg()
    {
        try
        {
            // MsgDT = MsgAdapter.SelectMsgInbox(Convert.ToInt32(Session["userid"].ToString()));
            MsgDT = MsgAdapter.SelectMsgUnread(Convert.ToInt32(Session["userid"].ToString()));

            GvMsg.DataSource = MsgDT;
            GvMsg.DataBind();
            MultiView1.ActiveViewIndex = 0;
        }
        catch (Exception)
        { }
    }
    protected void listmsg_ItemDataBound(object sender, DataListItemEventArgs e)
    {

      

    }


   
    protected void listmsg_DataBinding(object sender, EventArgs e)
    {

    }
    protected void listmsg_ItemCreated(object sender, DataListItemEventArgs e)
    {

    }
    protected void lnkread_Click(object sender, EventArgs e)
    {
        try
        {
            lblerror.Text = "";
            MsgDT = MsgAdapter.SelectMsgRead(Convert.ToInt32(Session["userid"].ToString()));

            GvRead.DataSource = MsgDT;
            GvRead.DataBind();
            MultiView1.ActiveViewIndex = 1;
        }
        catch (Exception)
        { }
    }
    protected void lnkunread_Click(object sender, EventArgs e)
    {
        try
        {
            lblerror.Text = "";
            //MsgDT = MsgAdapter.SelectMsgUnread(Convert.ToInt32(Session["userid"].ToString()));
            //listunread.DataSource = MsgDT;
            //listunread.DataBind();
            //MultiView1.ActiveViewIndex = 2;
            BindMsg();
            MultiView1.ActiveViewIndex = 0;
        }
        catch (Exception)
        { }
    }
    protected void lnkdeleted_Click(object sender, EventArgs e)
    {
        try
        {
            lblerror.Text = "";
            MsgDT = MsgAdapter.SelectMsgDeleted(Convert.ToInt32(Session["userid"].ToString()));

            GvDelete.DataSource = MsgDT;
            GvDelete.DataBind();
            MultiView1.ActiveViewIndex = 3;
        }
        catch (Exception)
        { } 
    }
    protected void GvMsg_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            lblerror.Text = "";
            if (e.CommandName == "View")
            {

                DataTable DT = new DataTable();
                DT = MsgAdapter.MsgSelectByID(Convert.ToInt32(e.CommandArgument));
                Session["viewid"] = DT.Rows[0]["MsgFrom"].ToString();

                Response.Redirect("user.aspx");
            }
            else if (e.CommandName == "Read")
            {
              //  if (Session["planstatus"].ToString() == "1" && Session["plan"].ToString() != "Free")
                    if (Session["plan"].ToString() == "1")
                {
                    MsgAdapter.SelectReadMessage(Convert.ToInt32(e.CommandArgument), Convert.ToInt32(Session["userid"].ToString()));

                    //BindMsg();
                    MsgDT = MsgAdapter.SelectMsgRead(Convert.ToInt32(Session["userid"].ToString()));

                    GvRead.DataSource = MsgDT;
                    GvRead.DataBind();
                    MultiView1.ActiveViewIndex = 1;
                    //MultiView1.ActiveViewIndex = 1;
                }
                else
                {
                    Response.Redirect("Upgrade.aspx");

                }

            }
            else if (e.CommandName == "Delet")
            {
                MsgAdapter.msgforDelete(Convert.ToInt32(e.CommandArgument), Convert.ToInt32(Session["userid"].ToString()));
                lblerror.Text = "Message Deleted Successfully.!!";

                //BindMsg();
                MsgDT = MsgAdapter.SelectMsgDeleted(Convert.ToInt32(Session["userid"].ToString()));

                GvDelete.DataSource = MsgDT;
                GvDelete.DataBind();
                MultiView1.ActiveViewIndex = 3;

            }
            MsgDT = MsgAdapter.SelectMsgRead(Convert.ToInt32(Session["userid"].ToString()));
            lnkread.Text = MsgDT.Rows.Count + " Read Message";

            MsgDT = MsgAdapter.SelectMsgUnread(Convert.ToInt32(Session["userid"].ToString()));
            lnkunread.Text = MsgDT.Rows.Count + " UnRead Message";

            MsgDT = MsgAdapter.SelectMsgDeleted(Convert.ToInt32(Session["userid"].ToString()));
            lnkdeleted.Text = MsgDT.Rows.Count + " Delete Message";

        }
        catch (Exception)
        { }

    }


    protected void GvRead_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try{
        if (e.CommandName == "View")
        {

            DataTable DT = new DataTable();
            DT = MsgAdapter.MsgSelectByID(Convert.ToInt32(e.CommandArgument));
            Session["viewid"] = DT.Rows[0]["MsgFrom"].ToString();

            Response.Redirect("user.aspx");
        }
        else if (e.CommandName == "Delet")
        {
          

            MsgAdapter.msgforDelete(Convert.ToInt32(e.CommandArgument), Convert.ToInt32(Session["userid"].ToString()));
            lblerror.Text = "Message Deleted Successfully.!!";

         

            MsgDT = MsgAdapter.SelectMsgRead(Convert.ToInt32(Session["userid"].ToString()));

            GvRead.DataSource = MsgDT;
            GvRead.DataBind();

            MultiView1.ActiveViewIndex = 1;

        }
        MsgDT = MsgAdapter.SelectMsgRead(Convert.ToInt32(Session["userid"].ToString()));
        lnkread.Text = MsgDT.Rows.Count + " Read Message";

        MsgDT = MsgAdapter.SelectMsgUnread(Convert.ToInt32(Session["userid"].ToString()));
        lnkunread.Text = MsgDT.Rows.Count + " UnRead Message";

        MsgDT = MsgAdapter.SelectMsgDeleted(Convert.ToInt32(Session["userid"].ToString()));
        lnkdeleted.Text = MsgDT.Rows.Count + " Delete Message";
    }
    catch (Exception)
    { }
    }
    protected void GvDelete_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            lblerror.Text = "";


            if (e.CommandName == "View")
            {

                DataTable DT = new DataTable();
                DT = MsgAdapter.MsgSelectByID(Convert.ToInt32(e.CommandArgument));
                Session["viewid"] = DT.Rows[0]["MsgFrom"].ToString();

                Response.Redirect("user.aspx");
            }
            else if (e.CommandName == "Read")
            {
                if (Session["plan"].ToString() == "1")
                {
                    MsgAdapter.SelectReadMessage(Convert.ToInt32(e.CommandArgument), Convert.ToInt32(Session["userid"].ToString()));
                 
                    MsgDT = MsgAdapter.SelectMsgRead(Convert.ToInt32(Session["userid"].ToString()));

                    GvRead.DataSource = MsgDT;
                    GvRead.DataBind();
                    MultiView1.ActiveViewIndex = 1;

                }
                else
                {
                    Response.Redirect("Upgrade.aspx");

                }
            }
            else if (e.CommandName == "Delet")
            {
                MsgAdapter.MsgDeletePermently(Convert.ToInt32(e.CommandArgument));

                lblerror.Text = "Message Deleted Permently.!!";
                MsgDT = MsgAdapter.SelectMsgDeleted(Convert.ToInt32(Session["userid"].ToString()));
                GvDelete.DataSource = MsgDT;
                GvDelete.DataBind();
                MultiView1.ActiveViewIndex = 3;

            }
            MsgDT = MsgAdapter.SelectMsgRead(Convert.ToInt32(Session["userid"].ToString()));
            lnkread.Text = MsgDT.Rows.Count + " Read Message";

            MsgDT = MsgAdapter.SelectMsgUnread(Convert.ToInt32(Session["userid"].ToString()));
            lnkunread.Text = MsgDT.Rows.Count + " UnRead Message";

            MsgDT = MsgAdapter.SelectMsgDeleted(Convert.ToInt32(Session["userid"].ToString()));
            lnkdeleted.Text = MsgDT.Rows.Count + " Delete Message";
        }
        catch (Exception)
        { }

    }
    protected void GvMsg_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {try{
        GvMsg.PageIndex = e.NewPageIndex;
        BindMsg();
    }
    catch (Exception)
    { }
    }
    protected void GvRead_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try{
        GvRead.PageIndex = e.NewPageIndex;
        MsgDT = MsgAdapter.SelectMsgRead(Convert.ToInt32(Session["userid"].ToString()));

        GvRead.DataSource = MsgDT;
        GvRead.DataBind();
        MultiView1.ActiveViewIndex = 1;
    }
    catch (Exception)
    { }
    }
    protected void GvDelete_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try{
        GvDelete.PageIndex = e.NewPageIndex;
        MsgDT = MsgAdapter.SelectMsgDeleted(Convert.ToInt32(Session["userid"].ToString()));

        GvDelete.DataSource = MsgDT;
        GvDelete.DataBind();
        MultiView1.ActiveViewIndex = 3;
    }
    catch (Exception)
    { }
    }
}