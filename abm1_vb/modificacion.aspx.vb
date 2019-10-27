Imports System.Data.SqlClient
Public Class modificacion
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        Try
            SqlDataSource1.SelectParameters("nombre").DefaultValue = txtName.Text
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader
            Dim datos As IDataReader = SqlDataSource1.Select(DataSourceSelectArguments.Empty)

            If datos.Read Then
                txtClave.Text = datos("clave")
                txtMail.Text = datos("mail")
            Else
                lblMensaje.Text = "Usuario inexistente"
            End If
        Catch ex As Exception
            lblMensaje.Text = ex.Message
        End Try
    End Sub

    Protected Sub btnConfirm_Click(sender As Object, e As EventArgs) Handles btnConfirm.Click
        Try
            SqlDataSource1.UpdateParameters("clave").DefaultValue = txtClave.Text
            SqlDataSource1.UpdateParameters("mail").DefaultValue = txtMail.Text
            SqlDataSource1.UpdateParameters("nombre").DefaultValue = txtName.Text

            Dim flag As Integer = SqlDataSource1.Update()

            If flag = 1 Then
                lblMensaje.Text = "Usuario actualizado"
            Else
                lblMensaje.Text = "Usuario inexitente"
            End If
        Catch ex As Exception
            lblMensaje.Text = ex.Message
        End Try
    End Sub
End Class