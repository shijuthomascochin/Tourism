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

public partial class WebSite_hoteladmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            GV1.Visible = false;
            GV2.Visible = false;
        }
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("htladminpage.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        GV2.Visible = false;
        GV1.DataBind();
        GV1.Visible = true;
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        GV1.Visible = false;
        GV2.DataBind();
        GV2.Visible = true;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("edithotels.aspx");
    }
    protected void SDS2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void GV3_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
    }
    protected void GV2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("addhotels.aspx");
    }
    protected void GV2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SDS1.DeleteCommand="delete from Hotel_Details where htl_id='"+e.Values[0]+"'";
        SDS1.Delete();
    }
}
