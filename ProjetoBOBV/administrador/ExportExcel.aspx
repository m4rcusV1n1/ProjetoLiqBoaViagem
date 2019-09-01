<%@ Page Title="" Language="C#" MasterPageFile="~/administrador/administrador.Master" AutoEventWireup="true" CodeBehind="ExportExcel.aspx.cs" Inherits="ProjetoBOBV.administrador.ExportExcel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <legend>
      <i class="glyphicon glyphicon-download-alt" style="margin-left:15px;"></i> Relatório<br />
        </legend>
       
     <div class="row">
        <div class="col-md-4" style="margin-left:15px;">      
   
    <asp:Label ID="Label1" runat="server" Text="Data Inicial:" style="font-weight: 700"></asp:Label>
    <br />
   <asp:TextBox ID="txtdataini" runat="server" TextMode="Date" CssClass="form-control" required="required" ></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Data Final:" style="font-weight: 700"></asp:Label>
    <br />
   <asp:TextBox ID="txtdatafim" runat="server" TextMode="Date" CssClass="form-control" required="required"></asp:TextBox>
        <br />
    <br />
        <asp:Button ID="Button1" runat="server" Text="Gerar Relatório" OnClick="relatorio_excel" CssClass="btn btn-primary" />
    </div>
         
          </div>
</asp:Content>
