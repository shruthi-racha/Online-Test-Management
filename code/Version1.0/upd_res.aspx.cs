using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class upd_res : System.Web.UI.Page
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
        cco.Close();
        Label13.Visible = false;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        /***Display***/
        string test;
        cco.Open();
        string comd = " Select * from test where sid ='" + DropDownList2.SelectedValue + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();

        SqlDataReader dr = com.ExecuteReader();
        //string test = dr["testcode"].ToString();

        if (dr.Read() == true)
        {
            Label13.Visible = false;
            test = dr["testcode"].ToString();
            // Label13.Visible = true;
            //Label13.Text = test.ToString();
            cco.Close();
            
            cco.Open();
            string comm = " Select * from result where usn = '" + DropDownList1.Text + "' and testcode = '" + test + "' and evaluated = '" + 1 + "'";
            com = new SqlCommand(comm, cco);
            com.ExecuteNonQuery();
            SqlDataReader dr1 = com.ExecuteReader();
            if (dr1.Read() == true)
            {
                string marks = dr1["marks"].ToString();
                //cco.Close();
                TextBox1.Text = marks;
                Button5.Enabled = true;
                cco.Close();
            }
            else
            {

                Label13.Visible = true;
                Label13.Text = "Student hasn't taken test yet";
                Button5.Enabled = false;
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        /***Update***/
        string test;
        cco.Open();
        string comd = " Select * from test where sid ='" + DropDownList2.SelectedValue + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();

        SqlDataReader dr = com.ExecuteReader();
        //string test = dr["testcode"].ToString();

        if (dr.Read() == true)
        {
            Label13.Visible = false;
            test = dr["testcode"].ToString();
            // Label13.Visible = true;
            Label13.Text = test.ToString();
            cco.Close();
            cco.Open();
            string comm = " update result set marks ='" + TextBox1.Text + "' where usn ='" + DropDownList1.Text + "' and testcode ='" + test + "'";
            com = new SqlCommand(comm, cco);
            com.ExecuteNonQuery();
            //cco.Close();
            Label13.Visible = true;
            Label13.Text = "Update Successful";
            Button5.Enabled = false;
            cco.Close();
        }

    }
}
