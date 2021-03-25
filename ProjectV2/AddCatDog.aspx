<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddCatDog.aspx.cs" Inherits="ProjectV2.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" container">
        <div class=" form-horizontal">
            <br/>
            <br/>
            <br/>
            <h2>Add Animal</h2>
            <div class=" form-group">
                <asp:Label ID="Label1" CssClass=" col-md-2  control-label" runat="server" Text="Animal"></asp:Label>
                <div class=" col-md-3 ">
                    <asp:TextBox ID="txtAnimal" CssClass=" form-control " runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAnimal" runat="server" CssClass=" text-danger" ErrorMessage="Required Animal" ControlToValidate="txtAnimal" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </div>
            </div>

                   

            <div class=" form-group">
                <div class=" col-md-2 "></div>
                <div class=" col-md-6">
                    <asp:Button ID="btnAddBrand" CssClass="btn btn-success" runat="server" Text="Add" OnClick="btnAddBrand_Click"   />
                    
                </div>
            </div>

           

            

        </div>
        <hr/>
        <h1>Sub Category</h1>
        <hr />

        <div class="panel panel-default">
            <div class="panel-heading">All Animal</div>

            <asp:Repeater ID="rptrAnimal" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Brand</th>

                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>

                <ItemTemplate>
                    <tr>
                        <th> <%# Eval("CatDogID") %> </th>
                        <td><%# Eval("CatDogName") %></td>
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
