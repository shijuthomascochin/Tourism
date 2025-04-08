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

public partial class WebSite_showpackageuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string log = Request.QueryString["log"];
        string unam = Request.QueryString["unam"];
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
}
