<%-- 
    Document   : salvaDespesa
    Created on : 26 de jul. de 2024, 14:50:46
    Author     : Aluno
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.despesascasa.Despesas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>pagina da despesa</title>
    </head>
    <body>
        <h1>Despesas!</h1>
        
        <%
         
         String data = request.getParameter("data");
         String categoria = request.getParameter("categoria");
         String descricao = request.getParameter("descricao");
         String local = request.getParameter("local");
         double valor = Double.parseDouble(request.getParameter("valor"));
         int parcelas = Integer.parseInt(request.getParameter("parcelas"));
         
         
         
         Despesas despesa = new Despesas(data, categoria, descricao, local, valor, parcelas);
         

         out.print("Data do pagamento da despesa: " + data + "<br>");
        
         
         out.print("Categoria da despesa: " + categoria + "<br>");
         
         out.print ("Descrição: " + descricao + "<br>");
        
         out.print("local onde o pagamento será feito: " + local + "<br>");
         
         out.print ("Valor desta despesa: " + valor + "<br>");
         
            out.print ("Total de parcelas a serem pagas: " + parcelas + "<br>");
        
        %>
        
    </body>
</html>
