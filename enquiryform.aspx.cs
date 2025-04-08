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
using ConDbLib;

public partial class WebSite_enquiryform : System.Web.UI.Page
{
    string unam="";
    string hotel="";
    protected void Page_Load(object sender, EventArgs e)
    {
        string log = Request.QueryString["log"];
        unam = Request.QueryString["unam"];
        hotel = Request.QueryString["hotel"];
       
        if (log == "ok")
        {
            l3.Text = unam;
            lik.Visible = true;
            set1.Visible = true;

        }
        else
        {
            lik.Visible = false;
            set1.Visible = false;
        }
    }   
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx?log=ok&unam=" + unam + "");
}
    
}