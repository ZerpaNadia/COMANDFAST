<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Reserva.aspx.cs" Inherits="COMANDFAST.Web.Reserva" %>
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

			.img-ocultar {
				display: none;
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="reservation-w3laits">
		<div class="container">
		<h3 class="tittle">RESERVA TU MESA</h3>
			<div class="agile-reservation">
			    <div class="col-md-4 agile-reservation-grid img-ocultar">
			        <img src="Assets/images/side.jpg" alt=" " class="img-responsive img-style row2">
			    </div>
				 <div class="col-md-4 agile-reservation-grid mid-w3l-aits">
			  <div class="book-form">
							<form action="#" method="post">
								<div class="phone_email">
									<label>Nombre y Apellido: </label>
									<div class="form-text">
										<span class="fa fa-user" aria-hidden="true"></span>
										<input type="text" name="Name" placeholder="Nombre" required="">
									</div> 
								</div>
								<div class="phone_email phone_email1">
									<label>Email : </label>
									<div class="form-text">
										<span class="fa fa-envelope" aria-hidden="true"></span>
										<input type="email" name="email" placeholder="Email" required="">
									</div>
								</div>
								<div class="phone_email">
									<label>Teléfono : </label>
									<div class="form-text">
										<span class="fa fa-phone" aria-hidden="true"></span>
										<input type="text" name="Phone no" placeholder="Telefono" required="">
									</div> 
								</div> 
								<div class="phone_email phone_email1">
									<label>Dirección : </label>
									<div class="form-text">
										<span class="fa fa-map-marker" aria-hidden="true"></span>
										<input type="text" name="address" placeholder="Dirección" required="">
									</div> 
								</div> 
								<div class="clearfix"></div>
								<div class="agileits_reservation_grid">
									<div class="span1_of_1">
										<label>Fecha : </label> 
										<div class="book_date"> 
											<span class="fa fa-calendar" aria-hidden="true"></span>
											<input class="date" id="datepicker" type="text" name="Fecha" placeholder="dd/mm/yyyy" required="">
										</div>					
									</div>
									<div class="span1_of_1">
										<!-- start_section_room -->
										<label>Hora : </label>
										<div class="section_room">
											<span class="fa fa-clock-o" aria-hidden="true"></span>
											<input type="text" name="hora" placeholder="hh:mm" required="">
										</div>	
									</div>
									<div class="span1_of_1">
										<label>Cant. de Personas : </label>
										<!-- start_section_room -->
										<div class="form-text">
											<span class="fa fa-users" aria-hidden="true"></span>
											<input type="text" name="personas" placeholder="Personas" required="">
										</div>	
									</div> 
									<div class="clearfix"></div>
								</div> 
								<input type="submit" value="Reservar" />
							</form>
						</div>
					
			     </div>
				  <div class="col-md-4 agile-reservation-grid  img-ocultar">
			       <img src="Assets/images/r2.jpg" alt=" " class="img-responsive img-style row2">
			    </div>
				<div class="clearfix"> </div>
			</div>
		</div>
   </div>
</asp:Content>
