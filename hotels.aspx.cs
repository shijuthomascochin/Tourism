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

public partial class WebSite_hotels : System.Web.UI.Page
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
        

       // string str = "update hotel_details set adm_id='" + e.NewValues[1] + "',htl_name='" + e.NewValues[2] + "',htl_location='" + e.NewValues[3] + "',htl_district='" + e.NewValues[4] + "',htl_star='" + e.NewValues[5] + "',htl_phone=" + e.NewValues[6] + ",htl_mobile=" + e.NewValues[7] + ",htl_fax=" + e.NewValues[8] + ",htl_website='" + e.NewValues[9] + "',htl_email='" + e.NewValues[10] + "',htl_description='" + e.NewValues[11] + "' where htl_id='" + e.Keys[0].ToString()+ "'";
        SDS1.UpdateCommand = "update hotel_details set adm_id='" + e.NewValues[1] + "',htl_name='" + e.NewValues[2] + "',htl_location='" + e.NewValues[3] + "',htl_district='" + e.NewValues[4] + "',htl_star='" + e.NewValues[5] + "',htl_phone=" + e.NewValues[6] + ",htl_mobile=" + e.NewValues[7] + ",htl_fax=" + e.NewValues[8] + ",htl_website='" + e.NewValues[9] + "',htl_email='" + e.NewValues[10] + "',htl_description='" + e.NewValues[11] + "' where htl_id='" + e.Keys[0].ToString()+"'";
      //  Response.Write("update hotel_details set adm_id='" + e.NewValues[1] + "',htl_name='" + e.NewValues[2] + "',htl_location='" + e.NewValues[3] + "',htl_district='" + e.NewValues[4] + "',htl_star='" + e.NewValues[5] + "',htl_phone=" + e.NewValues[6] + ",htl_mobile=" + e.NewValues[7] + ",htl_fax=" + e.NewValues[8] + ",htl_website='" + e.NewValues[9] + "',htl_email='" + e.NewValues[10] + "',htl_description='" + e.NewValues[11] + "' where htl_id='" + e.NewValues[0].ToString() + "'");
        SDS1.Update();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SDS1.DeleteCommand = "delete from hotel_details where htl_id='" + e.Keys[0] + "'";
       // Response.Write("delete from hotel_details where htl_id='" + e.Keys[0] + "'");
        SDS1.Delete();
    }
}
