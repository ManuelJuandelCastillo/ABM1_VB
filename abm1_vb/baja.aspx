<%@ Page Title="Baja usuario" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="baja.aspx.vb" Inherits="abm1_vb.baja" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-5">
        <div class="col-md-4">
            <div style="text-align:center">
                <h1 class="text-danger">Baja de usuario</h1>
            </div>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Button CssClass="btn btn-danger" ID="Button1" runat="server" Text="Eliminar" /><br /><br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=administracion;Integrated Security=True" DeleteCommand="DELETE FROM usuario WHERE (nombre = @nombre)" ProviderName="System.Data.SqlClient">
        <DeleteParameters>
            <asp:Parameter Name="nombre" />
        </DeleteParameters>
    </asp:SqlDataSource>
</asp:Content>
