<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Cadastrarmailing.aspx.cs" Inherits="ProjetoBOBV.Cadastrarmailing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <legend>
      <i class="glyphicon glyphicon-plus"></i>Cadastrar Mailing
  </legend>
        <br />
        <!-- Inicio mailing cabeçalho com os dados do email -->
    
        <div class="row">
            <div class="col-md-3">
                <asp:Label ID="Label36" runat="server" Text="Código do Mailing"></asp:Label>
                <br />
                <asp:TextBox ID="txtid" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="col-md-3">
                <asp:Label ID="Label14" runat="server" Text="Data do E-mail"></asp:Label>
                <asp:TextBox ID="txtdtemail" runat="server" CssClass="form-control" TextMode="Date" required="required"></asp:TextBox>
            </div>
            <div class="col-md-3">
                <asp:Label ID="Label15" runat="server" Text="Canal de Entrada"></asp:Label>
                <br />
                <asp:DropDownList ID="canalentrada" runat="server" CssClass="form-control" required="required">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Aplicativo Celular</asp:ListItem>
                    <asp:ListItem>Conecta</asp:ListItem>
                    <asp:ListItem>Interativa Oi</asp:ListItem>
                    <asp:ListItem>Serede</asp:ListItem>
                </asp:DropDownList>
                <br />
            </div>
            <div class="col-md-3">
                <asp:Label ID="Label16" runat="server" Text="Protocolo E-mail"></asp:Label>
                <br />
                <asp:TextBox ID="txtprotocolo" runat="server" CssClass="form-control" required="required" ></asp:TextBox>
            </div>
    </div>
        <!-- Fim do cabeçalho do email -->
        <!--inicio dados do colaborador -->
        <br />
        
    <asp:Label ID="Label3" runat="server" Text="Dados do Colaborador" style="font-weight: 700"></asp:Label>
    <hr />
        <div class="row">
        <div class="col-md-6">
    <asp:Label ID="Label1" runat="server" Text="Nome do Colaborador"></asp:Label>
    <br />
    <asp:TextBox ID="txtnomecolaborador" runat="server" CssClass="form-control" required="required" ></asp:TextBox>
            </div>
             <div class="col-md-6">
            <asp:Label ID="Label18" runat="server" Text="CPF do Colaborador"></asp:Label>
    <br />
    <asp:TextBox ID="txtcpf" runat="server" CssClass="form-control" required="required" ></asp:TextBox>
            </div>
            </div>
        
    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="Label2" runat="server" Text="Id do Colaborador"></asp:Label>
            <br />
            <asp:TextBox ID="txtidcolaborador" runat="server" CssClass="form-control" required="required" ></asp:TextBox>
            <br />
        </div>
        <div class="col-md-4">
            <asp:Label ID="Label4" runat="server" Text="Telefone do Colaborador"></asp:Label>
            <br />
            <asp:TextBox ID="txttelefonecolaborador" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            <br />
        </div>
        <div class="col-md-4">
            <asp:Label ID="Label5" runat="server" Text="Email do Colaborador"></asp:Label>
            <br />
            <asp:TextBox ID="txtemailcolaborador" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            <br />
        </div>
    </div>
        <!-- Fim dados do colaborador -->
        <!-- inicio dados do cliente -->
        <asp:Label ID="Label6" runat="server" Text="Dados do Cliente" style="font-weight: 700"></asp:Label>
    <br />
    <hr />
    <asp:Label ID="Label7" runat="server" Text="Nome do Cliente"></asp:Label>
    <br />
    <asp:TextBox ID="txtnomecliente" runat="server" CssClass="form-control" required="required" ></asp:TextBox>
    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="Label8" runat="server" Text="Telefone do Cliente"></asp:Label>
            <br />
            <asp:TextBox ID="txttelcliente" runat="server" CssClass="form-control" required="required" ></asp:TextBox>
            <br />
        </div>
        <div class="col-md-4">
            <asp:Label ID="Label9" runat="server" Text="CPF do Cliente"></asp:Label>
            <br />
            <asp:TextBox ID="txtcpfcliente" runat="server" CssClass="form-control" required="required" ></asp:TextBox>
            <br />
        </div>
        <div class="col-md-4">
            <asp:Label ID="Label10" runat="server" Text="Email do Cliente"></asp:Label>
            <br />
            <asp:TextBox ID="txtemailcliente" runat="server" CssClass="form-control" required="required" ></asp:TextBox>
            <br />
        </div>
        <div class="col-md-4">
            <asp:Label ID="Label11" runat="server" Text="UF do Cliente"></asp:Label>
            <br />
            <asp:DropDownList runat="server" ID="ufcliente" CssClass="form-control" required="required">
                <asp:ListItem Text="" />
                 <asp:ListItem> AC </asp:ListItem>
    <asp:ListItem> AL</asp:ListItem>
    <asp:ListItem> AM </asp:ListItem>
    <asp:ListItem> AP </asp:ListItem>
    <asp:ListItem> BA </asp:ListItem>
    <asp:ListItem> CE </asp:ListItem>
    <asp:ListItem> DF </asp:ListItem>
    <asp:ListItem> ES </asp:ListItem>
    <asp:ListItem> GO </asp:ListItem>
    <asp:ListItem> MA </asp:ListItem>
    <asp:ListItem> MG </asp:ListItem>
    <asp:ListItem> MS </asp:ListItem>
    <asp:ListItem> MT </asp:ListItem>
    <asp:ListItem> PA </asp:ListItem>
    <asp:ListItem> PB </asp:ListItem>
    <asp:ListItem> PE </asp:ListItem>
    <asp:ListItem> PI </asp:ListItem>
    <asp:ListItem> PR </asp:ListItem>
    <asp:ListItem> RJ </asp:ListItem>
    <asp:ListItem> RN </asp:ListItem>
    <asp:ListItem> RO </asp:ListItem>
    <asp:ListItem> RR </asp:ListItem>
    <asp:ListItem> RS </asp:ListItem>
    <asp:ListItem> SC </asp:ListItem>
    <asp:ListItem> SE </asp:ListItem>
    <asp:ListItem> SP </asp:ListItem>
    <asp:ListItem> TO </asp:ListItem>
</asp:DropDownList>
            <br />
        </div>
        <div class="col-md-4">
            <asp:Label ID="Label12" runat="server" Text="Cidade do Cliente"></asp:Label>
            <br />
           <asp:TextBox ID="cidadecliente1" runat="server" CssClass="form-control" required="required" ></asp:TextBox>
            <br />
        </div>
        <div class="col-md-4">
            <asp:Label ID="Label17" runat="server" Text="Produto do Cliente" ></asp:Label>
            <br />
             <asp:DropDownList ID="produto" runat="server" CssClass="form-control" required="required" >
                   <asp:ListItem></asp:ListItem>
                   <asp:ListItem>Fixo</asp:ListItem>
                   <asp:ListItem>Velox</asp:ListItem>
                   <asp:ListItem>TV </asp:ListItem>
                   <asp:ListItem Value="Pós "></asp:ListItem>
                   <asp:ListItem>Controle</asp:ListItem>
                   <asp:ListItem>2P BL</asp:ListItem>
                   <asp:ListItem>2P TV</asp:ListItem>
                   <asp:ListItem>3P</asp:ListItem>
                   <asp:ListItem>4P</asp:ListItem>
                   <asp:ListItem>Fibra TV+Internet</asp:ListItem>
                   <asp:ListItem>Fibra TV</asp:ListItem>
                   <asp:ListItem>Fibra Internet</asp:ListItem>
                </asp:DropDownList>
            <br />
        </div>
    </div>
    <asp:Label ID="Label13" runat="server" Text="Outras Informações"></asp:Label>
    <br />
    <asp:TextBox ID="txtinformacoes" runat="server" CssClass="form-control" TextMode="MultiLine" ></asp:TextBox>

    <br />
    <asp:Button ID="txtsalvar" runat="server" Text="Cadastrar" CssClass="btn btn-large btn-primary" OnClick="txtsalvar_Click" />
        </div>
</asp:Content>
