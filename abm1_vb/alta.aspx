<%@ Page Title="Alta Usuario" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="alta.aspx.vb" Inherits="abm1_vb.alta" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row bg-light">
            <h1 class="text-success">Alta de usuario</h1>
        </div>
        <label>Nombre:</label>
        <asp:TextBox ID="txtName" CssClass="form-control col-4" runat="server"></asp:TextBox><br />
        <label>Clave:</label>
        <asp:TextBox ID="txtPass" CssClass="form-control col-4" runat="server"></asp:TextBox><br />
        <label>Mail:</label>
        <asp:TextBox ID="txtMail" CssClass="form-control col-4" runat="server"></asp:TextBox><br /><br />
        
        <asp:Button ID="Button1" CssClass="btn btn-success col-2" runat="server" Text="Crear usuario" /><br /><br />
        
        <asp:Label CssClass="alert-primary" ID="Label1" runat="server"></asp:Label>

    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=administracion;Integrated Security=True" InsertCommand="INSERT INTO usuario(nombre, clave, mail) VALUES (@nombre, @clave, @mail)" ProviderName="System.Data.SqlClient">
        <InsertParameters>
            <asp:Parameter Name="nombre" />
            <asp:Parameter Name="clave" />
            <asp:Parameter Name="mail" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
