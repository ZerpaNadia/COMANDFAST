<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DetallePedido.aspx.cs" Inherits="COMANDFAST.Web.DetallePedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Assets/css/time-line.css" type="text/css" rel="stylesheet" media="all"/>  
    <script src='Assets/js/kit.font.js'></script>
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
			font-size: 2.2rem;
			position: inherit;
		}

		.book-form input[type="text"] {
			padding: 10px;
			width: 20%
		}
		.menu-text{
			margin-bottom: 0px;
		}

		.fa-hamburger {
			color: #fff;
			font-size: 32px;
			padding-top: 8px;
			padding-left: 9px;
		}

        #menu {
            min-height:365px;
        }

        .menu-text-right{
	        float:right;
	        width: 25%;
        }
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="recipes-w3l-agile" id="menu">
	  <div class="container">
	    <h2 class="project-name">DETALLE DEL PEDIDO</h2><br />
	      <div class="agileits-tabs" style="margin-left: 3rem;">
              <div class="col-md-8 col-md-offset-2">
	      		<div class="menu-text">									      
					<div class="menu-text-left">
					    <div class="rep-w3l-text book-form">
							  <h4>NRO. PEDIDO: &nbsp;&nbsp;
                                  <asp:Label ID="lblIdPedido" runat="server" Text="" style="font-weight: bold;"></asp:Label>
							  </h4>			  
						</div>											
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
                <asp:Repeater ID="repProductos" runat="server">
                    <ItemTemplate>
                        <div class="menu-text">
							<div class="menu-text-left">
<%--								<div class="rep-w3l-img">
									<img src="Assets/images/f1.jpg" alt=" " class="img-responsive"/>
								</div>--%>
                                <div class="rep-w3l-text book-form">
                                    <asp:HiddenField ID="Id" runat="server" Value='<%# Bind("IdProducto") %>'></asp:HiddenField>
							        <h4><asp:Label ID="Label1" runat="server" Text='<%# Eval("TituloProducto") %>'></asp:Label></h4>
							    </div>
						        <div class="clearfix"> </div>
							</div>
                            <div class="menu-text-right">
						        <h4><asp:Label ID="lblPrecio" runat="server" Text='<%# Eval("Cantidad") + " x $ " + Eval("Precio") %>'></asp:Label></h4>
					        </div>
							<div class="clearfix"> </div>
						</div>	
                    </ItemTemplate>
                </asp:Repeater>
				<div class="menu-text">
					<div class="menu-text-left"><br>
						<h4 style="font-weight: bold;">SUBTOTAL....... </h4>
					</div>
					<div class="menu-text-right">
						<h4  style="font-weight: bold;">
                            <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>
						</h4>
					</div>
					<div class="clearfix"> </div>
				</div></div>
		  	</div>		  
	  	</div>
	</div>
	<div class="container">
    	<h1 class="project-name">ESTADO</h1>
        <div class="col-md-10 col-md-offset-1">
		<div id="timeline">
            <asp:Repeater ID="repEstado" runat="server">
                <ItemTemplate>
                    <div class="timeline-item">
				        <div class="timeline-icon">
                            <i class='fas fa-hamburger'></i>
				        </div>
				        <div class="timeline-content">
					        <h2><%# Eval("EstadoNombre") %></h2>
					        <p>
						        Fecha: <%# Eval("Fecha") %></h2>
					        </p>
				        </div>
			        </div>
                </ItemTemplate>
            </asp:Repeater>
		</div>
        </div>
	</div>
</asp:Content>
