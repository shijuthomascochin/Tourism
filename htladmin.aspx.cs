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

public partial class WebSite_htladmin : System.Web.UI.Page
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

        SDS1.UpdateCommand = "update Admin_Hotel set adm_name='" + e.NewValues[1] + "',adm_passwd='" + e.NewValues[2] + "',adm_address='" + e.NewValues[3] + "',adm_pincode=" + e.NewValues[4] + ",adm_phone=" + e.NewValues[5] + ",adm_mobile=" + e.NewValues[6] + " where adm_id='" + e.OldValues[0] + "'";
        SDS1.Update();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SDS1.DeleteCommand="delete from Admin_Hotel where adm_id='"+e.Values[0]+"'";
        SDS1.Delete();
    }
}
