using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class register_student : System.Web.UI.Page
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
        /*string command2 = "select did from department where aid='" + adminid + "'";
        com = new SqlCommand(command2, cco);
        com.ExecuteNonQuery();
        SqlDataReader dr2 = com.ExecuteReader();
        /*if (dr2.Read())
        {

            deptid = dr2["did"].ToString();
            Session["did"] = deptid;
        }
        dr2.Close();*/
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //***Insert***//
        
        
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox8.Text == "")
        {

            Label10.Visible = true;
            Label10.Text = "Please enter all details";
        }
        else
        {
            string comd = " Select * from student where usn ='" + TextBox2.Text + "'";
            com = new SqlCommand(comd, cco);
            com.ExecuteNonQuery();
            //usn1 = Int32.Parse(comd);
            SqlDataReader dr1 = com.ExecuteReader();
             
           // Label10.Visible = true;
            //Label10.Text = usn1;
            if (!dr1.Read())
            {

                dr1.Close();
                string comm = " insert into student values('" + TextBox1.Text + "','" + TextBox2.Text + "','"+deptid +"','"+DropDownList3.Text+"','" + DropDownList2.Text + "','" + TextBox3.Text + "','" + TextBox8.Text + "','"+adminid+"')";
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
                Label10.Text = "USN already exists";
              
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
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //***Display***//
        string comd = " Select * from student where usn ='" + TextBox2.Text + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        //SqlDataReader dr1 = com.ExecuteReader();
         SqlDataReader dr = com.ExecuteReader();

         if (dr.Read() == true)
         {
             Label10.Visible = false;
             string name = dr["name"].ToString();
             string usn = dr["usn"].ToString();
             string did = dr["did"].ToString();
             string batch = dr["batch"].ToString();
             string sem = dr["sem"].ToString();
             string login = dr["login"].ToString();
             string password = dr["password"].ToString();
             string aid = dr["aid"].ToString();

             TextBox1.Text = name;
             TextBox2.Text = usn;
             TextBox3.Text = login;
             DropDownList2.Text = sem;
             DropDownList3.Text = batch;
             TextBox8.Text = password;

             Button5.Enabled = true;

         }
         else
         {
             Label10.Visible = true;
             Label10.Text = "USN doesn't exist";
             TextBox1.Text = "";
             TextBox2.Text = "";
             TextBox3.Text = "";
             DropDownList2.Text = "1";
             DropDownList3.Text = "A1";
             TextBox8.Text = "";
             Button5.Enabled = false;

         
         }


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //***Reset***//
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        DropDownList2.Text = "1";
        DropDownList3.Text = "A1";
        TextBox8.Text = "";
        Label10.Visible = false;

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        /***Update***/
        //cco.Open();
        string comd = " update student set name ='" + TextBox1.Text + "' ,login = '" + TextBox3.Text + "' ,password = '" + TextBox8.Text + "' ,batch = '" + DropDownList3.Text + "' ,sem = '" + DropDownList2.Text + "' ,did = '" + deptid + "' ,aid = '" + adminid + "' where usn ='" + TextBox2.Text + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        cco.Close();
        Label10.Visible = true;
        Label10.Text = "Update Successful";
        Button5.Enabled = false;


    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
