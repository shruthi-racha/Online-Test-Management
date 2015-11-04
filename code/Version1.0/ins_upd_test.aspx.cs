using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class add_test_sub : System.Web.UI.Page
{
    SqlCommand com;
    SqlConnection cco;
    string adminid;
    //string deptid;
    //string subjectid;
    protected void Page_Load(object sender, EventArgs e)
    {
        com = new SqlCommand();
        cco = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");
        cco.Open();
        adminid = Session["aid"].ToString();
        //deptid = "d1";
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /****Insert****/
        if (TextBox2.Text == "")
        {

            Label11.Visible = true;
            Label11.Text = "Please enter all details";
        }
        else
        {
            /**string comd = " Select * from subject where name ='" + DropDownList4.Text + "'";
            com = new SqlCommand(comd, cco);
            com.ExecuteNonQuery();
            SqlDataReader dr = com.ExecuteReader();
            subjectid = dr["sid"].ToString();
            Label14.Text = subjectid;
            if (dr.Read() == true)
            {
                dr.Close();
                
                  cco.Close();
                
            }*/

            string comm = " Select * from test where testcode ='" + TextBox2.Text + "'";
            com = new SqlCommand(comm, cco);
            com.ExecuteNonQuery();
            SqlDataReader dr1 = com.ExecuteReader();

            
           if (!dr1.Read())
            {

                dr1.Close();
                string comn = " insert into test values('" + TextBox2.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "')";
                Label1.Visible = true;
                com = new SqlCommand(comn, cco);
                com.ExecuteNonQuery();

                Label11.Visible = true;
                Label11.Text = "Insertion successfull";
                cco.Close();

            }
        
            else
            {

                Label11.Visible = true;
                Label11.Text = "Testcode already exists";

            }
            cco.Close();
        }


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        /***Display***/
        string comd = " Select * from test where testcode ='" + TextBox2.Text + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        //SqlDataReader dr1 = com.ExecuteReader();
        SqlDataReader dr = com.ExecuteReader();

        if (dr.Read() == true)
        {
            Label11.Visible = false;
            //string sem = dr["sem"].ToString();
            string fid = dr["fid"].ToString();
            string sid = dr["sid"].ToString();
            

            //DropDownList3.Text = sem;
            DropDownList1.Text = fid;
            DropDownList2.Text = sid;

            Button5.Enabled = true;

        }
        else
        {
            //string sem = "'1'";
            Label11.Visible = true;
            Label11.Text = "Testcode doesn't exist";
            TextBox2.Text = "";
            //DropDownList3.SelectedIndex = 0;
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            Button5.Enabled = false;


        }

        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        /***Update***/
        string comd = " update test set fid = '" + DropDownList1.Text + "' ,sid = '" + DropDownList2.Text + "' where testcode ='" + TextBox2.Text + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        cco.Close();
        Label11.Visible = true;
        Label11.Text = "Update Successful";
        Button5.Enabled = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        /***Reset***/
        TextBox2.Text = "";
        //DropDownList3.SelectedIndex = 0;
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
        Label11.Visible = false;

    }
}
