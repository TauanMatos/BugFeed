﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Novo.aspx.cs" Inherits="BugFeed.Dashboard.Programas.Novo" MasterPageFile="~/MasterPages/Dashboard/FuncionarioMasterPage.master" Title="Novo Programa" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
  <asp:UpdatePanel runat="server">
    <ContentTemplate>
      <div class="main-content container-fluid">
        <asp:Panel ID="pnAlerts" runat="server"></asp:Panel>
        <div class="row">
          <div class="col-md-12">
            <div class="card card-border-color card-border-color-primary">
              <%--<div class="card-header card-header-divider">Basic Elements<span class="card-subtitle">These are the basic bootstrap form elements</span></div>--%>
              <div class="card-body">
                <div class="form-group pt-2">
                  <asp:TextBox runat="server" ID="txtTitulo" CssClass="form-control" placeholder="Título do Programa"></asp:TextBox>
                </div>
                <div class="form-group">
                  <asp:TextBox ValidateRequestMode="Disabled" runat="server" ID="txtDescricao" TextMode="MultiLine" CssClass="summernote"></asp:TextBox>
                </div>
                <div class="form-group row pt-1 pb-1">
                  <div class="col-12 col-sm-8 col-lg-6 form-check mt-2">
                    <label class="custom-control custom-radio custom-control-inline text-success">
                      <input type="radio" name="radio-inline" checked="" class="custom-control-input"><span class="custom-control-label">Ativo</span>
                    </label>
                    <label class="custom-control custom-radio custom-control-inline text-warning">
                      <input type="radio" name="radio-inline" class="custom-control-input"><span class="custom-control-label">Pausado</span>
                    </label>
                    <label class="custom-control custom-radio custom-control-inline text-danger">
                      <input type="radio" name="radio-inline" class="custom-control-input"><span class="custom-control-label">Finalizado</span>
                    </label>
                  </div>
                </div>
                <div class="row pt-3">
                  <div class="col-sm-12 text-right">
                    <button class="btn btn-space btn-secondary">Cancelar</button>
                    <asp:Button runat="server" CssClass="btn btn-space btn-primary" Text="Salvar" ID="btSalvar" OnClick="btSalvar_Click" />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </ContentTemplate>
  </asp:UpdatePanel>
</asp:Content>