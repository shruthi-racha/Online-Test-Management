using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class student_home : System.Web.UI.Page
{
    SqlCommand com;
    SqlConnection cco;
    string usnval;
    protected void Page_Load(object sender, EventArgs e)
    {
        com = new SqlCommand();
        cco = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");
        cco.Open();
        usnval = Session["usn"].ToString();
        Button6.Enabled = false;
        cco.Close();

    }
    protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string tcode = DropDownList1.SelectedValue;
        Session["testcode"] = tcode;
        Label10.Visible = true;
        cco.Open();
        string command1 = "select *from result where usn='" + usnval + "' and testcode ='" + tcode + "'";
        com = new SqlCommand(command1, cco);
        SqlDataReader dr1 = com.ExecuteReader();
        if (dr1.Read()==true)
        {
          Label10.Visible = true;
          Label10.Text = "You have already taken this test";
          Button6.Enabled = false;

        }
        else
        {
            Label10.Text = "Click on next to start test";
            Label10.Visible = true;
            Button6.Enabled = true;
            //Response.Redirect("~/questions.aspx");
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/questions.aspx");
    }
}

