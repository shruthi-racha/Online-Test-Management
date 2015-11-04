using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class view_del_att : System.Web.UI.Page
{
    SqlCommand com;
    SqlConnection cco;
    protected void Page_Load(object sender, EventArgs e)
    {
        com = new SqlCommand();
        cco = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");
        GridView1.Visible = true;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /***View***/
        //GridView1.Visible = true;

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        /***Delete***/
        cco.Open();
        string comd = " delete from update_attendance where usn ='" + DropDownList1.Text + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        cco.Close();

        Label12.Visible = true;
        Label12.Text = "Deletion Successfull";
        //cco.Close();

    }
}
