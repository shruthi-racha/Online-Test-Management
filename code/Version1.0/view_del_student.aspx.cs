using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class view_del_student : System.Web.UI.Page
{
    SqlCommand com;
    SqlConnection cco;
    protected void Page_Load(object sender, EventArgs e)
    {
        com = new SqlCommand();
        cco = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");
        //GridView1.Visible = false;
        GridView1.Visible = true;
    }


    protected void Button7_Click(object sender, EventArgs e)
    {
        /***View***/
        GridView1.Visible = true;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        /***Delete***/

        cco.Open();
        string comd = " delete from student where usn ='" + DropDownList1.Text + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        cco.Close();

        cco.Open();
        string comd1 = " delete from result where usn ='" + DropDownList1.Text + "'";
        com = new SqlCommand(comd1, cco);
        com.ExecuteNonQuery();
        cco.Close();

        /**
        cco.Open();
        string comd2 = " delete from take_test where usn ='" + DropDownList1.Text + "'";
        com = new SqlCommand(comd2, cco);
        com.ExecuteNonQuery();
        cco.Close();
         **/

        cco.Open();
        string comd3 = " delete from update_attendance where usn ='" + DropDownList1.Text + "'";
        com = new SqlCommand(comd3, cco);
        com.ExecuteNonQuery();
        cco.Close(); 

        
        Label11.Visible = true;
        Label11.Text = "Deletion Successfull";
        cco.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button9_Click(object sender, EventArgs e)
    {

    }
}
