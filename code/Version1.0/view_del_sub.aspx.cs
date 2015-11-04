using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class view_del_sub : System.Web.UI.Page
{
    SqlCommand com;
    SqlConnection cco;
    protected void Page_Load(object sender, EventArgs e)
    {

        com = new SqlCommand();
        cco = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");
        GridView1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /***View***/
        //GridView1.Visible = true;

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        /***Delete***/

        cco.Open();
        string comd5 = " delete from subject where sid ='" + DropDownList1.Text + "'";
        com = new SqlCommand(comd5, cco);
        com.ExecuteNonQuery();
        cco.Close();

        
        cco.Open();
        string comd = " Select * from test where sid ='" + DropDownList1.Text + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        //SqlDataReader dr1 = com.ExecuteReader();
        SqlDataReader dr = com.ExecuteReader();

        if (dr.Read() == true)
        {
            //Label10.Visible = false;
            string tcode = dr["testcode"].ToString();
            cco.Close();

            

            cco.Open();
            string comd1 = " delete from test where testcode = '" + tcode + "'";
            com = new SqlCommand(comd1, cco);
            com.ExecuteNonQuery();
            cco.Close();

            cco.Open();
            string comd2 = " delete from question where testcode = '" + tcode + "'";
            com = new SqlCommand(comd2, cco);
            com.ExecuteNonQuery();
            cco.Close();

            cco.Open();
            string comd3 = " delete from result where testcode = '" + tcode + "'";
            com = new SqlCommand(comd3, cco);
            com.ExecuteNonQuery();
            cco.Close();

            /**
            cco.Open();
            string comd4 = " delete from take_test where testcode = '" + tcode + "'";
            com = new SqlCommand(comd4, cco);
            com.ExecuteNonQuery();
            cco.Close();
             **/

            Label11.Visible = true;
            Label11.Text = "Deletion Successfull";
            cco.Close();


        }

    }
    protected void Button9_Click(object sender, EventArgs e)
    {

    }
}
