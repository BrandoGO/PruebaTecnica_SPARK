<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Altas.aspx.vb" Inherits="PruebaTecnica_SPARK.Altas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Formulario</title>
    <link href="Estilos.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 625px;
            text-align: right;
        }
        .auto-style3 {
            width: 700px;
        }
        .auto-style4 {
            font-family: Arial, Helvetica, sans-serif;
            width: 100%;
            height: 698px;
        }
        .auto-style5 {
            height: 1174px;
        }
        .auto-style6 {
            width: 700px;
            text-align: left;
        }
        .auto-style13 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-style: italic;
            font-size: xx-large;
        }
        .auto-style14 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style15 {
            width: 625px;
        }
    </style>
    
</head>
<body style="height: 1200px">
    
    <form id="form1" runat="server" class="auto-style5">
        <span class="auto-style14"><strong></strong></span>
                    
&nbsp;<span class="auto-style14"><strong></strong></span>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <br />
        <span class="auto-style13"></span><br />

        <table class="auto-style4">

            <tr>
                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnReset" runat="server" Text="Limpiar formulario" CssClass="button button6" OnClick="BtnReset_Click" />
                &nbsp;&nbsp;
                    
                &nbsp; <asp:Button ID="BtnConsultas" runat="server" Text="Consultas" CssClass="button button1" OnClick="BtnConsultas_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Nombre</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Nombre" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Apellidos</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Apellidos" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">E-Mail</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Email" runat="server" TextMode="Email" CssClass="textbox"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Telefono</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Telefono" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3">
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Articulo</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropArticulo" runat="server" DataSourceID="DS_Articulo" DataTextField="articulo" DataValueField="id_articulo" AutoPostBack="True" CssClass="textbox" OnSelectedIndexChanged="DropArticulo_SelectedIndexChanged">
                    </asp:DropDownList>
                    &nbsp;
&nbsp;&nbsp;
                <asp:SqlDataSource ID="DS_Articulo" runat="server" ConnectionString="<%$ ConnectionStrings:CS_PruebaTecnica_SPARK %>" SelectCommand="SELECT * FROM [Cat_Articulo]" ProviderName="<%$ ConnectionStrings:CS_PruebaTecnica_SPARK.ProviderName %>"></asp:SqlDataSource></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    Precio
                    <asp:TextBox ID="Precio" runat="server" TextMode="Number" CssClass="textbox"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    Cantidad
                    <asp:TextBox ID="Cantidad" runat="server" TextMode="Number" CssClass="textbox"></asp:TextBox>
&nbsp;<asp:Button ID="BtnCalcular" runat="server" Text="Calcular" CssClass="button button2" OnClick="BtnCalcular_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Metodo de pago</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropMetodoPago" runat="server" DataSourceID="DS_MetodoPago" DataTextField="metodo_pago" DataValueField="id_pago" AutoPostBack="True" CssClass="textbox" OnSelectedIndexChanged="DropMetodoPago_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="DS_MetodoPago" runat="server" ConnectionString="<%$ ConnectionStrings:CS_PruebaTecnica_SPARK %>" SelectCommand="SELECT * FROM [Cat_MetodoPago]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="LblTipoTarjeta" runat="server" Text="Tipo de tarjeta" Visible="False"></asp:Label>
                &nbsp;<asp:DropDownList ID="DropTarjetas" runat="server" Visible="False" DataSourceID="DS_Tarjetas" DataTextField="tarjeta" DataValueField="id_tarjeta" CssClass="textbox">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="DS_Tarjetas" runat="server" ConnectionString="<%$ ConnectionStrings:CS_PruebaTecnica_SPARK %>" SelectCommand="SELECT * FROM [Cat_Tarjetas]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="LblNumeroTarjeta" runat="server" Text="Numero de tarjeta" Visible="False"></asp:Label>
                &nbsp;<asp:TextBox ID="NumTarjeta" runat="server" Visible="False" CssClass="textbox"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Fecha de registro</td>
                <td class="auto-style3"><asp:TextBox ID="FechaRegistro" runat="server" TextMode="DateTime" CssClass="textbox"></asp:TextBox>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Total</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Total" runat="server" TextMode="Number" CssClass="textbox"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="BtnRegistrar" runat="server" Text="Registrar" CssClass="button button3" OnClick="BtnRegistrar_Click" /><asp:SqlDataSource runat="server" ID="DS_Registrar" ConnectionString="<%$ ConnectionStrings:CS_PruebaTecnica_SPARK %>" SelectCommand="SELECT * FROM [Formulario]" InsertCommand="INSERT INTO Formulario(nombre, apellidos, email, telefono, articulo, precio, cantidad, metodo_pago, tipo_tarjeta, num_tarjeta, fecha_registro, total) VALUES (@nombre, @apellidos, @email, @telefono, @articulo, @precio, @cantidad, @metodo_pago, @tipo_tarjeta, @num_tarjeta, @fecha_registro, @total)">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="Nombre" PropertyName="Text" Name="nombre"></asp:ControlParameter>
                            <asp:ControlParameter ControlID="Apellidos" PropertyName="Text" Name="apellidos"></asp:ControlParameter>
                            <asp:ControlParameter ControlID="Email" PropertyName="Text" Name="email"></asp:ControlParameter>
                            <asp:ControlParameter ControlID="Telefono" PropertyName="Text" Name="telefono"></asp:ControlParameter>
                            <asp:ControlParameter ControlID="DropArticulo" PropertyName="SelectedValue" Name="articulo"></asp:ControlParameter>
                            <asp:ControlParameter ControlID="Precio" PropertyName="Text" Name="precio"></asp:ControlParameter>
                            <asp:ControlParameter ControlID="Cantidad" PropertyName="Text" Name="cantidad"></asp:ControlParameter>
                            <asp:ControlParameter ControlID="DropMetodoPago" PropertyName="SelectedValue" Name="metodo_pago"></asp:ControlParameter>
                            <asp:ControlParameter ControlID="DropTarjetas" PropertyName="SelectedValue" Name="tipo_tarjeta"></asp:ControlParameter>
                            <asp:ControlParameter ControlID="NumTarjeta" PropertyName="Text" Name="num_tarjeta"></asp:ControlParameter>
                            <asp:ControlParameter ControlID="FechaRegistro" PropertyName="Text" Name="fecha_registro"></asp:ControlParameter>
                            <asp:ControlParameter ControlID="Total" PropertyName="Text" Name="total"></asp:ControlParameter>
                        </InsertParameters>
                    </asp:SqlDataSource>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    
</body>
</html>