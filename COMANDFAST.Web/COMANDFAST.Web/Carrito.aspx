<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="COMANDFAST.Web.Carrito" %>
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
			font-size: 2.2rem;
			position: inherit;
		}

		.book-form input[type="text"] {
			padding: 10px;
			width: 20%
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<div class="recipes-w3l-agile" id="menu">
	  <div class="container">
	    <h3 class="tittle">CARRITO</h3>
	      <div class="agileits-tabs">
				<div class="menu-text">									      
					<div class="menu-text-left">
						<div class="rep-w3l-img">
						  <img src="Assets/images/f1.jpg" alt=" " class="img-responsive"/>
						</div>
					    <div class="rep-w3l-text book-form">
							  <h4>DEL BOSQUE............................</h4>
							  <span class="fa fa-minus-circle" aria-hidden="true"></span>
							  <input type="text" value="1" name="">
							  <span class="fa fa-plus-circle" aria-hidden="true"></span>						  
							</div>											
						<div class="clearfix"> </div>
					</div>
					<div class="menu-text-right">
						<h4>$ 240</h4>
					</div>
					<div class="clearfix"> </div>
				</div>	
				<div class="menu-text">
					<div class="menu-text-left">
							<div class="rep-w3l-img">
							  <img src="Assets/images/f1.jpg" alt=" " class="img-responsive">
							</div>
						   <div class="rep-w3l-text book-form">
							  <h4>DEL BOSQUE............................</h4>
							  <span class="fa fa-minus-circle" aria-hidden="true"></span>
							  <input type="text" value="1" name="">
							  <span class="fa fa-plus-circle" aria-hidden="true"></span>
							</div>							
							<div class="clearfix"> </div>
						</div>
					<div class="menu-text-right">
						<h4>$ 240</h4>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="menu-text">
					<div class="menu-text-left">
							<div class="rep-w3l-img">
							  <img src="Assets/images/f3.jpg" alt=" " class="img-responsive">
							</div>
						   <div class="rep-w3l-text book-form">
							  <h4>PAPAS FRITAS............................</h4>
							  <span class="fa fa-minus-circle" aria-hidden="true"></span>
							  <input type="text" value="1" name="">
							  <span class="fa fa-plus-circle" aria-hidden="true"></span>
							</div>							
							<div class="clearfix"> </div>
						</div>
					<div class="menu-text-right">
						<h4>$ 80</h4>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="menu-text">
					<div class="menu-text-left">
						<div class="rep-w3l-img">
						  <img src="Assets/images/d1.jpg" alt=" " class="img-responsive">
						</div>
					     <div class="rep-w3l-text  book-form">
						   <h4>AGUA/GASEOSAS...........</h4>
						  	<span class="fa fa-minus-circle" aria-hidden="true"></span>
							  <input type="text" value="2" name="">
							  <span class="fa fa-plus-circle" aria-hidden="true"></span>
						</div>						
						<div class="clearfix"> </div>
					</div>
					<div class="menu-text-right">
						<h4>$ 50</h4>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="menu-text">
					<div class="menu-text-left">
						<br>
						<h4>SUBTOTAL............................ </h4>
					</div>
					<div class="menu-text-right">
						<h4>$ 590</h4>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="menu-text">
					<div class="menu-text-left">
						<br>
						<h4>Aclaraciones </h4>
						<br>
						<textarea cols="7" rows="5" style="margin-left: 6rem; width: 100%"></textarea>
					</div>
					<div class="menu-text-right">
						
					</div>
					<div class="clearfix"> </div>
				</div>

				<div class="menu-text"><br>
					<div class="menu-text-right">
						<a class="boton-principal" href="detalle-pedido.html">Confirmar</a>
					</div>
				</div>
		  </div>		  
	  </div>
	</div>
</asp:Content>
