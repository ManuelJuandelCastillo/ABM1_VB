Imports System.Data.SqlClient
Public Class consulta
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            SqlDataSource1.SelectParameters("nombre").DefaultValue = TextBox1.Text
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader
            Dim datos As IDataReader
            datos = SqlDataSource1.Select(DataSourceSelectArguments.Empty)
            If datos.Read Then
                Label1.Text = "clave: " & datos("clave") & "<br/>" & "mail: " & datos("mail")
            Else
                Label1.Text = "No existe usuario con ese nombre"
            End If
        Catch ex As Exception
            Label1.Text = ex.Message
        End Try
    End Sub
End Class