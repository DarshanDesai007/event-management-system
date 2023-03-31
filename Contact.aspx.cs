using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("kjlmona19@gmail.com");
        mail.To.Add(TextBox2.Text);
        mail.Body=TextBox3.Text;
        mail.Subject="Contact Detail";
        SmtpClient smtp=new SmtpClient("smtp.gmail.com",587);
        smtp.Credentials=new System.Net.NetworkCredential("kjlmona19","kjlmonaportal");
        smtp.EnableSsl=true;
        smtp.Send(mail);
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your MAIL Has Been Sent...')</script>");
             
    }
}