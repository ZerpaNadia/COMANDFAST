﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="COMANDFAST.Web.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    	<style type="text/css">
		@media(max-width:1366px){
			.banner {
		    min-height: 90px;
			}
		}

		@media(max-width:414px){
			.banner {
			min-height: 70px;
			}
		}

		@media(max-width:480px){
			.agile-services-w3{
				min-height: 480px;
			}
		}

		body{
			background-color: #0a0509;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="agile-services-w3">
		<div class="container">
				<h3 class="tittle ser">NUESTROS SERVICIOS</h3>
			<div class="wthree-agile-sevre-grids">
				<div class="col-md-3 wthree-agile-grid">
					<div class="hi-icon-wrap hi-icon-effect-7 hi-icon-effect-7b">
						<a href="Menu.aspx" class="hi-icon icon1"></a>
					</div>
					<h4>Menu</h4>
				</div>
				<div class="col-md-3 wthree-agile-grid">
					<div class="hi-icon-wrap hi-icon-effect-7 hi-icon-effect-7b">
						<a href="DetallePedido.aspx" class="hi-icon icon3"></a>
					</div>
					<h4>Pedidos</h4>
				</div>
				<div class="col-md-3 wthree-agile-grid">
					<div class="hi-icon-wrap hi-icon-effect-7 hi-icon-effect-7b">
						<a href="Reserva.aspx" class="hi-icon icon2"></a>
					</div>
					<h4>Reservas</h4>
				</div>
				<div class="col-md-3 wthree-agile-grid">
					<div class="hi-icon-wrap hi-icon-effect-7 hi-icon-effect-7b">
						<a href="#" class="hi-icon icon4"></a>
					</div>
					<h4>Opiniones</h4>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</asp:Content>
