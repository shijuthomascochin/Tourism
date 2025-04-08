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

public partial class WebSite_showhotels : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string log = Request.QueryString["log"];
        string unam = Request.QueryString["unam"];
        if (log == "ok")
        {
            l3.Text = unam;
            Label1.Visible = false;
            Label2.Visible = false;
            btnLogin.Visible = false;
            htladmin.Visible = false;
            reg.Visible = false;
            t1.Visible = false;
            t2.Visible = false;
        }
        else
        {
            lik.Visible = false;
            set1.Visible = false;
        }
    }
    protected void btnLogin_Click1(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        CDatabase objdb = new CDatabase();

        try
        {
            objdb.OpenConnection();
            if (t1.Text == "admin")
            {
                dt = objdb.getRecord("select admin_passwd from Admin_Tab where admin_userid= '" + t1.Text + "'");
                foreach (DataRow dr in dt.Rows)
                {

                    if (dr["admin_passwd"].ToString().Trim().Equals(t2.Text))
                    {
                        Session["admin"] = t1.Text;
                        Response.Redirect("adminpage.aspx");
                    }
                    else
                    {
                        l1.Text = "User id or password do not match";
                    }
                }

            }
            else
            {
                dt = objdb.getRecord("select usr_passwd from User_Tab where usr_id= '" + t1.Text + "'");
                foreach (DataRow dr in dt.Rows)
                {

                    if (dr["usr_passwd"].ToString().Trim().Equals(t2.Text))
                    {
                        Session["user"] = t1.Text;
                        Response.Redirect("home.aspx?log=ok&unam=" + t1.Text + "");
                    }
                    else
                    {
                        l1.Text = "User id or password do not match";
                    }
                }
            }
            l1.Text = "User id or password do not match";
        }
        catch (Exception)
        {
            Response.Write(objdb.Error);
        }
        objdb.close();
    }
}
