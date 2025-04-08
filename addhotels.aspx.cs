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
public partial class WebSite_addhotels : System.Web.UI.Page
{

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        CDatabase objdb = new CDatabase();
        int ii = 0;
        string str;
        string adminnam = Session["hoteladmin"].ToString();
        if (adminnam != "")
        {
            try
            {

                objdb.OpenConnection();
                dt = objdb.getRecord("select * from Hotel_Details where htl_id= '" + t1.Text + "'");
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

                objdb.nonselectquery("insert into Hotel_Details values('" + t1.Text + "','" + adminnam + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + t5.Text + "'," + t6.Text + "," + t7.Text + "," + t8.Text + ",'" + t9.Text + "','" + t10.Text + "','" + t12.Text + "')");
                // Response.Write("insert into Hotel_Details values('" + t1.Text + "','" + adminnam + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + t5.Text + "','" + t6.Text + "'," + t7.Text + "," + t8.Text + "," + t9.Text + ",'" + t10.Text + "','" + t11.Text + "','" + t12.Text + "'))");

                if (objdb.Error == null)
                {
                    FU1.SaveAs("F:\\Tourism\\Hotel_Pics\\" + t1.Text + ".jpg");
                    str = "Successfully Added ";
                }
                else
                {

                    str = "Unknown Error";
                }
            }
            else
            {
                str = "Hotel id already exists";
            }
            l1.Text = str;
            objdb.close();
            
            t1.Text = "";
            t2.Text = "";
            t3.Text = "";
            t4.Text = "";
            t5.Text = "";
            t6.Text = "";
            t7.Text = "";
            t8.Text = "";
            t9.Text = "";
            t10.Text = "";
            t12.Text = "";
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
    }
}
