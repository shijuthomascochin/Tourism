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
public partial class WebSite_edithotels : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            DataTable dt = new DataTable();
            CDatabase objdb = new CDatabase();
            DDL1.Items.Add("Select Hotel ID");
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
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        CDatabase objdb = new CDatabase();
        string str="";
        string adminnam = Session["hoteladmin"].ToString();
        try
        {
            objdb.OpenConnection();
            if (adminnam != "")
            {
                objdb.nonselectquery("update Hotel_Details set htl_name='" + t2.Text + "',htl_location='" + t3.Text + "',htl_district='" + t4.Text + "',htl_star='" + t5.Text + "',htl_phone=" + t6.Text + ",htl_mobile=" + t7.Text + ",htl_fax=" + t8.Text + ",htl_website='" + t9.Text + "',htl_email='" + t10.Text + "',htl_description='" + t12.Text + "' where htl_id='" + DDL1.SelectedValue + "'");
              //  Response.Write("update Hotel_Details set htl_name='" + t2.Text + "',htl_location='" + t3.Text + "',htl_district='" + t4.Text + "',htl_star='" + t5.Text + "',htl_phone=" + t6.Text + ",htl_mobile=" + t7.Text + ",htl_fax=" + t8.Text + ",htl_website='" + t9.Text + "',htl_email='" + t10.Text + "',htl_pic='" + t11.Text + "',htl_description='" + t12.Text + "' where htl_id='" + DDL1.SelectedValue + "'");
                if (objdb.Error == null)
                {
                    str = "Successfully edited ";
                    if (FileUpload1.FileName != "")
                    {
                        FileUpload1.SaveAs("F:\\Tourism\\Hotel_Pics\\" + DDL1.SelectedValue + ".jpg");
                    }
                }
                else
                {
                    str = "Unknown Error";
                }

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
            dt = objdb.getRecord("select * from Hotel_Details where htl_id= '" + DDL1.SelectedValue + "'");
            foreach (DataRow dr in dt.Rows)
            {
                t2.Text = dr[2].ToString();
                t3.Text = dr[3].ToString(); 
                t4.Text = dr[4].ToString();
                t5.Text = dr[5].ToString();
                t6.Text = dr[6].ToString();
                t7.Text = dr[7].ToString();
                t8.Text = dr[8].ToString();
                t9.Text = dr[9].ToString();
                t10.Text = dr[10].ToString();
                t12.Text = dr[11].ToString();
                
            }
            objdb.close();
        }
        catch (Exception)
        {
        }

    }
}
