using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;
public partial class ClinicOwner : System.Web.UI.Page
{
    SqlConnection con4 = new SqlConnection("Data Source=LAPTOP-L2U5LKAS\\SQLEXPRESS;Initial Catalog=LoginDB;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PopulateGridview();
        }
    }
    void PopulateGridview()
    {
        DataTable dtbl = new DataTable();
        SqlConnection con4 = new SqlConnection("Data Source=LAPTOP-L2U5LKAS\\SQLEXPRESS;Initial Catalog=LoginDB;Integrated Security=True");

        con4.Open();
        SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM phoneBook", con4);
        sqlDa.Fill(dtbl);
        if (dtbl.Rows.Count > 0)
        {
            gvPhoneBook.DataSource = dtbl;
            gvPhoneBook.DataBind();

        }
        else
        {
            dtbl.Rows.Add(dtbl.NewRow());
            gvPhoneBook.DataSource = dtbl;
            gvPhoneBook.DataBind();
            gvPhoneBook.Rows[0].Cells.Clear();
            gvPhoneBook.Rows[0].Cells.Add(new TableCell());
            gvPhoneBook.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
            gvPhoneBook.Rows[0].Cells[0].Text = "No Data Found .....!";
            gvPhoneBook.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;




        }
    }
  

}