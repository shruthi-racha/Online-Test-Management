using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class register_faculty : System.Web.UI.Page
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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /***Insert***/

        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox4.Text == "" || TextBox5.Text == "")
        {

            Label10.Visible = true;
            Label10.Text = "Please enter all details";
        }
        else
        {
            string comd = " Select * from faculty where fid ='" + TextBox4.Text + "'";
            com = new SqlCommand(comd, cco);
            com.ExecuteNonQuery();
            //usn1 = Int32.Parse(comd);
            SqlDataReader dr1 = com.ExecuteReader();

            // Label10.Visible = true;
            //Label10.Text = usn1;
            if (!dr1.Read())
            {

                dr1.Close();
                string comm = " insert into faculty values('" + TextBox4.Text + "','" + TextBox1.Text + "','" + deptid + "','" + TextBox2.Text + "','" + TextBox5.Text + "')";
                Label1.Visible = true;
                com = new SqlCommand(comm, cco);
                com.ExecuteNonQuery();

                Label10.Visible = true;
                Label10.Text = "Insertion successfull";
                cco.Close();

            }
            else
            {

                Label10.Visible = true;
                Label10.Text = "Faculty already exists";

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
        /***Display***/
        string comd = " Select * from faculty where fid ='" + TextBox4.Text + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        //SqlDataReader dr1 = com.ExecuteReader();
        SqlDataReader dr = com.ExecuteReader();

        if (dr.Read() == true)
        {
            Label10.Visible = false;
            string name = dr["name"].ToString();
            string did = dr["did"].ToString();
            string login = dr["login"].ToString();
            string password = dr["password"].ToString();
            
            TextBox1.Text = name;
            TextBox2.Text = login;
            TextBox5.Text = password;
            Button5.Enabled = true;

        }
        else
        {
            Label10.Visible = true;
            Label10.Text = "faculty ID doesn't exist";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            Button5.Enabled = false;
           
        }


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        /***Update***/
        string comd = " update faculty set name = '" + TextBox1.Text + "' ,did = '" + deptid + "' ,login = '" + TextBox2.Text + "' ,password = '" + TextBox5.Text + "' where fid ='" + TextBox4.Text + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        cco.Close();
        Label10.Visible = true;
        Label10.Text = "Update Successful";
        Button5.Enabled = false;

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        /***Reset***/
        TextBox1.Text = "";
        TextBox4.Text = "";
        TextBox2.Text = "";
        TextBox5.Text = "";
        Label10.Visible = false;
    }
   
    
    protected void Button7_Click(object sender, EventArgs e)
    {
        /****test****/
        //SELECT COUNT(*) as did FROM faculty where did ='d1';
        string comd = " Select count (*) as did from faculty where did ='" + deptid + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        //SqlDataReader dr1 = com.ExecuteReader();
        SqlDataReader dr = com.ExecuteReader();

        if (dr.Read() == true)
        {
            Label10.Visible = false;
            int count = Convert.ToInt32(dr["did"].ToString());
            if (count == 1)
            {
                Label10.Visible = true;
                Label10.Text = count.ToString();

            }
            else 
            {
                Label10.Visible = true;
                Label10.Text = "Count more than one";

            }

        }
        else
        {
            Label10.Visible = true;
            Label10.Text = "faculty ID doesn't exist";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            Button5.Enabled = false;

        }

    }

}
