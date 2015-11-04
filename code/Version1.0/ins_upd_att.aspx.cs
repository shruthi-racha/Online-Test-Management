using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ins_upd_att : System.Web.UI.Page
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
    }
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /***Insert***/
        if (TextBox2.Text == "")
        {

            Label14.Visible = true;
            Label14.Text = "Please enter all details";
        }
        else
        {
            string comd = " Select * from update_attendance where usn ='" + DropDownList1.Text + "'";
            com = new SqlCommand(comd, cco);
            com.ExecuteNonQuery();
            //usn1 = Int32.Parse(comd);
            SqlDataReader dr1 = com.ExecuteReader();

            // Label10.Visible = true;
            //Label10.Text = usn1;
            if (!dr1.Read())
            {

                dr1.Close();
                string comm = " insert into update_attendance values('" + DropDownList1.Text + "','" + facultyid + "','" + TextBox2.Text + "')";
                Label1.Visible = true;
                com = new SqlCommand(comm, cco);
                com.ExecuteNonQuery();

                Label14.Visible = true;
                Label14.Text = "Insertion successfull";
                cco.Close();

            }
            else
            {

                Label14.Visible = true;
                Label14.Text = "USN already exists";

            }
            cco.Close();
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        /***Update***/
        string comd = " update update_attendance set fid ='" + facultyid + "' ,attendance = '" + TextBox2.Text + "'where usn ='" + DropDownList1.Text + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        cco.Close();
        Label14.Visible = true;
        Label14.Text = "Update Successful";
        Button5.Enabled = false;

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        /***Display***/
        string comd = " Select * from update_attendance where usn ='" + DropDownList1.Text + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        //SqlDataReader dr1 = com.ExecuteReader();
        SqlDataReader dr = com.ExecuteReader();

        if (dr.Read() == true)
        {
            Label14.Visible = false;
            string attendance = dr["attendance"].ToString();

            TextBox2.Text = attendance;            

            Button5.Enabled = true;

        }
        else
        {
            //string sem = "'1'";
            Label14.Visible = true;
            Label14.Text = "USN doesn't exist";
            TextBox2.Text = "";
            Button5.Enabled = false;


        }


    }
    protected void Button4_Click(object sender, EventArgs e)
    {
         /***Reset***/
        TextBox2.Text = "";
        Label14.Visible = false;

    }
   
}
