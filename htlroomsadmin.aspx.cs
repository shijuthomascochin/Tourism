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

public partial class WebSite_viewrooms : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            DataTable dt = new DataTable();
            CDatabase objdb = new CDatabase();
            DDL1.Items.Add("Select Htl ID");
            try
            {
                objdb.OpenConnection();
                dt = objdb.getRecord("select htl_id from Hotel_Details where adm_id= '" + Session["hoteladmin"].ToString() + "'");
                foreach (DataRow dr in dt.Rows)
                {
                    DDL1.Items.Add(dr[0].ToString());
                }
                objdb.close();
            }
            catch (Exception)
            {
            }
        }
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        GridView1.DataBind();
        GridView1.Visible = true;
        GridView2.Visible = false;
        GridView3.Visible = false;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("addrooms.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        GridView2.DataBind();
        GridView2.Visible = true;
        GridView1.Visible = false;
        GridView3.Visible = false;
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        GridView3.DataBind();
        GridView3.Visible = true;
        GridView1.Visible = false;
        GridView2.Visible = false;
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("htladminpage.aspx");
    }
    protected void DDL1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
        GridView2.DataBind();
        GridView3.DataBind();
    }
    protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SDS1.DeleteCommand = "delete from Hotel_Room_Details where room_id='" + e.Values[0] + "'";
        SDS1.Delete();
    }
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SDS1.UpdateCommand="update Hotel_Room_Details set room_type='"+e.NewValues[1]+"',room_rate='"+ e.NewValues[2]+"',room_description='"+ e.NewValues[3]+"' where room_id='"+ e.OldValues[0]+"'";
      // Response.Write("update Hotel_Room_Details set room_type='" + e.NewValues[1] + "',room_rate='" + e.NewValues[2] + "',room_description='" + e.NewValues[3] + "' where room_id='" + e.OldValues[0] + "'");
        SDS1.Update();
    }
}
