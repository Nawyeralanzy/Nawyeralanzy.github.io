using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web;
public partial class test : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }
    public void Bind()
    {
        String mycon = "Data Source=LAPTOP-L2U5LKAS\\SQLEXPRESS;Initial Catalog=FOR-U;Integrated Security=True";
        String myquery = "Select * from offerClinic";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }

    protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        Bind();

    }

    protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        Bind();
    }

    protected void GridView1_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        Bind();
    }


    protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
    {
        int index = e.RowIndex;
        GridViewRow row = (GridViewRow)GridView1.Rows[index];
        TextBox text1 = (TextBox)row.FindControl("TextBox1");
        FileUpload fu = (FileUpload)row.FindControl("FileUpload1");
        Label label1 = (Label)row.FindControl("Label4");
        Random rand = new Random((int)DateTime.Now.Ticks);
        int numIterations = 0;
        numIterations = rand.Next(1, 1000);
        String constring = "Data Source=LAPTOP-L2U5LKAS\\SQLEXPRESS;Initial Catalog=FOR-U;Integrated Security=True";
        SqlConnection sqlcon = new SqlConnection(constring);

        fu.PostedFile.SaveAs(Server.MapPath("~/offerclinic/") + numIterations + Path.GetFileName(fu.FileName));
        String link = "offerclinic/" + numIterations + Path.GetFileName(fu.FileName);
        String updatedata = "Update offerClinic set OfferName='" + text1.Text + "', OfferImage='" + link + "' where ID=" + label1.Text;
        sqlcon.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = sqlcon;
        sqlcon.Close();
        GridView1.EditIndex = -1;
        Bind();
    }


}

