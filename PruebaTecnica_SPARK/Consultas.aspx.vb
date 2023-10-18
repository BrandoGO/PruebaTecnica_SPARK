Public Class Consultas
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        FechaRegistro.Text = Now
    End Sub

    Protected Sub BtnAltas_Click(sender As Object, e As EventArgs)
        Response.Redirect("Altas.aspx")
    End Sub

    Protected Sub BtnModificar_Click(sender As Object, e As EventArgs)
        DS_Modficiar.Update()
        GridView1.DataBind()
        Response.Write("<script type='text/javascript'> alert('El registro se ha modificado') </script>")
        ID.Text = ""
        Nombre.Text = ""
        Apellidos.Text = ""
        Email.Text = ""
        Telefono.Text = ""
        DropPedido.SelectedValue = 0
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
        ID.Focus()
    End Sub

    Protected Sub BtnEliminar_Click(sender As Object, e As EventArgs)
        DS_Eliminar.Delete()
        GridView1.DataBind()
        Response.Write("<script type='text/javascript'> alert('El registro se ha eliminado') </script>")
        ID.Text = ""
        Nombre.Text = ""
        Apellidos.Text = ""
        Email.Text = ""
        Telefono.Text = ""
        DropPedido.SelectedValue = 0
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
        ID.Focus()
    End Sub


End Class