using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

using System.Configuration;

public partial class Clinic_page : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String constring = "Data Source=LAPTOP-L2U5LKAS\\SQLEXPRESS;Initial Catalog=FOR-U;Integrated Security=True";
        SqlConnection sqlcon = new SqlConnection(constring);
        FileUpload1.SaveAs(Server.MapPath("~/offerclinic/") + Path.GetFileName(FileUpload1.FileName));
        String link = "offerclinic/" + Path.GetFileName(FileUpload1.FileName);

        String query = "Insert into Image_Details(ImageId, ImageName, Image) values(" + TestBox1.Text + ",'" + TestBox2.Text + "','"  + link + "')";
        SqlCommand cmd = new SqlCommand(query, sqlcon);
        sqlcon.Open();
        cmd.ExecuteNonQuery();
        sqlcon.Close();

        Label1.Text = "Data has Been Saved Successfully";
        TestBox1.Text = "";
        TestBox2.Text = "";


    }
}