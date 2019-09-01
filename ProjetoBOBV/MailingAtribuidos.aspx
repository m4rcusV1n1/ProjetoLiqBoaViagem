<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MailingAtribuidos.aspx.cs" Inherits="ProjetoBOBV.MailingAtribuidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <legend>
      <i class="glyphicon glyphicon-plus"></i> Mailing Reservados
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
        <asp:TemplateField HeaderText="Nome di Cliente" >
        <ItemTemplate>
        <center><%# Eval("nome_cliente")%></center>
        </ItemTemplate>
        </asp:TemplateField>
             <asp:TemplateField HeaderText="Telefone do Cliente" >
        <ItemTemplate>
        <center><%# Eval("tel_cliente")%></center>
        </ItemTemplate>
        </asp:TemplateField>
             <asp:TemplateField HeaderText="UF do Cliente" >
        <ItemTemplate>
        <center><%# Eval("uf_cliente")%></center>
        </ItemTemplate>
        </asp:TemplateField>
                 <asp:TemplateField HeaderText="Cidade do Cliente" >
        <ItemTemplate>
        <center><%# Eval("cidade_cliente)%></center>
        </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="">
        <ItemTemplate>
        <center><a href="Mostrar.aspx?id=<%#Eval("id")%>">Abrir</a></center>
        </ItemTemplate>
        </asp:TemplateField>
        </Columns>
    </asp:GridView>
        </div>
</asp:Content>
