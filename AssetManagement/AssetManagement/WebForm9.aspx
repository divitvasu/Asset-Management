<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="AssetManagement.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-8 col-sm-12 align-self-center">
            <div class="card bg-white m-b-30">
                <div class="card-body new-user">
                    <h5 class="header-title mb-4 mt-0">Members Profiles</h5>
                    <div class="table-responsive">
                        <!--<asp:DropDownList CssClass="btn btn-secondary dropdown-toggle" runat="server" ID="AssetList">                   
                        </asp:DropDownList>-->
                        <asp:GridView ID="GridView1" runat="server" CssClass="card bg-white m-b-30" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Mobile], [Department] FROM [user_master] WHERE ([Status] = @Status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
