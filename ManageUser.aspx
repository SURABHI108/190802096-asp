<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"  EnableEventValidation="false" CodeFile="ManageUser.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="wrapper">
	<div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Basic Forms
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">User Name</label>
                                   <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                                   
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <asp:TextBox ID="TextBox2" runat="server"  class="form-control"></asp:TextBox>
                                    
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                                    
                                </div>
                              
                                <asp:Button ID="Button3" runat="server"  class="btn btn-info" Text="Update" 
                                     onclick="Button3_Click"></asp:Button>
                                
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Literal ID="Literal5" runat="server"></asp:Literal>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                                    CellPadding="3" ForeColor="Black" GridLines="Vertical" 
                                     onselectedindexchanged="GridView1_SelectedIndexChanged">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:TemplateField HeaderText="id">
            <ItemTemplate>
                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="name">
            <ItemTemplate>
                <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("name") %>'></asp:Literal>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="email">
            <ItemTemplate>
                <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("email") %>'></asp:Literal>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="password">
            <ItemTemplate>
                <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("password") %>'></asp:Literal>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Delete">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("id") %>' 
                    onclick="Button1_Click" Text="Delete" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Edit">
            <ItemTemplate>
                <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("id") %>' 
                    onclick="Button2_Click" Text="Edit" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>

    </div>
</div>
</asp:Content>


