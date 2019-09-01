<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="BuscarCliente.aspx.cs" Inherits="ProjetoBOBV.BuscarCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <legend>
      <i class="glyphicon glyphicon-search"></i> Buscar Cliente
  </legend>
    <br />
     <div class="row">
   <div class="col-md-6">
         <asp:Label ID="Label1" runat="server" Text="Digite Código Email:"></asp:Label>
         <br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" CssClass="btn btn btn-primary" />
         <br />
         <br />
         Resultado:
         <hr />
       </div>
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="1024" >
    
    <Columns>

        <asp:TemplateField HeaderText="Protocolo Email">
        <ItemTemplate>

        <%# Eval("protocolo_email") %>
        </ItemTemplate>
        </asp:TemplateField>

          <asp:TemplateField HeaderText="Nome Colaborador">
        <ItemTemplate>
        <%# Eval("nome_colaborador") %>
        </ItemTemplate>
        </asp:TemplateField>
         <asp:TemplateField HeaderText="Nome Cliente">
        <ItemTemplate>
        <%# Eval("nome_cliente") %>
        </ItemTemplate>
        </asp:TemplateField>
         <asp:TemplateField HeaderText="Produto cliente">
        <ItemTemplate>
       <center> <%# Eval("produto_cliente") %></center>
        </ItemTemplate>
        </asp:TemplateField>
           <asp:TemplateField HeaderText="Resultado" >
        <ItemTemplate>
         <%# Eval("resultado") %>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Buscar">
        <ItemTemplate>
        <center><a href="consult.aspx?id=<%#Eval("id")%>"><img src="imagens/editar.png" width="20" height="20" alt="excluir"></a></center>
        </ItemTemplate>
        </asp:TemplateField>
        </Columns>
    <EmptyDataTemplate>
    <span style="color: red"><strong>Não foram encontrados registros para essa busca</strong></span>
    </EmptyDataTemplate>

    </asp:GridView>
    </div>
</asp:Content>
