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

public partial class WebSite_adadmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminpage.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (FileUpload1.FileName != "")
        {
            FileUpload1.SaveAs("F:\\Tourism\\Ad_Pics\\mainad.jpg");
        }
        if (FileUpload2.FileName != "")
        {
            FileUpload2.SaveAs("F:\\Tourism\\Ad_Pics\\1.jpg");
        }
        if (FileUpload3.FileName != "")
        {
            FileUpload3.SaveAs("F:\\Tourism\\Ad_Pics\\2.jpg");
        }
        if (FileUpload4.FileName != "")
        {
            FileUpload4.SaveAs("F:\\Tourism\\Ad_Pics\\3.jpg");
        }
        if (FileUpload5.FileName != "")
        {
            FileUpload5.SaveAs("F:\\Tourism\\Ad_Pics\\4.jpg");
        }
        l1.Text = "Successfully uploaded";
    }
}
