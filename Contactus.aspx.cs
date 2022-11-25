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
using System.Net.Mail;

public partial class Contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btncontactus_Click(object sender, EventArgs e)
    {
        MailMessage message = new MailMessage();
        MailAddress fromAddress = new MailAddress("meeramatrimonial@yahoo.in", txtname.Text);
        message.From = fromAddress;
        message.To.Add("contact@meeramatrimonial.com");

        message.Subject = "Contact us";
        message.IsBodyHtml = false;
        message.Body = "My Name is " + txtname.Text + Environment.NewLine + "My Contact No is " + txtmobile.Text + Environment.NewLine + "My Email Address is " + txtemail.Text + Environment.NewLine + "Message About :- " + txtmessage.Text;


        SmtpClient sc = new SmtpClient();
        sc.Host = "smtp.gmail.com";
        sc.Port = 587;
        sc.Credentials = new System.Net.NetworkCredential("demo78910@gmail.com", "12345678910");
        sc.EnableSsl = true;
        sc.DeliveryMethod = SmtpDeliveryMethod.Network;
        sc.Send(message);
        lblstatus.Text = "Thank you for Contact us.";

    }
}
