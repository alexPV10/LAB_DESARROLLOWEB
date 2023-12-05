/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

//Librerias de conexion con BD
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

// Importacion de los Modelos
import Models.ViewModelEmpleados;
import Models.ViewModelClientes;
import Models.ViewModelProductos;
import Models.ViewModelLaboratorios;
import Models.ViewModelProveedores;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


/**
 *
 * @author Tambo
 */
public class ServletPrincipal extends HttpServlet {
    
    
    //Estableciendo conexion con la BD
    private final String usuario = "AdministradorLogin";
    private final String contrasenia = "root";
    private final String servidor = "TAMBOR";
    private final String bd = "farmacia";
    
    String url = "jdbc:sqlserver://" 
            + servidor 
            + ";databaseName=" + bd 
            + ";user=" + usuario 
            + ";password=" + contrasenia 
            + ";encrypt=false;trustServerCertificate=false;";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletPrincipal</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletPrincipal at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    //FUNCIONES DE CRUD SOBRE LA BASE DE DATOS
    //Funciones de lectura de tablas (SELECT)
    public void mostrarEmpleados(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM empleado";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelEmpleados> listaEmpleados = new ArrayList<>();
                while (rs.next()) {
                    ViewModelEmpleados empleado = new ViewModelEmpleados();
                    empleado.setId(rs.getInt("ID"));
                    empleado.setNombres(rs.getString("Nombres"));
                    empleado.setApellidos(rs.getString("Apellidos"));
                    empleado.setDui(rs.getString("Dui"));
                    empleado.setIss(rs.getString("Iss"));
                    empleado.setFecha_nacimiento(rs.getDate("Fecha_nacimiento"));
                    empleado.setTelefono(rs.getString("Telefono"));
                    empleado.setCorreo(rs.getString("Correo"));
                    empleado.setIdDireccion(rs.getInt("IdDireccion"));
                    empleado.setIdCargo(rs.getInt("IdCargo"));
                    listaEmpleados.add(empleado);
                    System.out.print(listaEmpleados);
                }         
                                
                request.setAttribute("listaEmpleados", listaEmpleados);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarClientes(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM cliente";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelClientes> listaClientes = new ArrayList<>();
                while (rs.next()) {
                    ViewModelClientes cliente = new ViewModelClientes();
                    cliente.setId(rs.getInt("ID"));
                    cliente.setNombre(rs.getString("Nombre"));
                    cliente.setApellido(rs.getString("Apellido"));
                    cliente.setDui(rs.getString("Dui"));
                    cliente.setFecha_nacimiento(rs.getDate("Fecha_nacimiento"));
                    cliente.setTelefono(rs.getString("Telefono"));
                    cliente.setCorreo(rs.getString("Correo"));
                    cliente.setIdDireccion(rs.getInt("IdDireccion"));
                    listaClientes.add(cliente);
                    System.out.print(listaClientes);
                }         
                                
                request.setAttribute("listaClientes", listaClientes);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
      
    public void mostrarProductos(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM producto";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelProductos> listaProductos = new ArrayList<>();
                while (rs.next()) {
                    ViewModelProductos productos = new ViewModelProductos();
                    productos.setId(rs.getInt("ID"));
                    productos.setNombre(rs.getString("Nombre"));
                    productos.setDescripcion(rs.getString("Descripcion"));
                    productos.setPrecio(rs.getFloat("Precio"));
                    productos.setFechaVencimiento(rs.getDate("FechaVencimiento"));
                    productos.setStockActual(rs.getInt("StockActual"));
                    productos.setStockMinimo(rs.getInt("StockMinimo"));
                    productos.setFechaUltimaCompra(rs.getDate("FechaUltimaCompra"));
                    productos.setFechaUltimaVenta(rs.getDate("FechaUltimaVenta"));
                    productos.setInstrucciones(rs.getString("Instrucciones"));
                    productos.setIdPrecentacion(rs.getInt("IdPrecentacion"));
                    listaProductos.add(productos);
                    System.out.print(listaProductos);
                }         
                                
                request.setAttribute("listaProductos", listaProductos);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarLaboratorios(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM laboratorio";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelLaboratorios> listaLaboratorios = new ArrayList<>();
                while (rs.next()) {
                    ViewModelLaboratorios laboratorios = new ViewModelLaboratorios();
                    laboratorios.setId(rs.getInt("ID"));
                    laboratorios.setNif(rs.getString("NIF"));
                    laboratorios.setNombres(rs.getString("Nombres"));
                    laboratorios.setDescripcion(rs.getString("Descripcion"));
                    laboratorios.setCorreo(rs.getString("Correo"));
                    laboratorios.setTelefono(rs.getString("Telefono"));
                    laboratorios.setIdDireccion(rs.getInt("IdDireccion"));
                    listaLaboratorios.add(laboratorios);
                    System.out.print(listaLaboratorios);
                }         
                                
                request.setAttribute("listaLaboratorios", listaLaboratorios);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarProveedores(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM proveedor";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelProveedores> listaProveedores = new ArrayList<>();
                while (rs.next()) {
                    ViewModelProveedores proveedores = new ViewModelProveedores();
                    proveedores.setId(rs.getInt("ID"));
                    proveedores.setNombreEmpresa(rs.getString("NombreEmpresa"));
                    proveedores.setContactoNombre(rs.getString("ContactoNombre"));
                    proveedores.setContactoTelefono(rs.getString("ContactoTelefono"));
                    proveedores.setDireccion(rs.getString("Direccion"));
                    proveedores.setEmail(rs.getString("Email"));
                    proveedores.setFechaRegistro(rs.getDate("FechaRegistro"));
                    listaProveedores.add(proveedores);
                    System.out.print(listaProveedores);
                }         
                                
                request.setAttribute("listaProveedores", listaProveedores);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    
    //Funciones de escritura en tablas (INSERT)
    public void agregarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de los empleados es autoincrementable
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String dui = request.getParameter("dui");
        String iss = request.getParameter("iss");
        String fecha_nacimiento = request.getParameter("fecha_nacimiento");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String IdDireccion = request.getParameter("IdDireccion");
        String IdCargo = request.getParameter("IdCargo");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into empleado values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombres);
                pstmt.setString(2, apellidos);
                pstmt.setString(3, dui);
                pstmt.setString(4, iss);
                pstmt.setString(5, fecha_nacimiento);
                pstmt.setString(6, telefono);
                pstmt.setString(7, correo);
                pstmt.setString(8, IdDireccion);
                pstmt.setString(9, IdCargo);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
       
    public void agregarCliente(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de los empleados es autoincrementable
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String dui = request.getParameter("dui");
        String fecha_nacimiento = request.getParameter("fecha_nacimiento");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String IdDireccion = request.getParameter("IdDireccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into cliente values (?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombre);
                pstmt.setString(2, apellido);
                pstmt.setString(3, dui);
                pstmt.setString(4, fecha_nacimiento);
                pstmt.setString(5, telefono);
                pstmt.setString(6, correo);
                pstmt.setString(7, IdDireccion);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void agregarProducto(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de los empleados es autoincrementable
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String precio = request.getParameter("precio");
        String fechaVencimiento  = request.getParameter("fechaVencimiento");
        String stockActual = request.getParameter("stockActual");
        String stockMinimo = request.getParameter("stockMinimo");
        String fechaUltimaCompra = request.getParameter("fechaUltimaCompra");
        String fechaUltimaVenta = request.getParameter("fechaUltimaVenta");
        String instrucciones = request.getParameter("instrucciones");
        String idPrecentacion = request.getParameter("idPrecentacion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into empleado values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombre);
                pstmt.setString(2, descripcion);
                pstmt.setString(3, precio);
                pstmt.setString(4, fechaVencimiento);
                pstmt.setString(5, stockActual);
                pstmt.setString(6, stockMinimo);
                pstmt.setString(7, fechaUltimaCompra);
                pstmt.setString(8, fechaUltimaVenta);
                pstmt.setString(9, instrucciones);
                pstmt.setString(10, idPrecentacion);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void agregarLaboratorio(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de los laboratorios es autoincrementable
        String nif = request.getParameter("nif");
        String nombres = request.getParameter("nombres");
        String descripcion = request.getParameter("descripcion");
        String correo  = request.getParameter("correo");
        String telefono = request.getParameter("telefono");
        String idDireccion = request.getParameter("idDireccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into laboratorio values (?, ?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nif);
                pstmt.setString(2, nombres);
                pstmt.setString(3, descripcion);
                pstmt.setString(4, correo);
                pstmt.setString(5, telefono);
                pstmt.setString(6, idDireccion);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void agregarPreveedore(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de los proveedores es autoincrementable
        String nombreEmpresa = request.getParameter("nombreEmpresa");
        String contactoNombre = request.getParameter("contactoNombre");
        String contactoTelefono = request.getParameter("contactoTelefono");
        String direccion = request.getParameter("direccion");
        String email = request.getParameter("email");
        String notas = request.getParameter("notas");
        String fechaRegistro = request.getParameter("fechaRegistro");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into empleado values (?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombreEmpresa);
                pstmt.setString(2, contactoNombre);
                pstmt.setString(3, contactoTelefono);
                pstmt.setString(4, direccion);
                pstmt.setString(5, email);
                pstmt.setString(6, notas);
                pstmt.setString(7, fechaRegistro);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    
    //Funciones de actualizacion de registros (UPDATE)
    public void modificarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String id = request.getParameter("id");
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String dui = request.getParameter("dui");
        String iss = request.getParameter("iss");
        String fecha_nacimiento = request.getParameter("fecha_nacimiento");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String IdDireccion = request.getParameter("IdDireccion");
        String IdCargo = request.getParameter("IdCargo");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update empleado set "
                 + "nombres='"+nombres+"', "
                 + "apellidos='"+apellidos+"', "
                 + "dui='"+dui+"', "
                 + "iss='"+iss+"', "
                 + "fecha_nacimiento='"+fecha_nacimiento+"', "
                 + "telefono='"+telefono+"', "
                 + "correo='"+correo+"', " 
                 + "IdDireccion='"+IdDireccion+"', "
                 + "IdCargo='"+IdCargo+"' " 
                 + "where id='"+id+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void modificarCliente(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String id = request.getParameter("id");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String dui = request.getParameter("dui");
        String fecha_nacimiento = request.getParameter("fecha_nacimiento");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String IdDireccion = request.getParameter("IdDireccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update cliente set "
                 + "nombre='"+nombre+"', "
                 + "apellido='"+apellido+"', "
                 + "dui='"+dui+"', "
                 + "fecha_nacimiento='"+fecha_nacimiento+"', "
                 + "telefono='"+telefono+"', "
                 + "correo='"+correo+"', " 
                 + "IdDireccion='"+IdDireccion+"', "
                 + "where id='"+id+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
     
    public void modificarProducto(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String id = request.getParameter("id");
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String precio = request.getParameter("precio");
        String fechaVencimiento = request.getParameter("fechaVencimiento");
        String stockActual = request.getParameter("stockActual");
        String stockMinimo = request.getParameter("stockMinimo");
        String fechaUltimaCompra = request.getParameter("fechaUltimaCompra");
        String fechaUltimaVenta = request.getParameter("fechaUltimaVenta");
        String instrucciones = request.getParameter("instrucciones");
        String IdPrecentacion = request.getParameter("IdPrecentacion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update cliente set "
                 + "nombre='"+nombre+"', "
                 + "descripcion='"+descripcion+"', "
                 + "precio='"+precio+"', "
                 + "fechaVencimiento='"+fechaVencimiento+"', "
                 + "stockActual='"+stockActual+"', "
                 + "stockMinimo='"+stockMinimo+"', " 
                 + "fechaUltimaCompra='"+fechaUltimaCompra+"', "
                 + "fechaUltimaVenta='"+fechaUltimaVenta+"', "
                 + "instrucciones='"+instrucciones+"', "
                 + "IdPrecentacion='"+IdPrecentacion+"', "
                 + "where id='"+id+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void modificarLaboratorio(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String id = request.getParameter("id");
        String nif = request.getParameter("nif");
        String nombres = request.getParameter("nombres");
        String descripcion = request.getParameter("descripcion");
        String correo = request.getParameter("correo");
        String telefono = request.getParameter("telefono");
        String IdDireccion = request.getParameter("IdDireccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update laboratorio set "
                 + "nombre='"+nif+"', "
                 + "apellido='"+nombres+"', "
                 + "dui='"+ descripcion +"', "
                 + "fecha_nacimiento='"+ correo +"', "
                 + "telefonoEmpleado='"+telefono+"', "
                 + "IdDireccion='"+IdDireccion+"', "
                 + "where id='"+id+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
     
    public void modificarProveedor(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String id = request.getParameter("id");
        String nombreEmpresa = request.getParameter("nombreEmpresa");
        String contactoNombre = request.getParameter("contactoNombre");
        String contactoTelefono = request.getParameter("contacoTelefono");
        String direccion = request.getParameter("direccion");
        String email = request.getParameter("email");
        String notas = request.getParameter("notas");
        String fechaRegistro = request.getParameter("fechaRegistro");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update proveedor set "
                 + "nombreEmpresa='"+nombreEmpresa+"', "
                 + "contactoNombre='"+contactoNombre+"', "
                 + "contactoTelefono='"+contactoTelefono+"', "
                 + "direccion='"+direccion+"', "
                 + "email='"+email+"', "
                 + "notas='"+notas+"', " 
                 + "fechaRegistro='"+fechaRegistro+"', "
                 + "where id='"+id+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    
    
    //Funciones de eliminacion de registros (DELETE)
    public void eliminarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from empleado where id='" + id + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarCliente(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from cliente where id='" + id + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarProducto(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from producto where id='" + id + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarLaboratorio(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from laboratorio where id='" + id + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarProveedor(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from proveedor where id='" + id + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    
    
    
    
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //REDIRECCIONES DE PAGINAS
        String accion = request.getParameter("accion");
        if (accion == null) {
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        } else if (accion.equals("Login")) {
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        } else if (accion.equals("GestionarEmpleados")) {
            mostrarEmpleados(request, response);
            request.getRequestDispatcher("/GestionarEmpleados.jsp").forward(request, response);
        } else if (accion.equals("GestionarClientes")) {
            mostrarClientes(request, response);
            request.getRequestDispatcher("/GestionarClientes.jsp").forward(request, response);
        } else if (accion.equals("GestionarProductos")) {
            mostrarProductos(request, response);
            request.getRequestDispatcher("/GestionarProductos.jsp").forward(request, response);
        }else if (accion.equals("GestionarLaboratorios")) {
            mostrarLaboratorios(request, response);
            request.getRequestDispatcher("/GestionarLaboratorios.jsp").forward(request, response);
        }else if (accion.equals("GestionarProveedores")) {
            mostrarProveedores(request, response);
            request.getRequestDispatcher("/GestionarProveedores.jsp").forward(request, response);
        }else if (accion.equals("AgregarEmpleado")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarEmpleado.jsp").forward(request, response);
        }else if (accion.equals("AgregarCliente")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarCliente.jsp").forward(request, response);
        }else if (accion.equals("AgregarProducto")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarProducto.jsp").forward(request, response);
        }else if (accion.equals("AgregarLaboratorio")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarLaboratorio.jsp").forward(request, response);
        }else if (accion.equals("AgregarProveedor")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarProveedor.jsp").forward(request, response);
        }
      

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //AUTENTICACION DE CREDENCIALES
        String accion = request.getParameter("accion");

        if (accion.equals("Login")) {
            String usuario = request.getParameter("tfUsuario");
            String contrasenia = request.getParameter("tfContrasenia");

            try (PrintWriter print = response.getWriter()) {
                if (usuario.equals("admin@gmail.com") && contrasenia.equals("root")) {
                    request.getRequestDispatcher("/PanelAdministrador.jsp").forward(request, response);

                } else {
                    print.println("<!DOCTYPE html>");
                    print.println("<html>");
                    print.println("<head>");
                    print.println("<title>Login Farmaceutico</title>");
                    print.println("</head>");
                    print.println("<body>");
                    print.println("<h2>Error: La contraseña o el usuario son erróneos</h2>");
                    print.println("</body>");
                    print.println("</html>");
                }
            }
        }
        
        
        //CAPTURA DE DATOS ENVIADOS POR POST
        if (accion.equals("AgregarEmpleado")){
            agregarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarEmpleado");
        } else if (accion.equals("ModificarEmpleado")){
            modificarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=ModificarEmpleado");
        } else if (accion.equals("EliminarEmpleado")){
            eliminarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=EliminarEmpleado");
        } else if (accion.equals("AgregarCliente")){
            agregarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarCliente");
        } else if (accion.equals("ModificarCliente")){
            modificarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=ModificarCliente");
        } else if (accion.equals("EliminarCliente")){
            eliminarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=EliminarCliente");
        } else if (accion.equals("AgregarProducto")){
            agregarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarProducto");
        } else if (accion.equals("ModificarProducto")){
            modificarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=ModificarProducto");
        } else if (accion.equals("EliminarProducto")){
            eliminarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=EliminarProducto");
        } else if (accion.equals("AgregarLaboratorio")){
            agregarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarLaboratorio");
        } else if (accion.equals("ModificarLaboratorio")){
            modificarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=ModificarLaboratorio");
        } else if (accion.equals("EliminarLaboratorio")){
            eliminarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=EliminarLaboratorio");
        }  else if (accion.equals("AgregarProveedor")){
            agregarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarProveedor");
        } else if (accion.equals("ModificarProvedor")){
            modificarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=ModificarProveedor");
        } else if (accion.equals("EliminarProveedor")){
            eliminarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=EliminarProveedor");
        } 
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
