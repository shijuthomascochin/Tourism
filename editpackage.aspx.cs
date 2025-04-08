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

public partial class WebSite_editpackage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            DataTable dt = new DataTable();
            CDatabase objdb = new CDatabase();
            DDL1.Items.Add("Select Pack ID");
            DDL2.Items.Add("Select Hotel ID");
            try
            {
                objdb.OpenConnection();
                dt = objdb.getRecord("select pak_id from Hotel_Package where adm_id= '" + Session["hoteladmin"].ToString() + "'");
                foreach (DataRow dr in dt.Rows)
                {
                    DDL1.Items.Add(dr[0].ToString());
                } 
                dt = objdb.getRecord("select htl_id from Hotel_Details where adm_id= '" + Session["hoteladmin"].ToString() + "'");
                foreach (DataRow dr in dt.Rows)
                {
                    DDL2.Items.Add(dr[0].ToString());
                }

                objdb.close();
            }
            catch (Exception)
            {
            }
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        CDatabase objdb = new CDatabase();
        string str = "";
        string adminnam = Session["hoteladmin"].ToString();
        try
        {
            objdb.OpenConnection();
            objdb.nonselectquery("update Hotel_Package set htl_id='" + DDL2.SelectedValue + "',pak_days=" + t3.Text + ",pak_nights=" + t4.Text + ",pak_no_ppl=" + t5.Text + ",pak_rate=" + t6.Text + ",pak_description='" + t7.Text + "' where pak_id='" + DDL1.SelectedValue + "'");
              //Response.Write("update Hotel_Package set htl_id='" + t1.Text + "',pak_days=" + t3.Text + ",pak_nights=" + t4.Text + ",pak_no_ppl=" + t5.Text + ",pak_rate=" + t6.Text + ",pak_description='" + t7.Text + "' where pak_id='" + DDL1.SelectedValue + "'");
            if (objdb.Error == null)
            {
                str = "Successfully edited ";
            }
            else
            {
                str = "Unknown Error";
            }
            l1.Text = str;
            objdb.close();
        }
        catch (Exception)
        {
        }
    }
    protected void DDL1_SelectedIndexChanged(object sender, EventArgs e)
    {

        DataTable dt = new DataTable();
        CDatabase objdb = new CDatabase();
        try
        {
            objdb.OpenConnection();
            dt = objdb.getRecord("select * from Hotel_Package where pak_id= '" + DDL1.SelectedValue + "'");
            foreach (DataRow dr in dt.Rows)
            {
               // t1.Text = dr[2].ToString();
                t3.Text = dr[3].ToString();
                t4.Text = dr[4].ToString();
                t5.Text = dr[5].ToString();
                t6.Text = dr[6].ToString();
                t7.Text = dr[7].ToString();
              

            }
            objdb.close();
        }
        catch (Exception)
        {
        }

    }
}
