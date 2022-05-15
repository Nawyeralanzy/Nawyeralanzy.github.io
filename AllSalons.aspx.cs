using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class AllSalons : System.Web.UI.Page
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
    protected void gvPhoneBook_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {


            if (e.CommandName.Equals("AddNew"))
            {
                con4.Open();
                string query = "INSERT INTO phoneBook (First,Last,Contact) VALUES (@First,@Last,@Contact)";
                SqlCommand sqlcomd = new SqlCommand(query, con4);
                sqlcomd.Parameters.AddWithValue("@First", (gvPhoneBook.FooterRow.FindControl("txtfirstFooter") as TextBox).Text.Trim());
                sqlcomd.Parameters.AddWithValue("@Last", (gvPhoneBook.FooterRow.FindControl("txtlastFooter") as TextBox).Text.Trim());
                sqlcomd.Parameters.AddWithValue("@Contact", (gvPhoneBook.FooterRow.FindControl("txtContactFooter") as TextBox).Text.Trim());

                sqlcomd.ExecuteNonQuery();
                PopulateGridview();
                Ibsuccess.Text = "New Record Added";
                iberror.Text = "";


            }
        }
        catch (Exception ex)
        {
            Ibsuccess.Text = "";
            iberror.Text = ex.Message;
        }
    }

    protected void gvPhoneBook_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvPhoneBook.EditIndex = e.NewEditIndex;
        PopulateGridview();
    }

    protected void gvPhoneBook_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvPhoneBook.EditIndex = -1;
        PopulateGridview();
    }

    protected void gvPhoneBook_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SqlConnection con4 = new SqlConnection("Data Source=LAPTOP-L2U5LKAS\\SQLEXPRESS;Initial Catalog=LoginDB;Integrated Security=True");

        try
        {
            con4.Open();
            string query = "UPDATE  phoneBook SET First=@First,Last=@Last,Contact=@Contact WHERE PhoneBookID = @id";
            SqlCommand sqlcomd = new SqlCommand(query, con4);
            sqlcomd.Parameters.AddWithValue("@First", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtfirst") as TextBox).Text.Trim());
            sqlcomd.Parameters.AddWithValue("@Last", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtlast") as TextBox).Text.Trim());
            sqlcomd.Parameters.AddWithValue("@Contact", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtContact") as TextBox).Text.Trim());
            sqlcomd.Parameters.AddWithValue("@id", Convert.ToInt32(gvPhoneBook.DataKeys[e.RowIndex].Value.ToString()));
            sqlcomd.ExecuteNonQuery();
            gvPhoneBook.EditIndex = -1;
            PopulateGridview();
            Ibsuccess.Text = "Selected Record Updated";
            iberror.Text = "";

        }

        catch (Exception ex)
        {
            Ibsuccess.Text = "";
            iberror.Text = ex.Message;
        }
    }


    protected void gvPhoneBook_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            con4.Open();
            string query = "DELETE FROM  phoneBook  WHERE PhoneBookID = @id";
            SqlCommand sqlcomd = new SqlCommand(query, con4);
            sqlcomd.Parameters.AddWithValue("@id", Convert.ToInt32(gvPhoneBook.DataKeys[e.RowIndex].Value.ToString()));
            sqlcomd.ExecuteNonQuery();
            PopulateGridview();
            Ibsuccess.Text = "Selected Record Deleted";
            iberror.Text = "";

        }

        catch (Exception ex)
        {
            Ibsuccess.Text = "";
            iberror.Text = ex.Message;
        }
    }
}