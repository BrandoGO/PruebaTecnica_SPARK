Public Class Altas
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        FechaRegistro.Text = Now

    End Sub

    Protected Sub BtnReset_Click(sender As Object, e As EventArgs) Handles BtnReset.Click
        Nombre.Text = ""
        Apellidos.Text = ""
        Email.Text = ""
        Telefono.Text = ""
        DropArticulo.SelectedValue = 0
        Precio.Text = ""
        Cantidad.Text = ""
        DropMetodoPago.SelectedValue = 0
        LblTipoTarjeta.Visible = False
        DropTarjetas.SelectedValue = 0
        DropTarjetas.Visible = False
        LblNumeroTarjeta.Visible = False
        NumTarjeta.Text = ""
        NumTarjeta.Visible = False
        FechaRegistro.Text = Now
        Total.Text = ""
        Nombre.Focus()
    End Sub

    Protected Sub DropArticulo_SelectedIndexChanged(sender As Object, e As EventArgs)
        If DropArticulo.SelectedValue = 1 Then
            Precio.Text = "50"
        ElseIf DropArticulo.SelectedValue = 2 Then
            Precio.Text = "55"
        ElseIf DropArticulo.SelectedValue = 3 Then
            Precio.Text = "60"
        ElseIf DropArticulo.SelectedValue = 4 Then
            Precio.Text = "65"
        ElseIf DropArticulo.SelectedValue = 5 Then
            Precio.Text = "100"
        End If
    End Sub

    Protected Sub BtnCalcular_Click(sender As Object, e As EventArgs) Handles BtnCalcular.Click
        Total.Text = Precio.Text * Cantidad.Text
    End Sub

    Protected Sub BtnRegistrar_Click(sender As Object, e As EventArgs)
        DS_Registrar.Insert()
        Response.Write("<script type='text/javascript'> alert('Los datos se registraron correctamente') </script>")
        DropArticulo.SelectedValue = 0
        Precio.Text = ""
        Cantidad.Text = ""
        FechaRegistro.Text = Now
        Total.Text = ""
        Nombre.Focus()
    End Sub

    Protected Sub DropMetodoPago_SelectedIndexChanged(sender As Object, e As EventArgs)
        If DropMetodoPago.SelectedValue = 1 Then
            LblTipoTarjeta.Visible = False
            DropTarjetas.Visible = False
            DropTarjetas.SelectedValue = 0
            LblNumeroTarjeta.Visible = False
            NumTarjeta.Visible = False
            NumTarjeta.Text = ""
        ElseIf DropMetodoPago.SelectedValue = 2 Then
            LblTipoTarjeta.Visible = True
            DropTarjetas.Visible = True
            LblNumeroTarjeta.Visible = True
            NumTarjeta.Visible = True
        Else
            LblTipoTarjeta.Visible = False
            DropTarjetas.Visible = False
            DropTarjetas.SelectedValue = 0
            LblNumeroTarjeta.Visible = False
            NumTarjeta.Visible = False
            NumTarjeta.Text = ""
        End If
    End Sub

    Protected Sub BtnConsultas_Click(sender As Object, e As EventArgs)
        Response.Redirect("Consultas.aspx")
    End Sub
End Class