<%-- 
    Document   : index
    Created on : 11 de mai. de 2023, 14:40:30
    Author     : gabriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String resultado = "";
double nro1 = 0;
double nro2 = 0;
String operacao = "";



if (request.getMethod() == "POST") {

    operacao = request.getParameter("operacao");
    
    try {
           nro1 = Double.parseDouble(request.getParameter("nro1"));
            nro2 = Double.parseDouble(request.getParameter("nro2"));
            
            if ("1".equals(operacao) ){
                resultado = String.valueOf(nro1 + nro2);
    }
                
                if ("2".equals(operacao) )
                resultado = String.valueOf((nro1+nro2)/2);
     
        } catch (Exception e) {
         resultado = "Utilize apenas numeros!";
        }
   
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
            <input type="text" required name="nro1" value="<%= nro1 %>" ><br />
            Segundo Número:<br />
            <input  type="text" required name="nro2" value="<%= nro2 %>" /><br /><br />
             
            <div style="display: flex">
                <input type="radio" name="operacao" id="somar" value="1" />
                <span style="margin-left: 5px"> Somar</span>
              </div>
              <div style="display: flex">
                  <input type="radio" name="operacao" id="media" value="2" />
                <span style="margin-left: 5px"> Média</span>
              </div>
            <br />
            <input type="submit" name="calcular" value="Calcular" />
            <br />
            <br /><br />
            Resultado: <%=resultado%> <br />

         
         
    </body>
</html>