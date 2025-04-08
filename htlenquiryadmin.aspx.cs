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

public partial class WebSite_enquiries : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SDS3.DeleteCommand="delete from User_Enquiry where usr_id='"+e.Keys[0]+"'";
    }
}
