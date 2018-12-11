<%@page import="controladores.DetallesAjustesControlador"%>
<%@page import="controladores.StocksControlador"%>
<%@page import="modelos.Stocks"%>
<%@page import="modelos.Productos"%>
<%@page import="modelos.DetallesAjustes"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%
    //int id_producto = Integer.parseInt(request.getParameter("id_producto"));
    int id_ajuste_stock = Integer.parseInt(request.getParameter("id_ajuste_stock"));
    //int cantidad_ajuste_stock = Integer.parseInt(request.getParameter("cantidad_ajuste_stock"));

    String tipo = "error";
    String mensaje = "Datos no eliminados.";

    DetallesAjustes detalleajuste = new DetallesAjustes();
    detalleajuste.setId_ajuste_stock_detalle(id_ajuste_stock);

    /*Productos producto=new Productos();
    producto.setId_producto(id_producto);*/
    //Stock stock = new Stock();
    //stock.setId_stock(id_ajuste_stock);
    //stock.setCantidad_stock(cantidad_ajuste_stock);
    //stock.setProducto(producto);
    //StockControlador.sumar1(stock);
    if (DetallesAjustesControlador.eliminar(detalleajuste)) {
        tipo = "success";
        mensaje = "Datos eliminados.";
    }

    JSONObject obj = new JSONObject();
    obj.put("tipo", tipo);
    obj.put("mensaje", mensaje);
    out.print(obj);
    out.flush();
%>