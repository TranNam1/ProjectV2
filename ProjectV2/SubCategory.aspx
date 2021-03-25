<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="SubCategory.aspx.cs" Inherits="ProjectV2.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class=" container">
        <div class=" form-horizontal">
            <br/>
            <br/>
            <br/>
            <h2>Add SubCategory</h2>
            <div class=" form-group">
                <asp:Label ID="Label1" CssClass=" col-md-2  control-label" runat="server" Text="SubCategory Name"></asp:Label>
                <div class=" col-md-3 ">
                    <asp:TextBox ID="txtSubCategory" CssClass=" form-control " runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategoryName" runat="server" CssClass=" text-danger" ErrorMessage="Required SubCategoryName" ControlToValidate="txtSubCategory" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class=" form-group">
                <asp:Label ID="Label2" CssClass=" col-md-2  control-label" runat="server" Text="Main CategoryID "></asp:Label>
                <div class=" col-md-3 ">
                    <asp:DropDownList ID="ddlMainCatID" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategoryMainID" runat="server" CssClass=" text-danger" ErrorMessage="Required SubCategory MainID" ControlToValidate="ddlMainCatID" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </div>
            </div>

                   

            <div class=" form-group">
                <div class=" col-md-2 "></div>
                <div class=" col-md-6">
                    <asp:Button ID="btnAddSubCategory" CssClass="btn btn-success" runat="server" Text="Add Category" OnClick="btnAddSubCategory_Click" />
                    
                </div>
            </div>

           

            

        </div>

        <h1>Sub Category</h1>
        <hr />

        <div class="panel panel-default">
            <div class="panel-heading">All Sub Category</div>

            <asp:Repeater ID="rptrSubcat" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Brand</th>
                                <th>Main Category </th>

                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>

                <ItemTemplate>
                    <tr>
                        <th> <%# Eval("SubCatID") %> </th>
                        <td><%# Eval("SubCatName") %></td>
                        <td><%# Eval("CatName") %></td>
                        <td>Edit</td>
                    </tr>


                </ItemTemplate>

                <FooterTemplate>
                    </tbody>

            </table>

                </FooterTemplate>
            </asp:Repeater>



        </div>
    </div>

</asp:Content>
