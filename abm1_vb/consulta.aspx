<%@ Page Title="consulta usuario" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="consulta.aspx.vb" Inherits="abm1_vb.consulta" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-5">
        <div class="container mt-5">
            <div class="col-4">
                <h1 class="text-primary">Datos de usuario</h1>
            </div>
            <label>Ingrese el nombre que desea buscar</label>
            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox><br />
            <br />
            <asp:Button CssClass="btn btn-primary col-2" ID="Button1" runat="server" Text="Buscar" /><br /><br />
            <asp:Label ID="Label1" runat="server"></asp:Label><br />
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=administracion;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT clave, mail FROM usuario WHERE (nombre = @nombre)">
        <SelectParameters>
            <asp:Parameter Name="nombre" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>