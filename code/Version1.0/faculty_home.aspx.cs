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

public partial class faculty_home : System.Web.UI.Page
{
    SqlCommand com;
    SqlConnection cco;
    string facultyid;
    protected void Page_Load(object sender, EventArgs e)
    {
        com = new SqlCommand();
        cco = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");
        cco.Open();
        facultyid = Session["fid"].ToString();
        string comd = " Select * from faculty where fid ='" + facultyid + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        //SqlDataReader dr1 = com.ExecuteReader();
        SqlDataReader dr = com.ExecuteReader();

        if (dr.Read() == true)
        {

            string name = dr["name"].ToString();
            Label2.Text = name;

        }

    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}
