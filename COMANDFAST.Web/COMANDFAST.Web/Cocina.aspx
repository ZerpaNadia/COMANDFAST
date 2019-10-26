<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Cocina.aspx.cs" Inherits="COMANDFAST.Web.Cocina" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    	<script type="text/javascript">
		function cambiarEstado (id, avance) {
			if (id == 'a') {
				if (avance == '1a') {
					$('#boton-1a').hide();
					$('#boton-1b').show();
				}
				if (avance == '1b') {
					$('#boton-1b').hide();
					$('#boton-1c').show();
				}
				if (avance == '1c') {
					$('#boton-1c').hide();
					$('#boton-1a').show();
				}
			}
			if (id == 'b') {

			}
			if (id == 'c') {

			}

		}
	</script>
	<!-- //web-fonts -->
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

		.boton-principal {
			background-color: #3b5998;
			font-size: 1.4rem;
			margin-top: 2rem;
			margin-left: 2rem;
		}

		.boton-principal, .boton-segundo, .boton-tercero {
			height: 5rem;
			width: 12rem;
		}

		.boton-segundo {
			background-color: #008000
		}
		.boton-tercero {
			background-color: #ff8c00;
		}

		.boton-principal:hover {
			background-color: #3b5998;
		}
		.boton-segundo:hover {
			background-color: #008000;
		}
		.boton-tercero:hover {
			background-color: #ff6200;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<div class="reservation-w3laits">
		<div class="container">
			<h3 class="tittle">MODULO COCINA: Lista de Pedidos</h3>
			<div class="row"><br>
		        <div class="col-xs-12">
		            <table class="table table-striped" style="font-size: 2rem">
					  <thead>
					    <tr>
					      <th scope="col">Cliente</th>
					      <th scope="col">Nro Pedido</th>
					      <th scope="col">Items</th>
					      <th scope="col">Estado</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <td>Martin</td>
					      <td>AA105</td>
					      <td>
						      <ul>
						      	<li>Menu Principal 1</li>
						      	<li>Acompañamiento 1</li>
						      	<li>Bebida Cola</li>
						      </ul>
					      </td>
					      <td>
					      	<button  class="boton-principal" id="boton-1a" onclick="cambiarEstado('a','1a')">Aceptado</button>	
					      	<button  class="boton-principal boton-segundo" id="boton-1b" style="display: none" onclick="cambiarEstado('a','1b')">Preparado</button>	
					      	<button  class="boton-principal boton-tercero" id="boton-1c" style="display: none"  onclick="cambiarEstado('a','1c')">Listo</button>	
					      	</td>
					    </tr>
					    <tr>
					      <td>Martin</td>
					      <td>AA105</td>
					      <td>
						      <ul>
						      	<li>Menu Principal 1</li>
						      	<li>Acompañamiento 1</li>
						      	<li>Bebida Cola</li>
						      </ul>
					      </td>
					      <td>
					      	<button  class="boton-principal" id="boton-2a" onclick="cambiarEstado('b','2a')">Aceptado</button>	
					      	<button  class="boton-principal boton-segundo" id="boton-2b" style="display: none" onclick="cambiarEstado('b','2b')">Preparado</button>	
					      	<button  class="boton-principal boton-tercero" id="boton-2c" style="display: none"  onclick="cambiarEstado('b','2c')">Listo</button>
					      </td>
					    </tr>
					    <tr>
					      <td>Martin</td>
					      <td>AA105</td>
					      <td>
						      <ul>
						      	<li>Menu Principal 1</li>
						      	<li>Acompañamiento 1</li>
						      	<li>Bebida Cola</li>
						      </ul>
					      </td>
					      <td>
					      	<button  class="boton-principal" id="boton-3a" onclick="cambiarEstado('c','1a')">Aceptado</button>	
					      	<button  class="boton-principal boton-segundo" id="boton-3b" style="display: none" onclick="cambiarEstado('c','2b')">Preparado</button>	
					      	<button  class="boton-principal boton-tercero" id="boton-3c" style="display: none"  onclick="cambiarEstado('c','3c')">Listo</button>
					      </td>
					    </tr>
					  </tbody>
					</table>
		        </div>
		    </div>
		</div>
   </div>
</asp:Content>
