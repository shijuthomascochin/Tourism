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

public partial class WebSite_packageadmin : System.Web.UI.Page
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
        SDS1.UpdateCommand = "update Hotel_Package set adm_id='" + e.NewValues[1] + "',htl_id='" + e.NewValues[2] + "',pak_days=" + e.NewValues[3] + ",pak_nights=" + e.NewValues[4] + ",pak_no_ppl=" + e.NewValues[5] + ",pak_rate=" + e.NewValues[6] + ",pak_description='" + e.NewValues[1] + "' where pak_id='" + e.OldValues[0] + "'";
        SDS1.Update();
    }
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        SDS1.DeleteCommand = "delete from Hotel_Package where pak_id='" + e.Values[0] + "'";
        SDS1.Delete();
    }
}
