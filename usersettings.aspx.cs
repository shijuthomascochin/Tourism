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

public partial class WebSite_usersettings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        set1.Visible = false;

        string log = Request.QueryString["log"];
        string unam = Request.QueryString["unam"];
        if (log == "ok")
        {
            l3.Text = unam;
            lik.Visible = true;
        }
        else
        {
            lik.Visible = false;
            set1.Visible = false;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SDS1.UpdateCommand="update User_Tab set usr_passwd='"+e.NewValues[0]+"',usr_name='"+e.NewValues[1]+"',usr_phone='"+e.NewValues[2]+"',usr_mobile='"+e.NewValues[3]+"',usr_email='"+e.NewValues[4]+"' where usr_id='"+Session["user"].ToString()+"'";
        
        SDS1.Update();
    }
}
