using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ins_ups_que : System.Web.UI.Page
{
    SqlCommand com;
    SqlConnection cco;
    string facultyid;
    //string tescode;
    protected void Page_Load(object sender, EventArgs e)
    {
        com = new SqlCommand();
        cco = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");
        cco.Open();
        facultyid = Session["fid"].ToString();
        string comd = " Select * from test where fid ='" + facultyid + "'";
        
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        
        SqlDataReader dr = com.ExecuteReader();

        if (dr.Read() == true)
        {
            Label18.Visible = false;
            string test = dr["testcode"].ToString();
            //Label18.Visible = true;
            Label18.Text = test.ToString();
        }
        cco.Close();
        


    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /***Insert***/
        if (TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "" || TextBox8.Text == "")
        {

            Label18.Visible = true;
            Label18.Text = "Please enter all details";
        }
        else if (TextBox4.Text == TextBox5.Text || TextBox4.Text == TextBox6.Text || TextBox4.Text == TextBox7.Text || TextBox5.Text == TextBox6.Text || TextBox5.Text == TextBox7.Text || TextBox6.Text == TextBox7.Text)
        {
            // To ensure that 2 or more options r not the same in a question
            Label18.Visible = true;
            Label18.Text = "Two or more options can't be the same";
        }

        else
        {
            cco.Close();
            cco.Open();
            string comd = " Select * from question where qno ='" + DropDownList1.Text + "' and testcode ='" + DropDownList2.Text + "'";
            com = new SqlCommand(comd, cco);
            com.ExecuteNonQuery();
            //usn1 = Int32.Parse(comd);
            SqlDataReader dr1 = com.ExecuteReader();

            // Label10.Visible = true;
            //Label10.Text = usn1;
            if (!dr1.Read())
            {

                dr1.Close();
                string comm = " insert into question values('" + DropDownList1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + DropDownList2.Text + "')";
                //Label1.Visible = true;
                com = new SqlCommand(comm, cco);
                com.ExecuteNonQuery();

                Label18.Visible = true;
                Label18.Text = "Insertion successfull";
                cco.Close();

                //Inserting a test which already has exactly 5 questions into test_ready table
                cco.Open();
                string comd2 = " Select count (*) as no from question where testcode ='" + DropDownList2.Text + "'";
                com = new SqlCommand(comd2, cco);
                com.ExecuteNonQuery();
                //SqlDataReader dr1 = com.ExecuteReader();
                SqlDataReader dr2 = com.ExecuteReader();

                if (dr2.Read() == true)
                {
                    // Label10.Visible = false;
                    int count = Convert.ToInt32(dr2["no"].ToString());
                    if (count == 5)
                    {
                        dr2.Close();
                        string comm3 = " insert into test_ready values('" + DropDownList2.Text + "','" + 1 + "')";
                        //Label1.Visible = true;
                        com = new SqlCommand(comm3, cco);
                        com.ExecuteNonQuery();

                        //Label10.Visible = true;
                        //Label10.Text = count.ToString();

                    }
                    else{ }
                }
                else{ }
            }
            else
            {
                Label18.Visible = true;
                Label18.Text = "Question already exists in test";
            }
            cco.Close();
         }
        cco.Close();
        
       
        

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        /***Update***/
        if (TextBox4.Text == TextBox5.Text || TextBox4.Text == TextBox6.Text || TextBox4.Text == TextBox7.Text || TextBox5.Text == TextBox6.Text || TextBox5.Text == TextBox7.Text || TextBox6.Text == TextBox7.Text)
        {

            Label18.Visible = true;
            Label18.Text = "Two or more options can't be the same";
        }
        else
        {
            cco.Open();
            string comd = " update question set question ='" + TextBox3.Text + "' ,opa = '" + TextBox4.Text + "' ,opb = '" + TextBox5.Text + "' ,opc = '" + TextBox6.Text + "' ,opd = '" + TextBox7.Text + "' ,rightop = '" + TextBox8.Text + "' where qno ='" + DropDownList1.Text + "' and testcode ='" + DropDownList2.Text + "'";
            com = new SqlCommand(comd, cco);
            com.ExecuteNonQuery();
            cco.Close();
            Label18.Visible = true;
            Label18.Text = "Update Successful";
            Button5.Enabled = false;
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        /***Display***/
        cco.Open();
        string comd = " Select * from question where qno ='" + DropDownList1.Text + "' and testcode ='" + DropDownList2.Text + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        //SqlDataReader dr1 = com.ExecuteReader();
        SqlDataReader dr = com.ExecuteReader();

        if (dr.Read() == true)
        {
            Label18.Visible = false;
            string question = dr["question"].ToString();
            string opa = dr["opa"].ToString();
            string opb = dr["opb"].ToString();
            string opc = dr["opc"].ToString();
            string opd = dr["opd"].ToString();
            string rightop = dr["rightop"].ToString();
           // string marks = dr["marks"].ToString();
            
            TextBox3.Text = question;
            TextBox4.Text = opa;
            TextBox5.Text = opb;
            TextBox6.Text = opc;
            TextBox7.Text = opd;
            TextBox8.Text = rightop;
            //TextBox10.Text = marks;

            //DropDownList2.Text = sem;
            //DropDownList3.Text = batch;
            
            Button5.Enabled = true;

        }
        else
        {
            Label18.Visible = true;
            Label18.Text = "Question doesn't exist";
            TextBox3.Text ="";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            Button5.Enabled = false;


        }

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        /***Reset***/
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        //TextBox10.Text = "";
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
        Label18.Visible = false;
    }
}
