using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class add_sub : System.Web.UI.Page
{
    SqlCommand com;
    SqlConnection cco;
    string adminid;
    string deptid;
    protected void Page_Load(object sender, EventArgs e)
    {
        com = new SqlCommand();
        cco = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");
        cco.Open();
        adminid = Session["aid"].ToString();
        deptid = "d1";
        Label11.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /***Insert***/
        if (TextBox4.Text == ""|| TextBox3.Text == "")
        {

            Label11.Visible = true;
            Label11.Text = "Please enter all details";
        }
        else
        {
            string comd = " Select * from subject where sid ='" + TextBox4.Text + "'";
            com = new SqlCommand(comd, cco);
            com.ExecuteNonQuery();
            //usn1 = Int32.Parse(comd);
            SqlDataReader dr1 = com.ExecuteReader();

            // Label10.Visible = true;
            //Label10.Text = usn1;
            if (!dr1.Read())
            {

                dr1.Close();
                string comm = " insert into subject values('" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList2.Text + "','" + DropDownList4.Text + "')";
                Label1.Visible = true;
                com = new SqlCommand(comm, cco);
                com.ExecuteNonQuery();
                
                Label11.Visible = true;
                Label11.Text = "Insertion successfull";
                cco.Close();

            }
            else
            {

                Label11.Visible = true;
                Label11.Text = "Subject already exists";

            }
            cco.Close();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        /***Update***/
        string comd = " update subject set type ='" + DropDownList4.Text + "' ,fid = '" + DropDownList2.Text + "' ,name = '" + TextBox3.Text + "' where sid ='" + TextBox4.Text + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        cco.Close();
        Label11.Visible = true;
        Label11.Text = "Update Successful";
        Button2.Enabled = false;

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        /***Display***/
        string comd = " Select * from subject where sid ='" + TextBox4.Text + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        //SqlDataReader dr1 = com.ExecuteReader();
        SqlDataReader dr = com.ExecuteReader();

        if (dr.Read() == true)
        {
            Label11.Visible = false;
            string type = dr["type"].ToString();
            string name = dr["name"].ToString();
            string fid = dr["fid"].ToString();


            TextBox3.Text = name;
            DropDownList2.Text = fid;
            DropDownList4.Text = type;

            Button2.Enabled = true;

        }
        else
        {
            //string sem = "'1'";
            Label11.Visible = true;
            Label11.Text = "Testcode doesn't exist";
            TextBox3.Text = "";
            TextBox4.Text = "";
            DropDownList4.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;

        }

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        /***Reset***/
        TextBox3.Text = "";
        TextBox4.Text = "";
        //DropDownList3.SelectedIndex = 0;
        DropDownList4.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
        Label11.Visible = false;
    }
}
