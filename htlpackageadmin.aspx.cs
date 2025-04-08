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
        GV1.Visible = false;
        GV2.Visible = false;

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        GV1.DataBind();
        GV1.Visible = true;

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        GV2.DataBind();
        GV2.Visible = true;
    }
    protected void SDS1_Deleting(object sender, SqlDataSourceCommandEventArgs e)
    {
        
    }
    protected void GV2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SDS1.DeleteCommand = "delete from Hotel_Package where pak_id='" + e.Values[0] + "'";
        SDS1.Delete();
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("htladminpage.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("addpackage.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("editpackage.aspx");
    }
    protected void GV1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GV2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
