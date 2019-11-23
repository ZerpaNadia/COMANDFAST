<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="COMANDFAST.Web.Menu" %>
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

        .text-Cantidad {
            width:30px;
            height:32px;
            position:absolute;
            margin-top:10px;
            text-align:center;
        }
	</style>
	<script type="text/javascript">

		function Sumar(tipo, indice){
		    if (tipo == "H") {
		        cant = $('#ContentPlaceHolder1_repHamburguesas_txtCantidad_' + indice).val();

			    cant = parseInt(cant) + 1;

			    $('#ContentPlaceHolder1_repHamburguesas_txtCantidad_' + indice).val(cant);
                $('#ContentPlaceHolder1_repHamburguesas_txtCantidad_' + indice).text(cant);
		    }
		    else if (tipo == "B") {
		        cant = $('#ContentPlaceHolder1_repBebidas_txtCantidad_' + indice).val();

		        cant = parseInt(cant) + 1;

		        $('#ContentPlaceHolder1_repBebidas_txtCantidad_' + indice).val(cant);
                $('#ContentPlaceHolder1_repBebidas_txtCantidad_' + indice).text(cant);
		    }
		    else if (tipo == "E") {
		        cant = $('#ContentPlaceHolder1_repExtras_txtCantidad_' + indice).val();

		        cant = parseInt(cant) + 1;

		        $('#ContentPlaceHolder1_repExtras_txtCantidad_' + indice).val(cant);
                $('#ContentPlaceHolder1_repExtras_txtCantidad_' + indice).text(cant);
		    }
		} 

		function Restar(tipo, indice) {
		    if (tipo == "H") {
		        cant = $('#ContentPlaceHolder1_repHamburguesas_txtCantidad_' + indice).val();

		        cant = parseInt(cant) - 1;

		        if (cant < 0) {
		            cant = 0;
		        }

		        $('#ContentPlaceHolder1_repHamburguesas_txtCantidad_' + indice).val(cant);
                $('#ContentPlaceHolder1_repHamburguesas_txtCantidad_' + indice).text(cant);
		    }
		    else if (tipo == "B") {
		        cant = $('#ContentPlaceHolder1_repBebidas_txtCantidad_' + indice).val();

		        cant = parseInt(cant) - 1;
		        if (cant < 0) {
		            cant = 0;
		        }

		        $('#ContentPlaceHolder1_repBebidas_txtCantidad_' + indice).val(cant);
                $('#ContentPlaceHolder1_repBebidas_txtCantidad_' + indice).text(cant);
		    }
		    else if (tipo == "E") {
		        cant = $('#ContentPlaceHolder1_repExtras_txtCantidad_' + indice).val();

		        cant = parseInt(cant) - 1;
		        if (cant < 0) {
		            cant = 0;
		        }

		        $('#ContentPlaceHolder1_repExtras_txtCantidad_' + indice).val(cant);
                $('#ContentPlaceHolder1_repExtras_txtCantidad_' + indice).text(cant);
		    }
		}
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<div class="recipes-w3l-agile" id="menu">
	  <div class="container">
	    <h3 class="tittle">MENU</h3>
	      <div class="agileits-tabs">
		      <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
				<ul id="myTab" class="nav nav-tabs " role="tablist">
					<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">HAMBURGUESAS</a></li>
					<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">BEBIDAS</a></li>
					<li role="presentation"><a href="#rating" id="rating-tab" role="tab" data-toggle="tab" aria-controls="rating" aria-expanded="true">EXTRAS</a></li>
				</ul>
				<div id="myTabContent" class="tab-content">
					<div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
					   <div class="w3_agile_recipe-grid">                            
                                <asp:Repeater ID="repHamburguesas" runat="server">
                                    <ItemTemplate>
                                        <div class="col-md-6 menu-grids">
                                            <div class="menu-text">									      
									            <div class="menu-text-left">
										            <div class="rep-w3l-img">
										              <img src="Assets/images/f1.jpg" alt=" " class="img-responsive"/>
										            </div>
									                 <div class="rep-w3l-text">
                                                         <asp:HiddenField ID="Id" runat="server" Value='<%# Bind("IdProducto") %>'></asp:HiddenField>
                                                         <h4><asp:Label ID="lblTitulo" runat="server" Text='<%# Eval("TituloProducto") %>'></asp:Label></h4>
										              <h6><asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("DescProducto") %>'></asp:Label></h6>
										            </div>
										            <div class="clearfix"> </div>
									            </div>
									            <div class="menu-text-right">
										            <h4><asp:Label ID="lblPrecio" runat="server" Text='<%# "$ " + Eval("Precio") %>'></asp:Label></h4>
                                                    <div>
                                                        <input type="button" id="btnRestar"  onclick='<%# "Restar(\"H\", " + Container.ItemIndex + ")"%>' class="submit quitar">
                                                        <asp:TextBox ID="txtCantidad" Text="" CssClass="text-Cantidad" runat="server"></asp:TextBox>
                                                        <input type="button" id="btnAgregar"  onclick='<%# "Sumar(\"H\", " + Container.ItemIndex + ")"%>' class="submit agregar">
                                                    </div>
									            </div>
									            <div class="clearfix"> </div>
								            </div>	
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
				        <div class="w3_agile_recipe-grid">
                            <asp:Repeater ID="repBebidas" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-6 menu-grids">
                                        <div class="menu-text">									      
									        <div class="menu-text-left">
										        <div class="rep-w3l-img">
										            <img src="Assets/images/f1.jpg" alt=" " class="img-responsive"/>
										        </div>
									                <div class="rep-w3l-text">
                                                        <asp:HiddenField ID="Id" runat="server" Value='<%# Bind("IdProducto") %>'></asp:HiddenField>
                                                        <h4><asp:Label ID="lblTitulo" runat="server" Text='<%# Eval("TituloProducto") %>'></asp:Label></h4>
										            <h6><asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("DescProducto") %>'></asp:Label></h6>
										        </div>
										        <div class="clearfix"> </div>
									        </div>
									        <div class="menu-text-right">
										        <h4><asp:Label ID="lblPrecio" runat="server" Text='<%# "$ " + Eval("Precio") %>'></asp:Label></h4>
                                                <div>
                                                    <input type="button" id="btnRestar" value="" onclick='<%# "Restar(\"B\", " + Container.ItemIndex + ")"%>' class="submit quitar">
                                                    <asp:TextBox ID="txtCantidad" Text="" CssClass="text-Cantidad" runat="server"></asp:TextBox>
                                                    <input type="button" id="btnAgregar" value="" onclick='<%# "Sumar(\"B\", " + Container.ItemIndex + ")"%>' class="submit agregar">
                                                </div>
									        </div>
									        <div class="clearfix"> </div>
								        </div>	
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
					    </div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="rating" aria-labelledby="rating-tab">
					    <div class="w3_agile_recipe-grid">
                            <asp:Repeater ID="repExtras" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-6 menu-grids">
                                        <div class="menu-text">									      
									        <div class="menu-text-left">
										        <div class="rep-w3l-img">
										            <img src="Assets/images/f1.jpg" alt=" " class="img-responsive"/>
										        </div>
									                <div class="rep-w3l-text">
                                                        <asp:HiddenField ID="Id" runat="server" Value='<%# Bind("IdProducto") %>'></asp:HiddenField>
                                                        <h4><asp:Label ID="lblTitulo" runat="server" Text='<%# Eval("TituloProducto") %>'></asp:Label></h4>
										            <h6><asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("DescProducto") %>'></asp:Label></h6>
										        </div>
										        <div class="clearfix"> </div>
									        </div>
									        <div class="menu-text-right">
										        <h4><asp:Label ID="lblPrecio" runat="server" Text='<%# "$ " + Eval("Precio") %>'></asp:Label></h4>
                                                <div>
                                                    <input type="button" id="btnRestar" value="" onclick='<%# "Restar(\"E\", " + Container.ItemIndex + ")"%>' class="submit quitar">
                                                    <asp:TextBox ID="txtCantidad" Text="" CssClass="text-Cantidad" runat="server"></asp:TextBox>
                                                    <input type="button" id="btnAgregar" value="" onclick='<%# "Sumar(\"E\", " + Container.ItemIndex + ")"%>' class="submit agregar">
                                                </div>
									        </div>
									        <div class="clearfix"> </div>
								        </div>	
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
						    <div class="clearfix"> </div>
					    </div>
					</div>
				</div>
			</div>
		  </div>
          <div class="menu-text-right">
            <asp:Button ID="btnAceptar" CssClass="boton-principal" runat="server" Text="Siguiente" OnClick="btnAceptar_Click" />
          </div>
	  </div>
	</div>
	<script src="Assets/js/jquery-2.2.3.min.js"></script> 
	<script type="text/javascript" src="Assets/js/move-top.js"></script>
	<script type="text/javascript" src="Assets/js/easing.js"></script>	
	<script src="Assets/js/bootstrap.js"></script>
	<script src="Assets/js/jquery.adipoli.min.js" type="text/javascript"></script>
	<script type="text/javascript"> 
		$(function(){ 
			$('.row2').adipoli({
				'startEffect' : 'overlay',
				'hoverEffect' : 'sliceDown'
			}); 
		});
		
	</script>
	<script src="Assets/js/jquery.swipebox.min.js"></script> 
	<script type="text/javascript">
			jQuery(function($) {
				$(".swipebox").swipebox();
			});
	</script>
	<!-- //swipe box js -->
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();		
		        $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});

            $("[id*=txtCantidad_]").val('0');
            $("[id*=txtCantidad_]").text('0');
		});
	</script>
</asp:Content>

