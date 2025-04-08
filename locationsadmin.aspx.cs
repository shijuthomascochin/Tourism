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

public partial class WebSite_locations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
            GridView3.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminpage.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        GridView2.Visible = false;
        GridView3.Visible = false;
        GridView1.DataBind();
        GridView1.Visible = true;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView3.Visible = false;
        GridView2.DataBind();
        GridView2.Visible = true;
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = false;
        GridView3.DataBind();
        GridView3.Visible = true;
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminpage.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("addlocation.aspx");

    }
    protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SDS1.DeleteCommand = "delete from Location_Details where location_name='" + e.Keys[0] + "'";
       // Response.Write("delete from Location_Details where location_name='" + e.Keys[0] + "'");
        SDS1.Delete();
    }
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SDS1.UpdateCommand = "update Location_Details set location_description='" + e.NewValues[1] + "',location_route='" + e.NewValues[2] + "' where location_name='" + e.NewValues[0] + "'";
       // Response.Write("update Location_Details set location_description='" + e.NewValues[1] + "',location_route='" + e.NewValues[2] + "' where location_name='" + e.NewValues[0] + "'");
        SDS1.Update();
    }
}