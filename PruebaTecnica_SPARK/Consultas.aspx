<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Consultas.aspx.vb" Inherits="PruebaTecnica_SPARK.Consultas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Consultas</title>
    <link href="Estilos.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
        .auto-style2 {
            width: 600px;
            text-align: right;
        }
        .auto-style4 {
            font-family: Arial, Helvetica, sans-serif;
            width: 100%;
            height: 781px;
        }
        .auto-style5 {
            height: 1633px;
        }
        .auto-style6 {
            width: 430px;
            text-align: left;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style14 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style13 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-style: italic;
            font-size: xx-large;
        }
        .auto-style15 {
            width: 430px;
        }
        .auto-style16 {
            font-size: medium;
        }
        .auto-style17 {
            width: 600px;
            text-align: right;
            height: 55px;
        }
        .auto-style18 {
            width: 430px;
            height: 55px;
        }
        .auto-style19 {
            height: 55px;
        }
    </style>
    <link rel="icon" type="image/png" sizes="16x16" href="~/Imagenes/logo.png"/>
</head>
<body style="height: 1655px">
    
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
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BtnReset" runat="server" Text="Limpiar formulario" CssClass="button button6" />
                &nbsp;&nbsp;
                                    &nbsp; <asp:Button ID="BtnAltas" runat="server" Text="Altas Formulario" CssClass="button button3" OnClick="BtnAltas_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">ID</td>
                <td class="auto-style15">
                    <asp:TextBox ID="ID" runat="server" TextMode="Number" CssClass="textbox"></asp:TextBox>
&nbsp;<asp:Button ID="BtnBuscar" runat="server" Text="Buscar" CssClass="button button6" />
&nbsp;<asp:SqlDataSource ID="DS_BuscarID" runat="server" ConnectionString="<%$ ConnectionStrings:CS_Proyecto_PedroChavez %>" SelectCommand="SELECT ID, Nombre, Apellido, Email, Telefono, Direccion, Pedido, Precio, Cantidad, MetodoPago, TipoTarjeta, NumeroTarjeta, FechaRegistro, Total FROM Altas WHERE (ID = @id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ID" Name="id" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Nombre</td>
                <td class="auto-style15">
                    <asp:TextBox ID="Nombre" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="BtnModificar" runat="server" Text="Modificar" CssClass="button button7" OnClick="BtnModificar_Click" />
                    <asp:SqlDataSource ID="DS_Modficiar" runat="server" ConnectionString="<%$ ConnectionStrings:CS_Proyecto_PedroChavez %>" SelectCommand="SELECT * FROM [Altas]" UpdateCommand="UPDATE Altas SET Nombre = @nombre, Apellido = @apellido, Email = @email, Telefono = @telefono, Direccion = @direccion, Pedido = @pedido, Precio = @precio, Cantidad = @cantidad, MetodoPago = @metodopago, TipoTarjeta = @tipotarjeta, NumeroTarjeta = @numtarjeta, Total = @total WHERE (ID = @id)">
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="Nombre" Name="nombre" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Apellidos" Name="apellido" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Email" Name="email" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Telefono" Name="telefono" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Direccion" Name="direccion" PropertyName="Text" />
                            <asp:ControlParameter ControlID="DropPedido" Name="pedido" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="Precio" Name="precio" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Cantidad" Name="cantidad" PropertyName="Text" />
                            <asp:ControlParameter ControlID="DropMetodoPago" Name="metodopago" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="DropTarjetas" Name="tipotarjeta" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="NumTarjeta" Name="numtarjeta" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Total" Name="total" PropertyName="Text" />
                            <asp:ControlParameter ControlID="ID" Name="id" PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Apellido</td>
                <td class="auto-style15">
                    <asp:TextBox ID="Apellidos" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">E-Mail</td>
                <td class="auto-style15">
                    <asp:TextBox ID="Email" runat="server" TextMode="Email" CssClass="textbox"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="BtnEliminar" runat="server" Text="Eliminar" CssClass="button button4" OnClick="BtnEliminar_Click" />
                    <asp:SqlDataSource ID="DS_Eliminar" runat="server" ConnectionString="<%$ ConnectionStrings:CS_Proyecto_PedroChavez %>" DeleteCommand="DELETE FROM Altas WHERE (ID = @id)" SelectCommand="SELECT * FROM [Altas]">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="ID" Name="id" PropertyName="Text" />
                        </DeleteParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Telefono</td>
                <td class="auto-style15">
                    <asp:TextBox ID="Telefono" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style18">
                    
                </td>
                <td class="auto-style19"><asp:Button ID="BtnConsultaGeneral" runat="server" Text="Consulta General" CssClass="button button1" />
                &nbsp;<asp:Button ID="BtnCerrarConsultaGeneral" runat="server" Text="Cerrar consulta general" Visible="False" CssClass="button button1" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Articulo</td>
                <td class="auto-style15">
                    
                    &nbsp;
&nbsp;&nbsp;
                <asp:DropDownList ID="DropArticulo" runat="server" DataSourceID="DS_Articulo" DataTextField="articulo" DataValueField="id_articulo" AutoPostBack="True" CssClass="textbox" OnSelectedIndexChanged="DropArticulo_SelectedIndexChanged">
</asp:DropDownList><asp:SqlDataSource ID="DS_Articulo" runat="server" ConnectionString="<%$ ConnectionStrings:CS_PruebaTecnica_SPARK %>" SelectCommand="SELECT * FROM [Cat_Articulo]" ProviderName="<%$ ConnectionStrings:CS_PruebaTecnica_SPARK.ProviderName %>"></asp:SqlDataSource></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style15">
                    Precio
                    <asp:TextBox ID="Precio" runat="server" TextMode="Number" CssClass="textbox"></asp:TextBox>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style15">
                    Cantidad
                    <asp:TextBox ID="Cantidad" runat="server" TextMode="Number" CssClass="textbox"></asp:TextBox>
&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Metodo de pago</td>
                <td class="auto-style15">
                    <asp:DropDownList ID="DropMetodoPago" runat="server" DataSourceID="DS_MetodoPago" DataTextField="MetodoPago" DataValueField="ID_MetodoPago" AutoPostBack="True" CssClass="textbox">
                    </asp:DropDownList><asp:SqlDataSource ID="DS_MetodoPago" runat="server" ConnectionString="<%$ ConnectionStrings:CS_PruebaTecnica_SPARK %>" SelectCommand="SELECT * FROM [Cat_MetodoPago]"></asp:SqlDataSource>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style15">
                    <asp:Label ID="LblTipoTarjeta" runat="server" Text="Tipo de tarjeta" Visible="False"></asp:Label>
                &nbsp;<asp:DropDownList ID="DropTarjetas" runat="server" Visible="False" DataSourceID="DS_Tarjetas" DataTextField="TipoTarjeta" DataValueField="ID_TipoTarjeta" CssClass="textbox">
                    </asp:DropDownList><asp:SqlDataSource ID="DS_Tarjetas" runat="server" ConnectionString="<%$ ConnectionStrings:CS_PruebaTecnica_SPARK %>" SelectCommand="SELECT * FROM [Cat_Tarjetas]"></asp:SqlDataSource>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style15">
                    <asp:Label ID="LblNumeroTarjeta" runat="server" Text="Numero de tarjeta" Visible="False"></asp:Label>
                &nbsp;<asp:TextBox ID="NumTarjeta" runat="server" Visible="False" CssClass="textbox"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Fecha de registro</td>
                <td class="auto-style15">
                    <asp:TextBox ID="FechaRegistro" runat="server" TextMode="DateTime" CssClass="textbox"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Total</td>
                <td class="auto-style15">
                    <asp:TextBox ID="Total" runat="server" TextMode="Number" CssClass="textbox"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
        <div class="auto-style7">
        <asp:Panel ID="Panel1" runat="server" Visible="False" CssClass="auto-style14">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="DS_ConsultaGeneral" CellPadding="4" ForeColor="#333333">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                                    <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                                    <asp:BoundField DataField="Pedido" HeaderText="Pedido" SortExpression="Pedido" />
                                    <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                                    <asp:BoundField DataField="MetodoPago" HeaderText="Metodo de pago" SortExpression="MetodoPago" />
                                    <asp:BoundField DataField="TipoTarjeta" HeaderText="Tipo de tarjeta" SortExpression="TipoTarjeta" />
                                    <asp:BoundField DataField="NumeroTarjeta" HeaderText="Numero de tarjeta" SortExpression="NumeroTarjeta" />
                                    <asp:BoundField DataField="FechaRegistro" HeaderText="Fecha de registro" SortExpression="FechaRegistro" />
                                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                                </Columns>
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="DS_ConsultaGeneral" runat="server" ConnectionString="<%$ ConnectionStrings:CS_Proyecto_PedroChavez %>" SelectCommand="SELECT Altas.ID, Altas.Nombre, Altas.Apellido, Altas.Email, Altas.Telefono, Altas.Direccion, Cat_Pedido.Pedido, Altas.Precio, Altas.Cantidad, Cat_MetodoPago.MetodoPago, Cat_TipoTarjeta.TipoTarjeta, Altas.NumeroTarjeta, Altas.FechaRegistro, Altas.Total FROM Altas INNER JOIN Cat_Pedido ON Altas.Pedido = Cat_Pedido.ID_Pedido INNER JOIN Cat_MetodoPago ON Altas.MetodoPago = Cat_MetodoPago.ID_MetodoPago INNER JOIN Cat_TipoTarjeta ON Altas.TipoTarjeta = Cat_TipoTarjeta.ID_TipoTarjeta"></asp:SqlDataSource>
                            <br />
                            </asp:Panel>
        </div>
    </form>
    
</body>
</html>
