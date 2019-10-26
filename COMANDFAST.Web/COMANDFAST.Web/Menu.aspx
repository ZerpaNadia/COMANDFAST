<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="COMANDFAST.Web.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">ç
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
	</style>
	<script type="text/javascript">
		function sumar(){
			cant = $('#cantidad-carrito').text();

			cant = parseInt(cant) + 1;

			$('#cantidad-carrito').text(cant);
		} 

		function restar(){
			cant = $('#cantidad-carrito').text();

			cant = parseInt(cant) - 1;

			if (cant < 0) 
			{
				cant = 0;
			}

			$('#cantidad-carrito').text(cant);
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
                            <div class="col-md-6 menu-grids">
								<div class="menu-text">									      
									<div class="menu-text-left">
										<div class="rep-w3l-img">
										  <img src="images/f1.jpg" alt=" " class="img-responsive">
										</div>
									     <div class="rep-w3l-text">
										   <h4>PATICOMPLÉ...................</h4>
										  <h6>Queso gruyere - Tomates Marinados - Lechuga Capuccina</h6>
										</div>										
										<div class="clearfix"> </div>
									</div>
									<div class="menu-text-right">
										<h4>$ 240</h4>
										<input type="button" class="submit agregar" onclick="sumar()">
										<input type="button" class="submit quitar" onclick="restar()">
									</div>
									<div class="clearfix"> </div>
								</div>	
								<div class="menu-text">
									<div class="menu-text-left">
											<div class="rep-w3l-img">
											  <img src="images/f1.jpg" alt=" " class="img-responsive">
											</div>
										   <div class="rep-w3l-text">
											  <h4>GRINGA..............................</h4>
											  <h6>Queso Cheddar - Batata Frita - Sarza - Salsa Huancaina</h6>
											</div>
											
											<div class="clearfix"> </div>
										</div>
									<div class="menu-text-right">
										<h4>$250</h4>
										<input type="button" class="submit agregar" onclick="sumar()">
										<input type="button" class="submit quitar" onclick="restar()">
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="menu-text">
									<div class="menu-text-left">
											<div class="rep-w3l-img">
											  <img src="images/f1.jpg" alt=" " class="img-responsive">
											</div>
										   <div class="rep-w3l-text">
											  <h4>DEL BOSQUE............................</h4>
											  <h6>Queso Cheddar - Batata Frita - Sarza - Salsa Huancaina</h6>
											</div>
											
											<div class="clearfix"> </div>
										</div>
									<div class="menu-text-right">
										<h4>$240</h4>
										<input type="button" class="submit agregar" onclick="sumar()">
										<input type="button" class="submit quitar" onclick="restar()">
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
							   <div class="col-md-6 menu-grids">
								<div class="menu-text">
									<div class="menu-text-left">
											<div class="rep-w3l-img">
											  <img src="images/f1.jpg" alt=" " class="img-responsive">
											</div>
										   <div class="rep-w3l-text">
											  <h4>TAREA FINA............................</h4>
											  <h6>Queso Cheddar - Batata Frita - Sarza - Salsa Huancaina</h6>
											</div>
											
											<div class="clearfix"> </div>
										</div>
									<div class="menu-text-right">
										<h4>$260</h4>
										<input type="button" class="submit agregar" onclick="sumar()">
										<input type="button" class="submit quitar" onclick="restar()">
									</div>
									<div class="clearfix"> </div>
								</div>

								<div class="menu-text">
									<div class="menu-text-left">
											<div class="rep-w3l-img">
											  <img src="images/f1.jpg" alt=" " class="img-responsive">
											</div>
										   <div class="rep-w3l-text">
											  <h4>DOÑA TOTA............................</h4>
											  <h6>Queso Cheddar - Batata Frita - Sarza - Salsa Huancaina</h6>
											</div>
											
											<div class="clearfix"> </div>
										</div>
									<div class="menu-text-right">
										<h4>$250</h4>
										<input type="button" class="submit agregar" onclick="sumar()">
										<input type="button" class="submit quitar" onclick="restar()">
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="menu-text">
									<div class="menu-text-left">
											<div class="rep-w3l-img">
											  <img src="images/f1.jpg" alt=" " class="img-responsive">
											</div>
										   <div class="rep-w3l-text">
											  <h4>CAPRICHOSA...........................</h4>
											  <h6>Queso Cheddar - Batata Frita - Sarza - Salsa Huancaina</h6>
											</div>
											
											<div class="clearfix"> </div>
										</div>
									<div class="menu-text-right">
										<h4>$240</h4>
										<input type="button" class="submit agregar" onclick="sumar()">
										<input type="button" class="submit quitar" onclick="restar()">
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
				        <div class="w3_agile_recipe-grid">
                            <div class="col-md-6 menu-grids">
								<div class="menu-text">
								      
									<div class="menu-text-left">
										<div class="rep-w3l-img">
										  <img src="images/d1.jpg" alt=" " class="img-responsive">
										</div>
									     <div class="rep-w3l-text">
										   <h4>AGUA/GASEOSAS...........</h4>
										  <h6>H20 - Levite</h6>
										</div>
										
										<div class="clearfix"> </div>
									</div>
									<div class="menu-text-right">
										<h4>$ 50</h4>
										<input type="button" class="submit agregar" onclick="sumar()">
										<input type="button" class="submit quitar" onclick="restar()">
									</div>
									<div class="clearfix"> </div>
								</div>	

								<div class="menu-text">
									<div class="menu-text-left">
											<div class="rep-w3l-img">
											  <img src="images/d1.jpg" alt=" " class="img-responsive">
											</div>
										   <div class="rep-w3l-text">
											  <h4>LASTAS 550cc.................</h4>
											  <h6>Irish Red Ale - Blonde Ale - Apa Sorachi</h6>
											</div>
											
											<div class="clearfix"> </div>
										</div>
									<div class="menu-text-right">
										<h4>$120</h4>
										<input type="button" class="submit agregar" onclick="sumar()">
										<input type="button" class="submit quitar" onclick="restar()">
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="menu-text">
									<div class="menu-text-left">
											<div class="rep-w3l-img">
											  <img src="images/f3.jpg" alt=" " class="img-responsive">
											</div>
										   <div class="rep-w3l-text">
											  <h4>VASAO DE VINO..............</h4>
											  <h6>La Liga de los Enologos</h6>
											</div>
										
											<div class="clearfix"> </div>
										</div>

									<div class="menu-text-right">
										<h4>$70</h4>
										<input type="button" class="submit agregar" onclick="sumar()">
										<input type="button" class="submit quitar" onclick="restar()">
									</div>
									<div class="clearfix"> </div>
								</div>
								</div>
								   <div class="col-md-6 menu-grids">
										<div class="menu-text">
										      
											<div class="menu-text-left">
												<div class="rep-w3l-img">
												  <img src="images/f4.jpg" alt=" " class="img-responsive">
												</div>
											     <div class="rep-w3l-text">
												   <h4>PINTAS.........................</h4>
												  <h6>Blonde Ale - Irish - Ipa</h6>
												</div>
												
												<div class="clearfix"> </div>
											</div>
											<div class="menu-text-right">
												<h4>$110</h4>
												<input type="button" class="submit agregar" onclick="sumar()">
										<input type="button" class="submit quitar" onclick="restar()">
											</div>
											<div class="clearfix"> </div>
										</div>	

									<div class="menu-text">
										<div class="menu-text-left">
												<div class="rep-w3l-img">
												  <img src="images/f5.jpg" alt=" " class="img-responsive">
												</div>
											   <div class="rep-w3l-text">
												   <h4>FERNET BRANCA.................</h4>
												  <h6> 550cc</h6>
												</div>
												
												<div class="clearfix"> </div>
											</div>

										<div class="menu-text-right">
											<h4>$130</h4>
											<input type="button" class="submit agregar" onclick="sumar()">
											<input type="button" class="submit quitar" onclick="restar()">
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
					    	</div>
						</div>
					<div role="tabpanel" class="tab-pane fade" id="rating" aria-labelledby="rating-tab">
					    <div class="w3_agile_recipe-grid">
                                    <div class="col-md-6 menu-grids">
										<div class="menu-text">
										      
											<div class="menu-text-left">
												<div class="rep-w3l-img">
												  <img src="images/f3.jpg" alt=" " class="img-responsive">
												</div>
											     <div class="rep-w3l-text">
												   <h4>PAPAS FRITAS............</h4>
												  <h6>Cheddar</h6>
												</div>
												
												<div class="clearfix"> </div>
											</div>
											<div class="menu-text-right">
												<h4>$ 80</h4>
												<input type="button" class="submit agregar" onclick="sumar()">
												<input type="button" class="submit quitar" onclick="restar()">
											</div>
											<div class="clearfix"> </div>
										</div>	

									<div class="menu-text">
										<div class="menu-text-left">
												<div class="rep-w3l-img">
												  <img src="images/f1.jpg" alt=" " class="img-responsive">
												</div>
											   <div class="rep-w3l-text">
												  <h4>Lorem ipsum dolor............</h4>
												  <h6>with wild mushrooms and asparagus</h6>
												</div>
												
												<div class="clearfix"> </div>
											</div>
										<div class="menu-text-right">
											<h4>$25</h4>
											<input type="button" class="submit agregar" onclick="sumar()">
											<input type="button" class="submit quitar" onclick="restar()">
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="menu-text">
										<div class="menu-text-left">
												<div class="rep-w3l-img">
												  <img src="images/f4.jpg" alt=" " class="img-responsive">
												</div>
											   <div class="rep-w3l-text">
												  <h4>Lorem ipsum dolor............</h4>
												  <h6>with wild mushrooms and asparagus</h6>
												</div>
											
												<div class="clearfix"> </div>
											</div>

										<div class="menu-text-right">
											<h4>$30</h4>
											<input type="button" class="submit agregar" onclick="sumar()">
										<input type="button" class="submit quitar" onclick="restar()">
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								   <div class="col-md-6 menu-grids">
										<div class="menu-text">
										      
											<div class="menu-text-left">
												<div class="rep-w3l-img">
												  <img src="images/f6.jpg" alt=" " class="img-responsive">
												</div>
											     <div class="rep-w3l-text">
												   <h4>Lorem ipsum dolor............</h4>
												  <h6>with wild mushrooms and asparagus</h6>
												</div>
												
												<div class="clearfix"> </div>
											</div>
											<div class="menu-text-right">
												<h4>$ 50</h4>
												<input type="button" class="submit agregar" onclick="sumar()">
										<input type="button" class="submit quitar" onclick="restar()">
											</div>
											<div class="clearfix"> </div>
										</div>	

									<div class="menu-text">
										<div class="menu-text-left">
												<div class="rep-w3l-img">
												  <img src="images/f2.jpg" alt=" " class="img-responsive">
												</div>
											   <div class="rep-w3l-text">
												   <h4>Lorem ipsum dolor............</h4>
												  <h6>with wild mushrooms and asparagus</h6>
												</div>
												
												<div class="clearfix"> </div>
											</div>

										<div class="menu-text-right">
											<h4>$25</h4>
											<input type="button" class="submit agregar" onclick="sumar()">
										<input type="button" class="submit quitar" onclick="restar()">
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="menu-text">
										<div class="menu-text-left">
												<div class="rep-w3l-img">
												  <img src="images/f1.jpg" alt=" " class="img-responsive">
												</div>
											   <div class="rep-w3l-text">
												  <h4>Lorem ipsum dolor............</h4>
												  <h6>with wild mushrooms and asparagus</h6>
												</div>
											
												<div class="clearfix"> </div>
											</div>
										<div class="menu-text-right">
											<h4>$30</h4>
											<input type="button" class="submit agregar" onclick="sumar()">
										<input type="button" class="submit quitar" onclick="restar()">
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="clearfix"> </div>
					    </div>
					</div>
				</div>
			</div>
		  </div>
	  </div>
	</div>
</asp:Content>
