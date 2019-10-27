Imports System.Data.SqlClient
Public Class baja
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            SqlDataSource1.DeleteParameters("nombre").DefaultValue = TextBox1.Text
            Dim bandera As Integer
            bandera = SqlDataSource1.Delete()
            If bandera = 1 Then
                Label2.Text = "Usuario eliminado"
            Else
                Label2.Text = "Usuario inexistente"
            End If
        Catch ex As Exception
            Label2.Text = ex.Message
        End Try
    End Sub
End Class