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

public partial class WebSite_sitesettings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        CDatabase objdb = new CDatabase();
        string str = "";
        try
        {
            objdb.OpenConnection();
            if (t1.Text != "")
            {
                objdb.nonselectquery("delete from Site_Details");
                objdb.nonselectquery("insert into Site_Details values('" + t1.Text + "','" + t2.Text + "')");
            }
            if (t2.Text != "")
            {
                objdb.nonselectquery("delete from Site_Details");
                objdb.nonselectquery("insert into Site_Details values('" + t1.Text + "','" + t2.Text + "')");
            }
            if (objdb.Error == null)
            {
                if (FileUpload1.FileName != "")
                {
                    FileUpload1.SaveAs("F:\\Tourism\\Site_Pics\\main_banner.jpg");
                }
                if (FileUpload2.FileName != "")
                {
                    FileUpload2.SaveAs("F:\\Tourism\\Ad_Pics\\sub_banner.jpg");
                }
                
                str = "Successfully Updated ";
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
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
