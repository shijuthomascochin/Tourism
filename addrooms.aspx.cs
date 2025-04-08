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

public partial class WebSite_addrooms : System.Web.UI.Page
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

    protected void DDL1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        CDatabase objdb = new CDatabase();
        int ii = 0;
        string str;
        string adminnam = Session["hoteladmin"].ToString();

        try
        {

            objdb.OpenConnection();
            dt = objdb.getRecord("select * from Hotel_Room_Details where room_id= '" + t1.Text + "'");
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

            objdb.nonselectquery("insert into Hotel_Room_Details values('" + t1.Text + "','" + DDL1.SelectedValue + "','" + t3.Text + "'," + t4.Text + ",'" + t5.Text + "')");
            // Response.Write("insert into Hotel_Details values('" + t1.Text + "','" + adminnam + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + t5.Text + "','" + t6.Text + "'," + t7.Text + "," + t8.Text + "," + t9.Text + ",'" + t10.Text + "','" + t11.Text + "','" + t12.Text + "'))");

            if (objdb.Error == null)
            {
                str = "Successfully Added ";
            }
            else
            {

                str = "Unknown Error";
            }
        }
        else
        {
            str = "Room ID already exists";
        }
        l1.Text = str;
        objdb.close();
        t1.Text = "";

        t3.Text = "";
        t4.Text = "";
        t4.Text = "";
        t5.Text = "";
       
    }
}
