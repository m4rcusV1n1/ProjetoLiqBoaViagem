<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MostrarVenda.aspx.cs" Inherits="ProjetoBOBV.MostrarVenda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <legend>
      <i class="glyphicon glyphicon-plus"></i> Tratamento de Venda
  </legend>
    <asp:GridView ID="Consulta_status" runat="server" Width="100%" AutoGenerateColumns="false" CssClass="table table-condensed">
        <Columns>
            <asp:TemplateField HeaderText="Código">
        <ItemTemplate>

       <center> <%# Eval("id") %></center>
        </ItemTemplate>
        </asp:TemplateField>
        
          <asp:TemplateField HeaderText="Nome do Colaborador">
        <ItemTemplate>
        <center><%# Eval("nome_colaborador") %></center>
        </ItemTemplate>
        </asp:TemplateField>
           <asp:TemplateField HeaderText="Id do Colaborador" >
        <ItemTemplate>
         <center><%# Eval("id_colaborador") %></center>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Nome do Cliente" >
        <ItemTemplate>
        <center><%# Eval("nome_cliente")%></center>
        </ItemTemplate>
        </asp:TemplateField>
             <asp:TemplateField HeaderText="Telefone do Cliente" >
        <ItemTemplate>
        <center><%# Eval("tel_cliente")%></center>
        </ItemTemplate>
        </asp:TemplateField>
             <asp:TemplateField HeaderText="Resultado" >
        <ItemTemplate>
        <center><%# Eval("resultado")%></center>
        </ItemTemplate>
        </asp:TemplateField>
                 <asp:TemplateField HeaderText="Status da Marcação" >
        <ItemTemplate>
        <center><%# Eval("status_marcacao")%></center>
        </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="">
        <ItemTemplate>
        <center><a href="venda.aspx?id=<%#Eval("id")%>">Abrir</a></center>
        </ItemTemplate>
        </asp:TemplateField>
        </Columns>
    </asp:GridView>
        </div>
</asp:Content>
