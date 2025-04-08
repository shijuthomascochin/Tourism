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

public partial class WebSite_chgpasswd : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (t2.Text == t3.Text)
        {
            DataTable dt = new DataTable();
            CDatabase objdb = new CDatabase();
            int ii = 0;
            string str;
            try
            {
                objdb.OpenConnection();
                dt = objdb.getRecord("select * from Admin_Tab where admin_passwd= '" + t1.Text + "'");
                foreach (DataRow dr in dt.Rows)
                {
                    ii = 1;
                }
                if (objdb.Error != null)
                {
                    str = "Unknown Error";
                }
                else if (ii == 1)
                {
                    objdb.nonselectquery("update Admin_Tab set admin_passwd='" + t2.Text + "'");
                    if (objdb.Error == null)
                    {
                        str = "Password successfully changed ";
                    }
                    else
                    {

                        str = "Unknown Error";
                    }
                }
                else
                {
                    str = "Invalid old password";
                }
            }
            catch (Exception)
            {
                str = "Unknown Error";
            }
            l1.Text = str;
            objdb.close();
        }
        else
        {
            l1.Text = "Passwords do not match";
        }
        t1.Text = "";
        t2.Text = "";
        t3.Text = "";
       
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        Response.Redirect("adminpage.aspx");
       
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}

