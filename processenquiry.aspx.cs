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
public partial class WebSite_processenquiry : System.Web.UI.Page
{
    string hotel;
    string user;
    string htladmin;
    string reqDate;
    protected void Page_Load(object sender, EventArgs e)
    {
       hotel = Request.QueryString["hotel"];
       user = Request.QueryString["user"];
        reqDate = Request.QueryString["txtDate"];
         int i=0;
        DataTable dt = new DataTable();
        CDatabase objdb = new CDatabase();
        string today = System.DateTime.Now.ToShortDateString();
        try
        {
            objdb.OpenConnection();
            dt=objdb.getRecord("select adm_id from Hotel_Details where htl_id='"+hotel+"'");
            foreach (DataRow dr in dt.Rows)
            {
                htladmin = dr[0].ToString();
            }
            dt = objdb.getRecord("select pak_id from Hotel_Package where htl_id= '" + hotel + "'");
            foreach (DataRow dr in dt.Rows)
            {
                if (Request.QueryString[dr[0].ToString()] == "on")
                {
                    Response.Write(dr[0].ToString());
                    i = 1;
                    objdb.nonselectquery("insert into User_Enquiry values('" + user + "','" + hotel + "','" + dr[0] + "','" + reqDate + "','" + today + "')");
                    Response.Redirect("enquiryok.aspx?log=ok&unam="+user+"");
                }
            }
            if (i == 0)
            {
                objdb.nonselectquery("insert into User_Enquiry values('" + user + "','" + hotel + "','no package','" + reqDate + "','" + today + "')");
                Response.Redirect("enquiryok.aspx?log=ok&unam=" + user + "");
            }
        }
        catch (Exception)
        {
            Response.Write(objdb.Error);
        }
        objdb.close();
    }
}
