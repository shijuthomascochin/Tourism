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

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        t1.Text = "";
        t2.Text = "";
        t3.Text = "";
        t4.Text = "";
        t5.Text = "";
        t6.Text = "";
        t7.Text = "";

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (t1.Text != "admin")
        {
            DataTable dt = new DataTable();
            CDatabase objdb = new CDatabase();
            int ii = 0;
            string str="";
            try
            {

                objdb.OpenConnection();
                dt = objdb.getRecord("select * from User_Tab where usr_id= '" + t10.Text + "'");
                foreach (DataRow dr in dt.Rows)
                {
                    ii = 1;
                }
            }
            catch (Exception)
            {
                str = "Unknown Error";
            }
            if (objdb.Error != null)
            {
                str = "Unknown Error";
            }
            else if (ii == 0)
            {

                objdb.nonselectquery("insert into User_Tab values('" + t10.Text + "','" + t11.Text + "','" + t4.Text + "'," + t5.Text + "," + t6.Text + ",'" + t7.Text + "')");
                //Response.Write("insert into User_Tab values('" + t10.Text + "','" + t11.Text + "','" + t4.Text + "'," + t5.Text + "," + t6.Text + ",'" + t7.Text + "'))");

                if (objdb.Error == null)
                {
                    Response.Redirect("registered.aspx");
                }
                else
                {

                    str = "Unknown Error";
                }
            }
            else
            {
                str = "User id already exists";
            }
            l2.Text = str;
            objdb.close();
            t1.Text = "";
            t2.Text = "";
            t3.Text = "";
            t4.Text = "";
            t5.Text = "";
            t6.Text = "";
            t7.Text = "";
        }
        else
        {
            l2.Text ="Invalid user name";
        }

    }
    protected void btnLogin_Click(object sender, EventArgs e)
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

                        Response.Redirect("index.aspx?log=ok&unam=" + t1.Text + "");
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