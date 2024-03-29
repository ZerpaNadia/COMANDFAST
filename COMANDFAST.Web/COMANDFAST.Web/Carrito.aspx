﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="COMANDFAST.Web.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
		@media(max-width:1366px){
			.banner {
		    min-height: 90px;
			}
		}

		@media (max-width: 736px) {
			.hi-icon {
			height: 55px!important;
			width: 55px!important;
			}

			.menu-text-right h4 {
				margin-left:0px!important;
			}

		}

		@media(max-width:414px){
			.banner {
			min-height: 70px;
			}

			.agregar {
				height: 28px;
			}

			.quitar {
				margin-top: 0px;
				height: 28px;
			}
		}

		.nav-tabs > li {
			margin-bottom: 20px;
		}

		.hi-icon {
			height: 70px;
			width: 70px;
		}

		.book-form span{
			position: inherit;
            color:#3b3b3e;
		}

		.book-form input[type="text"] {
			padding: 10px;
			width: 60px;
			text-align: center;
			position: absolute;
			height: 33px;
			margin-top: 10px;
		}

        .agregar {
            margin-left: 63px;
        }
	</style>
    <script  src="https://code.jquery.com/jquery-3.1.1.js"  integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA="  crossorigin="anonymous"></script>
    <script type="text/javascript">
        function Sumar(indice) {
            cant = $('#ContentPlaceHolder1_repProductos_txtCantidad_' + indice).val();

			cant = parseInt(cant) + 1;

			$('#ContentPlaceHolder1_repProductos_txtCantidad_' + indice).val(cant);
            $('#ContentPlaceHolder1_repProductos_txtCantidad_' + indice).text(cant);
        }

        function Restar(indice) {
            cant = $('#ContentPlaceHolder1_repProductos_txtCantidad_' + indice).val();

		    cant = parseInt(cant) - 1;

		    if (cant < 0) {
		        cant = 0;
		    }

		    $('#ContentPlaceHolder1_repProductos_txtCantidad_' + indice).val(cant);
            $('#ContentPlaceHolder1_repProductos_txtCantidad_' + indice).text(cant);
        }
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<div class="recipes-w3l-agile" id="menu">
	  <div class="container">
	    <h3 class="tittle">CARRITO</h3>
	      <div class="agileits-tabs">
              <div class="col-md-8 col-md-offset-2">
              <asp:Repeater ID="repProductos" runat="server">
                    <ItemTemplate>
                        <div class="menu-text">
							<div class="menu-text-left">
								<div class="rep-w3l-img">
									<img src="Assets/images/f1.jpg" alt=" " class="img-responsive"/>
								</div>
                                <div class="rep-w3l-text book-form">
                                    <asp:HiddenField ID="Id" runat="server" Value='<%# Bind("IdProducto") %>'></asp:HiddenField>
							        <h4><asp:Label ID="Label1" runat="server" Text='<%# Eval("TituloProducto") %>'></asp:Label></h4>
							        <div>
                                        <input type="button" id="btnRestar" value="" onclick='<%# "Restar(" + Container.ItemIndex + ")"%>' class="submit quitar">
                                        <asp:TextBox ID="txtCantidad" Text='<%# Eval("Cantidad") %>' CssClass="text-Cantidad" runat="server"></asp:TextBox>
                                        <input type="button" id="btnAgregar" value="" onclick='<%# "Sumar(" + Container.ItemIndex + ")"%>' class="submit agregar">
                                    </div>
							    </div>
						        <div class="clearfix"> </div>
							</div>
                            <div class="menu-text-right">
						        <h4><asp:Label ID="lblPrecio" runat="server" Text='<%# "$ " + Eval("Precio") %>'></asp:Label></h4>
					        </div>
							<div class="clearfix"> </div>
						</div>	
                    </ItemTemplate>
                </asp:Repeater>
                
				<div class="menu-text">
					<div class="menu-text-left">
						<br>
						<h4>SUBTOTAL............................ </h4>
					</div>
					<div class="menu-text-right">
						<h4><asp:Label ID="lblTotal" runat="server" Text=""></asp:Label></h4>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="menu-text">
					<div class="menu-text-left">
						<br>
						<h4>Aclaraciones </h4>
						<br>
                        <asp:TextBox ID="txtDescripcion"  cols="7" rows="5" TextMode="MultiLine" runat="server" style="margin-left: 6rem; width: 100%"></asp:TextBox>
					</div>
					<div class="menu-text-right">						
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="menu-text"><br>
					<div class="menu-text-right">
                        <asp:Button ID="btnConfirmar" class="boton-principal" runat="server" Text="Confirmar" OnClick="btnConfirmar_Click" />
					</div>
				</div></div>
		  </div>		  
	  </div>
	</div>
</asp:Content>
