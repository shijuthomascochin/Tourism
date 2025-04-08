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

public partial class WebSite_addlocation : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("locationsadmin.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        CDatabase objdb = new CDatabase();
        string str = "";
        try
        {
            objdb.OpenConnection();
            objdb.nonselectquery("insert into Location_Details values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "')");
            if (objdb.Error == null)
            {
                str = "Successfully Added ";
            }
            else
            {

                str = "Unknown Error";
            }
        }
        catch (Exception)
        {
            str = "Unknown Error";
        }
        
        l1.Text = str;
        objdb.close();
        t1.Text = "";
       t2.Text="";
        t3.Text = "";
        
    }
}

