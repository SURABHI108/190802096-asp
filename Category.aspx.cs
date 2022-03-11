using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
       con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
           //DeleteCommand="DELETE FROM [categories] WHERE [cid] = @cid" 
           //InsertCommand="INSERT INTO [categories] ([category], [status]) VALUES (@category, @status)" 
           //ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" 
           //SelectCommand="SELECT [cid], [category], [status] FROM [categories]" 
           //UpdateCommand="UPDATE [categories] SET [category] = @category, [status] = @status WHERE [cid] = @cid">
    }
    public void print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [cid], [category], [status] FROM [categories]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "Update")
        {
            SqlCommand cmd = new SqlCommand("UPDATE [categories] SET [category] = @category, [status] = @status WHERE [cid] = @cid", con);
            cmd.Parameters.AddWithValue("@category", TextBox3.Text);
            cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("@cid", ViewState["category_id"]);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 1)
            {
                TextBox3.Text = string.Empty;
                RadioButtonList1.SelectedIndex = -1;
                print();
                Literal5.Text = "data succesfully Updated";
                Button1.Text = "Submit";
            }
            else
            {
                TextBox3.Text = string.Empty;
                RadioButtonList1.SelectedIndex = -1;
                print();
                Literal5.Text = "ERROR!!!";
                Button1.Text = "Submit";
            }
        }
        else
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [categories] ([category], [status]) VALUES (@category, @status)", con);
            cmd.Parameters.AddWithValue("@category", TextBox3.Text);
            cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 1)
            {
                TextBox3.Text = string.Empty;
                RadioButtonList1.SelectedIndex = -1;
                print();
                Literal5.Text = "data succesfully inserted";
            }
            else
            {

                TextBox3.Text = string.Empty;
                RadioButtonList1.SelectedIndex = -1;
                print();
                Literal5.Text = "ERROR!!!";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [cid], [category], [status] FROM [categories]  WHERE [cid] =" + btn.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox3.Text = dt.Rows[0][1].ToString();
        RadioButtonList1.SelectedValue = dt.Rows[0][2].ToString();
        ViewState["category_id"] = btn.CommandArgument;
        Button1.Text = "Update";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;

        SqlCommand cmd = new SqlCommand("DELETE FROM [categories] WHERE [cid] = " + btn.CommandArgument, con);
        cmd.Parameters.AddWithValue("@cid", btn.CommandArgument);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (i == 1)
        {
           TextBox3.Text = string.Empty;
            RadioButtonList1.SelectedIndex = -1;
            print();
            Literal5.Text = "data succesfully Deleted";
        }
        else
        {
            
            TextBox3.Text = string.Empty;
            RadioButtonList1.SelectedIndex = -1;
            print();
            Literal5.Text = "ERROR!!!";
        }

    }
}