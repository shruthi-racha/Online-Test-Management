using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class view_del_que : System.Web.UI.Page
{
    SqlCommand com;
    SqlConnection cco;
    string facultyid;
    protected void Page_Load(object sender, EventArgs e)
    {
        com = new SqlCommand();
        cco = new SqlConnection(@"Data Source=SIRI;Integrated Security=True");
        GridView1.Visible = true;
        facultyid = Session["fid"].ToString();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /***View***/
       // GridView1.Visible = true;

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
        string comd = " Select * from test where fid ='" + facultyid + "'";
        com = new SqlCommand(comd, cco);
        com.ExecuteNonQuery();
        //SqlDataReader dr1 = com.ExecuteReader();
         SqlDataReader dr = com.ExecuteReader();

         if (dr.Read() == true)
         {
             //string testcode = dr["testcode"].ToString();
             cco.Close();

             cco.Open();
             string comd1 = " delete from question where qno ='" + DropDownList1.Text + "' and testcode = '" + DropDownList2.Text + "'";
             com = new SqlCommand(comd1, cco);
             com.ExecuteNonQuery();
             cco.Close();

             //if no. of Qs are less than 5 delete test from test_ready table
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
                 if (count <5)
                 {
                     dr2.Close();
                     string comm3 = " delete from test_ready where testcode = '"+DropDownList2.Text+ "'";
                     //Label1.Visible = true;
                     com = new SqlCommand(comm3, cco);
                     com.ExecuteNonQuery();

                     //Label10.Visible = true;
                     //Label10.Text = count.ToString();

                 }
                 else { }
             }
             else { }

         }

        Label11.Visible = true;
        Label11.Text = "Deletion Successfull";
        //cco.Close();

    }
}
