<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buscar.aspx.cs" Inherits="ProjetoBOBV.Buscar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
    <span style="color: red"><strong>Não foram encontrados registros para a busca com esse Re.</strong></span>
    </EmptyDataTemplate>

    </asp:GridView>
    </div>
    </form>
</body>
</html>
