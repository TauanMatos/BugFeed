﻿<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BugFeed.Login" MasterPageFile="~/MasterPages/SplashScreenMasterPage.master" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
  <div class="be-wrapper be-login">
    <div class="be-content">
      <div class="main-content container-fluid">
        <div class="splash-container">
          <div class="card card-border-color card-border-color-primary">
            <div class="card-header">
              <img src="/assets/img/logo@2x.png" alt="logo" width="102" height="27" class="logo-img"><span class="splash-description">Digite suas informações de usuário.</span>
            </div>
            <asp:UpdatePanel ID="upAlerts" runat="server">
              <ContentTemplate>
                <asp:Panel ID="pnAlerts" runat="server"></asp:Panel>
              </ContentTemplate>
            </asp:UpdatePanel>
            <div class="card-body">
              <div class="form-group">
                <asp:TextBox runat="server" ID="txtUsername" CssClass="form-control" placeholder="Usuário"></asp:TextBox>
              </div>
              <div class="form-group">
                <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" placeholder="Senha" TextMode="Password"></asp:TextBox>
              </div>
              <div class="form-group row login-tools">
                <div class="col-6 login-remember">
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input"><span class="custom-control-label">Lembrar-me</span>
                  </label>
                </div>
                <div class="col-6 login-forgot-password"><a href="pages-forgot-password.html">Esqueceu a senha?</a></div>
              </div>
              <div class="form-group login-submit">
                <asp:Button ID="btnEntrar" runat="server" CssClass="btn btn-primary btn-xl" Text="Entrar" data-dismiss="modal" OnClick="btnEntrar_Click" />
              </div>
            </div>
          </div>
          <div class="splash-footer"><span>Não tem uma conta? <a href="UserSignUp.aspx">Criar</a></span></div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
