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

public partial class WebSite_users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminpage.aspx");
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SDS1.UpdateCommand = "update User_Tab set usr_passwd='" + e.NewValues[1] + "',usr_name='" + e.NewValues[2] + "',usr_phone=" + e.NewValues[3] + ",usr_mobile=" + e.NewValues[4] + ",usr_email='" + e.NewValues[5] + "' where usr_id='" + e.OldValues[0] + "'";
        SDS1.Update();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SDS1.DeleteCommand="delete from User_Tab where usr_id='"+e.Values[0]+"'";
        SDS1.Delete();
    }
}
