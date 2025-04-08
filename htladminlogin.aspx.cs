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

public partial class WebSite_htladminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        CDatabase objdb = new CDatabase();
        try
        {
            objdb.OpenConnection();

            dt = objdb.getRecord("select adm_passwd from Admin_Hotel where adm_id= '" + t1.Text + "'");
            foreach (DataRow dr in dt.Rows)
            {

                if (dr["adm_passwd"].ToString().Trim().Equals(t2.Text))
                {
                    Session["hoteladmin"] = t1.Text;
                    Response.Redirect("htladminpage.aspx");
                }
                else
                {
                    l1.Text = "User id or password do not match";
                }
            }
            l1.Text = "User id or password do not match";
        }
        catch (Exception)
        {
            l1.Text = objdb.Error;
        }
        objdb.close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}
