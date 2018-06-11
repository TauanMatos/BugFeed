<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Dashboard/FuncionarioMasterPage.master" AutoEventWireup="true" CodeBehind="Relatorio.aspx.cs" Inherits="BugFeed.Dashboard.Programas.Relatorio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="main-content container-fluid">
    <div class="row">
      <div class="col-12">
        <div class="user-info-list card">
          <div class="card-header card-header-divider">
            <asp:Label runat="server" ID="Label1" Text="Título: "></asp:Label>
            <asp:Label runat="server" ID="lblTitulo"></asp:Label>
            <span class="card-subtitle">
              <asp:Label runat="server" ID="Label2" Text="Data: "></asp:Label>
              <asp:Label runat="server" ID="lblData"></asp:Label>
            </span>
          </div>
          <div class="card-body">
            <table class="no-border no-strip skills">
              <tbody class="no-border-x no-border-y">
                <tr>
                  <td class="item" style="width: 6%">Pesquisador: <span class="icon s7-portfolio"></span></td>
                  <td>
                    <asp:Label runat="server" ID="lblPesquisador"></asp:Label></td>
                </tr>
                <tr>
                  <td class="item">Status: <span class="icon s7-gift"></span></td>
                  <td>
                    <asp:Label runat="server" ID="lblStatus" CssClass="col-form-label"></asp:Label></td>
                </tr>
                <tr>
                  <td class="item">Impacto: <span class="icon s7-phone"></span></td>
                  <td>
                    <asp:Label runat="server" ID="lblImpacto" CssClass="col-form-label"></asp:Label></td>
                </tr>
                <tr>
                  <td class="item" style="vertical-align: top">Descrição: <span class="icon s7-map-marker"></span></td>
                  <td>
                    <asp:Label runat="server" ID="lblDescricao" CssClass="col-form-label"></asp:Label></td>
                </tr>
              </tbody>
            </table>
            <div class="row"></div>
            <div class="row"></div>
            <asp:Repeater runat="server" ID="rptComentarios" OnItemDataBound="rptComentarios_ItemDataBound">
              <HeaderTemplate>
              </HeaderTemplate>
              <ItemTemplate>
                <div class="card card-contrast">
                  <div class="card-header card-header-contrast">
                    <asp:Label runat="server" ID="lblUsuarioComentario"></asp:Label>
                    <span class="card-subtitle">
                      <asp:Label runat="server" ID="lblDataComentario"></asp:Label>
                    </span>
                  </div>
                  <div class="card-body">
                    <asp:Label runat="server" ID="lblComentario"></asp:Label>
                  </div>
                </div>
              </ItemTemplate>
              <FooterTemplate>
              </FooterTemplate>
            </asp:Repeater>
            <div class="form-group">
              <asp:TextBox ValidateRequestMode="Disabled" runat="server" ID="txtComentario" TextMode="MultiLine" CssClass="summernote"></asp:TextBox>
            </div>
            <div class="row pt-3">
              <div class="col-sm-12 text-right">
                <asp:Button runat="server" CssClass="btn btn-space btn-primary" Text="Salvar" ID="btSalvar" OnClick="btSalvar_Click" />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
