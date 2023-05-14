<%-- 
    Document   : index
    Created on : 11 de mai. de 2023, 14:40:30
    Author     : gabriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
double resultado = 0;
double nro1 = 0;
double nro2 = 0;


if (request.getMethod() == "POST") {
    nro1 = Double.parseDouble(request.getParameter("nro1"));
    nro2 = Double.parseDouble(request.getParameter("nro2"));
    
    if (request.getParameter("somar") != null) {
      resultado = nro1 + nro2;
    }else 
    resultado = (nro1+nro2)/2;
}




%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CalculadorJSP</title>
    </head>
    <body>
        <h1>CalculadoraJSP</h1>
        <form method="post"> 
            Primeiro Número:<br /> 
            <input type="number" required name="nro1" value="<%= nro1 %>" /><br />
            Segundo Número:<br />
            <input  type="number" required name="nro2" value="<%= nro2 %>" /><br /><br />
             <input type="submit" value="Somar" name="somar" />
            <input type="submit" value="Media" name="media"/>
            <br /><br />
            Resultado: <%=resultado%>
        
        
         
    </body>
</html>