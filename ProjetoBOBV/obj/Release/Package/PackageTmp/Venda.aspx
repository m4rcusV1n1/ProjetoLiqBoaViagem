<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Venda.aspx.cs" Inherits="ProjetoBOBV.Venda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <legend>
      <i class="glyphicon glyphicon-plus"></i> Mailing BO
  </legend>
        <br />
        <!-- Inicio mailing cabeçalho com os dados do email -->
        <div class="row">
            <div class="col-md-3">
        
        <asp:Label ID="Label36" runat="server" Text="Código do Mailing"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtid" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
           </div>
        <div class="col-md-3">
        <asp:Label ID="Label14" runat="server" Text="Data do E-mail"></asp:Label>
        <asp:TextBox ID="txtdtemail" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    </div>
               <div class="col-md-3">
       
        <asp:Label ID="Label15" runat="server" Text="Canal de Entrada"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtcanalentrada" runat="server" CssClass="form-control" ReadOnly="true" ></asp:TextBox>
                   </div>
       <div class="col-md-3">
        
        <asp:Label ID="Label16" runat="server" Text="Protocolo E-mail"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtprotocolo" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
           </div>

    </div>
        <!-- Fim do cabeçalho do email -->
        <!--inicio dados do colaborador -->
        <br />

        <asp:Label ID="Label3" runat="server" Text="Dados do Colaborador" style="font-weight: 700"></asp:Label>
        <hr />
        <asp:Label ID="Label1" runat="server" Text="Nome do Colaborador"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtnomecolaborador" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    
    
        <div class="row">
         <div class="col-md-4">
         <asp:Label ID="Label2" runat="server" Text="Id do Colaborador"></asp:Label>
        <br />
             
        <asp:TextBox ID="txtidcolaborador" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
             <br />
             </div>
             <div class="col-md-4">
             <asp:Label ID="Label4" runat="server" Text="Telefone do Colaborador"></asp:Label>
        <br />
        <asp:TextBox ID="txttelefonecolaborador" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
             <br />
                 </div>
             <div class="col-md-4">
                     <asp:Label ID="Label5" runat="server" Text="Email do Colaborador"></asp:Label>
        <br />
        <asp:TextBox ID="txtemailcolaborador" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
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
        <asp:TextBox ID="txtnomecliente" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    <div class="row">
        <div class="col-md-4">
         <asp:Label ID="Label8" runat="server" Text="Telefone do Cliente"></asp:Label>
    
        <br />
        <asp:TextBox ID="txttelcliente" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    
        <br />
            </div>
        <div class="col-md-4">
         <asp:Label ID="Label9" runat="server" Text="CPF do Cliente"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtcpfcliente" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    
        <br />
            </div>
        <div class="col-md-4">
         <asp:Label ID="Label10" runat="server" Text="Email do Cliente"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtemailcliente" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    
        <br />
            </div>
         <div class="col-md-4">
         <asp:Label ID="Label11" runat="server" Text="UF do Cliente"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtufcliente" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    
        <br />
            </div>
             <div class="col-md-4">
         <asp:Label ID="Label12" runat="server" Text="Cidade do Cliente"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtcidadecliente" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    
        <br />
            </div>
         <div class="col-md-4">
         <asp:Label ID="Label17" runat="server" Text="Produto do Cliente"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtproduto" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    
        <br />
            </div>

        </div>

        <asp:Label ID="Label13" runat="server" Text="Outras Informações"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtinformacoes" runat="server" CssClass="form-control" TextMode="MultiLine" ReadOnly="true"></asp:TextBox>
        <!-- Fim dados do cliente -->
         <!-- inicio marcação operador -->
          <br />
         <asp:Label ID="Label18" runat="server" Text="Marcação do Operador" style="font-weight: 700"></asp:Label>
        <br />
        <hr />

    <div class="row">
    <div class="col-md-4">
    <asp:Label ID="Label20" runat="server" Text="Status"></asp:Label>
        <br />
        <asp:TextBox ID="txtstatus" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>

    </div>

          <div class="col-md-2">
    <asp:Label ID="Label21" runat="server" Text="Data Contato"></asp:Label>
        <br />
              <asp:TextBox ID="txtdtcontato" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>

    </div>
        <div class="col-md-2">
    <asp:Label ID="Label23" runat="server" Text="Hora Contato" ></asp:Label>
        <br />
              <asp:TextBox ID="txttime" runat="server" CssClass="form-control" TextMode="Time" ReadOnly="true"></asp:TextBox>

    </div>

           <div class="col-md-4">
    <asp:Label ID="Label22" runat="server" Text="Resultado"></asp:Label>
        <br />
               <asp:TextBox ID="txtresultado" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>

    </div>



    </div>
        <div class="row">
<div class="col-md-4">
    <asp:Label ID="Label24" runat="server" Text="Sub-Motivo"></asp:Label>
        <br />
    <asp:TextBox ID="txtsubmotivo" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox> 

    </div>
            <div id="horario">
        <div class="col-md-2">
    <asp:Label ID="Label25" runat="server" Text="Produto Solicitado"></asp:Label>
        <br />
            <asp:TextBox ID="txtprodutosolicitado" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>

    </div>
                </div>
<div class="col-md-2">
    <asp:Label ID="Label26" runat="server" Text="Total de Itens Vendidos"></asp:Label>
        <br />
       <asp:TextBox ID="txtitensvendidos" runat="server" CssClass="form-control" TextMode="number" ReadOnly="true"></asp:TextBox>         
    </div>
        
     <div class="col-md-2">
    <asp:Label ID="Label27" runat="server" Text="Mensalidades do Produto"></asp:Label>
        <br />
       <asp:TextBox ID="txtmensalidade" runat="server" CssClass="form-control" TextMode="number" ReadOnly="true"></asp:TextBox>         
    </div>
       <div class="col-md-2">
    <asp:Label ID="Label28" runat="server" Text="Data da Venda"></asp:Label>
        <br />
       <asp:TextBox ID="txtdatavenda" runat="server" CssClass="form-control" ReadOnly="true" ></asp:TextBox>         
    </div>    
        </div>
        <div class="row">
<div class="col-md-3">
    <asp:Label ID="Label29" runat="server" Text="CPF-Venda"></asp:Label>
    <br />
     <asp:TextBox ID="txtcpfvenda" runat="server" CssClass="form-control" TextMode="number" ReadOnly="true" ></asp:TextBox>         
    </div>
<div class="col-md-3">
    <asp:Label ID="Label30" runat="server" Text="OS"></asp:Label>
    <br />
     <asp:TextBox ID="txtos" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>         
    </div>

<div class="col-md-3">
    <asp:Label ID="Label31" runat="server" Text="Data do Agendamento"></asp:Label>
    <br />
     <asp:TextBox ID="txtdataagendamento" runat="server" CssClass="form-control" ReadOnly="true" ></asp:TextBox>         
    </div>
<div class="col-md-3">
    <asp:Label ID="Label32" runat="server" Text="MSISDN"></asp:Label>
    <br />
     <asp:TextBox ID="txtmsisdn" runat="server" CssClass="form-control" TextMode="number" ReadOnly="true"></asp:TextBox>         
    </div>
        </div>
 <div class="row">
        <div class="col-md-4">
<asp:Label ID="Label33" runat="server" Text="Data da ativação/instalação"></asp:Label>
    <br />
     <asp:TextBox ID="txtdtinstalacao" runat="server" CssClass="form-control" TextMode="date" ></asp:TextBox>
</div>
<div class="col-md-4">
<asp:Label ID="Label34" runat="server" Text="Data do Cancelamento"></asp:Label>
    <br />
     <asp:TextBox ID="txtdtcancelamento" runat="server" CssClass="form-control" TextMode="date"></asp:TextBox>
</div>

<div class="col-md-4">
<asp:Label ID="Label35" runat="server" Text="Motivo Cancelamento"></asp:Label>
    <br />
    <asp:DropDownList ID="txtmotivocancelamento" runat="server" CssClass="form-control">
                   <asp:ListItem></asp:ListItem>
                   
                   <asp:ListItem>Desistência</asp:ListItem>
                   <asp:ListItem>Desistência do cliente</asp:ListItem>
                   <asp:ListItem>Falta de cabeamento</asp:ListItem>
                   <asp:ListItem>Inviabilidade</asp:ListItem>
                   <asp:ListItem>Plano inativo</asp:ListItem>
                   <asp:ListItem>Problema com tubulação interna</asp:ListItem>
                   
                </asp:DropDownList>

</div>
</div>
       
<asp:Label ID="Label19" runat="server" Text="Observação"></asp:Label>
    
        <br />
        <asp:TextBox ID="txtob" runat="server" CssClass="form-control" TextMode="MultiLine" ReadOnly="true"></asp:TextBox>
        <!-- fim div container -->

             <br />
        <asp:Button ID="txtsalvar" runat="server" Text="Salvar" CssClass="btn btn-large btn-primary"  />
         </div>
     <br />
     <br />
   
</asp:Content>
