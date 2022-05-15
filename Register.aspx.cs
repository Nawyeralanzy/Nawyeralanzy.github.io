using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-L2U5LKAS\\SQLEXPRESS;Initial Catalog=hospital;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        Massege.Visible = false;
    }



    protected void Unnamed7_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into loginWeb values ('" + email.Text + "','" + password.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + TextBox1.Text + "','" + City.Text + "','" + Salons.Text + "')";

        cmd.ExecuteNonQuery();
        con.Close();

        Massege.Visible = true;

        Response.Write("<script>alert('you are Sccessfuly Register  ')</script>");
        Server.Transfer("Login.aspx");
    }
}
