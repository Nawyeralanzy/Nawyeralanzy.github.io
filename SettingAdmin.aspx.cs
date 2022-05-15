using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SettingAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblErrorMessage.Visible = false;
    }

    protected void Unnamed4_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-L2U5LKAS\\SQLEXPRESS;Initial Catalog=FOR-U;Integrated Security=True;");
        SqlDataAdapter sd = new SqlDataAdapter("select * from loginWeb where email='" + email.Text + "'and password = '" + password.Text + "'and usertype = '" + DropDownList1.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        sd.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>alert('you are loginWeb as " + dt.Rows[0][1] + "')</script>");
            if (DropDownList1.SelectedIndex == 0)
            {
                Server.Transfer("RegisterAdmin.aspx");
            }
        
        }

        else { lblErrorMessage.Visible = true; }
    }

}
