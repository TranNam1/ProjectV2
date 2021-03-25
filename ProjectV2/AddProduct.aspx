<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="ProjectV2.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <br/>
            <br/>
            <br/>
            <br/>
            <h2> Add Product</h2>
            <hr/>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Product Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtProductName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="SellingPrice"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtsellingPrice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Brand"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategory" CssClass="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="SubCategory"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label17" runat="server" CssClass="col-md-2 control-label" Text="CatDog"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCatDog" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label18" runat="server" CssClass="col-md-2 control-label" Text="Quantity"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Description"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtDescription" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="Product Detail"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtProductDetail" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg1" CssClass="form-control" runat="server" />
                </div>
            </div>

            
            <div class="form-group">
                <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg2" CssClass="form-control" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg3" CssClass="form-control" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label12" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg4" CssClass="form-control" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label13" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg5" CssClass="form-control" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label14" runat="server" CssClass="col-md-2 control-label" Text="free Delivery"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="cbFreeDelivery" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label15" runat="server" CssClass="col-md-2 control-label" Text="30 days Return"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="cb30Ret" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label16" runat="server" CssClass="col-md-2 control-label" Text="COD"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="cbCOD" runat="server" />
                </div>
            </div>
            

            <div class=" form-group">
                    <div class=" col-md-2 "></div>
                    <div class=" col-md-6">
                        <asp:Button ID="btnAdd" CssClass="btn btn-success" runat="server" Text="Add Product;" OnClick="btnAdd_Click" />
                        
                    </div>
                </div>
            
        </div>
    </div>

</asp:Content>
