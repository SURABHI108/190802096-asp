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
        // DeleteCommand="DELETE FROM [services] WHERE [sid] = @sid" 
        //InsertCommand="INSERT INTO [services] ([title], [description], [status]) VALUES (@title, @description, @status)" 
        // ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" 
        // SelectCommand="SELECT [sid], [title], [description], [status] FROM [services]" 
        //UpdateCommand="UPDATE [services] SET [title] = @title, [description] = @description, [status] = @status WHERE [sid] = @sid">
        print();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "Update")
        {
            SqlCommand cmd = new SqlCommand("UPDATE [services] SET [title] = @title, [description] = @description, [status] = @status WHERE [sid] = @sid", con);
            cmd.Parameters.AddWithValue("@title", TextBox3.Text);
            cmd.Parameters.AddWithValue("@description", TextBox1.Text);
            cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("@sid", ViewState["sid"]);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 1)
            {
                TextBox1.Text = string.Empty;
                TextBox3.Text = string.Empty;
                RadioButtonList1.SelectedIndex = -1;
                print();
                Literal5.Text = "data succesfully Updated";
                Button1.Text = "Submit";
            }
            else
            {
                TextBox1.Text = string.Empty;
                TextBox3.Text = string.Empty;
                RadioButtonList1.SelectedIndex = -1;
                print();
                Literal5.Text = "ERROR!!!";
                Button1.Text = "Submit";
            }
        }
        else
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [services] ([title], [description], [status]) VALUES (@title, @description, @status)", con);
            cmd.Parameters.AddWithValue("@title", TextBox3.Text);
            cmd.Parameters.AddWithValue("@description", TextBox1.Text);
            cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 1)
            {
                TextBox1.Text = string.Empty;
                TextBox3.Text = string.Empty;
                RadioButtonList1.SelectedIndex = -1;
                print();
                Literal5.Text = "data succesfully inserted";
            }
            else
            {
                TextBox1.Text = string.Empty;
                TextBox3.Text = string.Empty;
                RadioButtonList1.SelectedIndex = -1;
                print();
                Literal5.Text = "ERROR!!!";
            }
        }
    }
    public void print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [sid], [title], [description], [status] FROM [services]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [sid], [title], [description], [status] FROM [services] WHERE [sid] =" + btn.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox3.Text = dt.Rows[0][1].ToString();
        TextBox1.Text = dt.Rows[0][2].ToString();
        RadioButtonList1.SelectedValue = dt.Rows[0][3].ToString();
        ViewState["sid"] = btn.CommandArgument;
        Button1.Text = "Update";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;

        SqlCommand cmd = new SqlCommand("DELETE FROM [services] WHERE [sid] =" + btn.CommandArgument, con);
        cmd.Parameters.AddWithValue("@id", btn.CommandArgument);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (i == 1)
        {
            TextBox1.Text = string.Empty;
            TextBox3.Text = string.Empty;
            RadioButtonList1.SelectedIndex = -1;
            print();
            Literal5.Text = "data succesfully Deleted";
        }
        else
        {
            TextBox1.Text = string.Empty;
            TextBox3.Text = string.Empty;
            RadioButtonList1.SelectedIndex = -1;
            print();
            Literal5.Text = "ERROR!!!";
        }

    }
}