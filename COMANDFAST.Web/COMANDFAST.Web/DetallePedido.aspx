﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DetallePedido.aspx.cs" Inherits="COMANDFAST.Web.DetallePedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<!--/tabs -->
	<div class="recipes-w3l-agile" id="menu">
	  <div class="container">
	    <h2 class="project-name">DETALLE DEL PEDIDO</h2>
	      <div class="agileits-tabs" style="margin-left: 3rem;"><br>
	      		<div class="menu-text">									      
					<div class="menu-text-left">
					    <div class="rep-w3l-text book-form">
							  <h4>NRO. PEDIDO: <label style="font-weight: bold;">1234</label></h4>			  
						</div>											
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="menu-text">									      
					<div class="menu-text-left">
					    <div class="rep-w3l-text book-form">
							  <h4>Hamb - DEL BOSQUE</h4>			  
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
					   <div class="rep-w3l-text book-form">
						  <h4>PAPAS FRITAS</h4>
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
				    	<div class="rep-w3l-text  book-form">
							<h4>AGUA/GASEOSAS</h4>
						</div>						
						<div class="clearfix"> </div>
					</div>
					<div class="menu-text-right">
						<h4>$ 50</h4>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="menu-text">
					<div class="menu-text-left"><br>
						<h4 style="font-weight: bold;">SUBTOTAL....... </h4>
					</div>
					<div class="menu-text-right">
						<h4  style="font-weight: bold;">$ 590</h4>
					</div>
					<div class="clearfix"> </div>
				</div>
		  	</div>		  
	  	</div>
	</div>
	<div class="container">
    	<h1 class="project-name">ESTADO</h1>
		<div id="timeline">
			<div class="timeline-item">
				<div class="timeline-icon">
				</div>
				<div class="timeline-content">
					<h2>INFORMADO</h2>
					<p>
						Fecha: 30/09/2019
						Hora : 21:30
					</p>
				</div>
			</div>

			<div class="timeline-item">
				<div class="timeline-icon">
				</div>
				<div class="timeline-content right">
					<h2>CONFIRMADO</h2>
					<p>
						Fecha: 30/09/2019
						Hora : 21:32
					</p>
				</div>
			</div>

			<div class="timeline-item">
				<div class="timeline-icon">
					<i class='fas fa-hamburger'></i>
				</div>
				<div class="timeline-content">
					<h2>EN PROCESO</h2>
					<p>
						Fecha: 30/09/2019
						Hora : 21:35
					</p>
				</div>
			</div>
		</div>
	</div>
	<!--//tabs -->
</asp:Content>