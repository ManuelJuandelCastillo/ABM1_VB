<%@ Page Title="Modificar usuario" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="modificacion.aspx.vb" Inherits="abm1_vb.modificacion" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-5">
        <div class="col-md-4">
            <div style="text-align:center">
                <h1>Modificar usuario</h1>
            </div>
            <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="txtName" runat="server"></asp:TextBox><br />
            <asp:Button CssClass="btn btn-primary col-2" ID="btnSearch" runat="server" Text="Buscar" />
            <br /><br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=administracion;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="select clave, mail from usuario where nombre=@nombre" UpdateCommand="UPDATE usuario SET clave = @clave, mail = @mail WHERE (nombre = @nombre)">
                <SelectParameters>
                    <asp:Parameter Name="nombre" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="clave" />
                    <asp:Parameter Name="nombre" />
                    <asp:Parameter Name="mail" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:Label ID="Label2" runat="server" Text="clave:"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="txtClave" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="mail:"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="txtMail" runat="server"></asp:TextBox><br />
            <asp:Button CssClass="btn btn-success col-2" ID="btnConfirm" runat="server" Text="Guardar cambios" /><br />
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </div>
    </div>

</asp:Content>
