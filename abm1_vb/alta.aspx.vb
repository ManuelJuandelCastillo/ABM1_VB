Imports System.Data.SqlClient
Public Class alta
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            SqlDataSource1.InsertParameters("nombre").DefaultValue = txtName.Text
            SqlDataSource1.InsertParameters("clave").DefaultValue = txtPass.Text
            SqlDataSource1.InsertParameters("mail").DefaultValue = txtMail.Text
            SqlDataSource1.Insert()
            Label1.Text = "Usuario creado"
        Catch ex As Exception
            Label1.Text = ex.Message
        End Try
    End Sub
End Class