<%@ Page Title="" Language="C#" MasterPageFile="~/Tablero.Master" AutoEventWireup="true" CodeBehind="BajaProducto.aspx.cs" Inherits="COMANDFAST.Web.BajaProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">
            <div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title">Baja Producto</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <form role="form">
        <div class="row">
          <div class="col-12">
            <div class="card">

              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                    <div class="w3_agile_recipe-grid">    
                        <form role="form" runat="server">    
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Nombre</th>
                                         <th>Descripci&oacuten</th>
                                         <th>Accion</th>
                                    </tr>
                                  </thead>
                                 <tbody>
                                  <asp:Repeater ID="repProductos" runat="server">
                                     <ItemTemplate>
                                       <div class="col-md-6 menu-grids">
                                            <div class="menu-text">									      
									            <div class="menu-text-left">
									                 <div class="rep-w3l-text">
                                                        <tr>
                                                            <td>
                                                               <asp:Label ID="Id" runat="server" Text='<%# Eval("IdProducto") %>'></asp:Label>
                                                            </td>
                                                            <td>
                                                               <asp:Label ID="lblTitulo" runat="server" Text='<%# Eval("TituloProducto") %>'></asp:Label>
                                                            </td>
                                                            <td>
										                       <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("DescProducto") %>'></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Button runat="server" OnClick="DeleteProd_Click" Text="Eliminar" class="btn btn-danger" />
                                                            </td>
                                                            
                                                            </tr>    
                                                    </div>
									            </div>
									            <div class="clearfix"> </div>
								            </div>	
                                        </div>
                                    </ItemTemplate>
                                      
                                </asp:Repeater>
                                        
                                     </tbody>
                                   </table> 
                            </form>
                <!--<table class="table table-hover">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Producto</th>
                      <th>Tipo</th>
                      <th>Estado</th>
                      <th>Accion</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>183</td>
                      <td>Coca Cola</td>
                      <td>Bebida</td>
                      <td><span class="tag tag-success">Activo</span></td>
				      <td><button type="button" class="btn btn-block btn-danger">Eliminar</button></td>   
                    </tr>
                    <tr>
                      <td>219</td>
                      <td>Paso de Los Toros</td>
                      <td>Bebida</td>
                      <td><span class="tag tag-warning">No Activo</span></td>
				      <td><button type="button" class="btn btn-block btn-danger">Eliminar</button></td>   
                    </tr>
                    <tr>
                      <td>657</td>
                      <td>La Magnifica</td>
                      <td>Plato Principal</td>
                      <td><span class="tag tag-primary">Activo</span></td>
				      <td><button type="button" class="btn btn-block btn-danger">Eliminar</button></td>   
                    </tr>
                    <tr>
                      <td>175</td>
                      <td>Mike Doe</td>
                      <td>Postre</td>
                      <td><span class="tag tag-danger">Activo</span></td>
				      <td><button type="button" class="btn btn-block btn-danger">Eliminar</button></td>   
                    </tr>
                  </tbody>
                </table> -->
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>


					<br/>
                  <!-- input states -->
                </form>
              </div>
              <!-- /.card-body -->
            </div>		
        </div>
        <!-- /.col-->
      </div>
      <!-- ./row -->
    </section>
    <!-- /.content -->


<!-- jQuery -->
<script src="Assets/admin/plugins/js/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="Assets/admin/plugins/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="Assets/admin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="Assets/admin/dist/js/demo.js"></script>
<!-- Summernote -->
<script src="Assets/admin/plugins/js/summernote-bs4.min.js"></script>
<script>
  $(function () {
    // Summernote
    $('.textarea').summernote()
  })
</script>
</asp:Content>