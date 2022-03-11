<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="wrapper">
	<div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           Category Manage
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Category</label>
                                   
                                   <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                                   
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Status</label>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                        RepeatDirection="Horizontal">
                                        <asp:ListItem Value="0">Active</asp:ListItem>
                                        <asp:ListItem Value="1">Inactive</asp:ListItem>
                                    </asp:RadioButtonList>
                                    
                                </div>
                              
                              <asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-info" 
                                     onclick="Button1_Click"></asp:Button>
                                
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Literal ID="Literal5" runat="server"></asp:Literal>
                                 <br />
                                 
                               
                                 <br />
                                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                     BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                                     CellPadding="4" CellSpacing="2" ForeColor="Black" Width="649px">
                                     <Columns>
                                         <asp:TemplateField HeaderText="Id">
                                             <ItemTemplate>
                                                 <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("cid") %>'></asp:Literal>
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                         <asp:TemplateField HeaderText="CategoryName">
                                             <ItemTemplate>
                                                 <asp:Literal ID="Literal7" runat="server" Text='<%# Eval("category") %>'></asp:Literal>
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Status">
                                             <ItemTemplate>
                                                 <asp:Literal ID="Literal8" runat="server" Text='<%# Eval("status") %>'></asp:Literal>
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Edit">
                                             <ItemTemplate>
                                                 <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("cid") %>' 
                                                     onclick="Button2_Click" Text="Edit" />
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Delete">
                                             <ItemTemplate>
                                                 <asp:Button ID="Button3" runat="server" CommandArgument='<%# Eval("cid") %>' 
                                                     onclick="Button3_Click" Text="Delete" />
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                     </Columns>
                                     <FooterStyle BackColor="#CCCCCC" />
                                     <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                     <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                     <RowStyle BackColor="White" />
                                     <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                     <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                     <SortedAscendingHeaderStyle BackColor="#808080" />
                                     <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                     <SortedDescendingHeaderStyle BackColor="#383838" />
                                 </asp:GridView>
                                 
                               
                                 <br />
                            </form>
                                
                            </div>

                        </div>
                    </section>

            </div>

    </div>
</div>
</asp:Content>

