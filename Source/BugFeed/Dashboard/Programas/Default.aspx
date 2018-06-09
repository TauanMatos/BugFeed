<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BugFeed.Dashboard.Programas.Default" MasterPageFile="~/MasterPages/Dashboard/FuncionarioMasterPage.master" Title="Programas de Recompensa" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
  <asp:UpdatePanel runat="server">
    <ContentTemplate>
      <div class="main-content container-fluid">
        <div class="row">
          <div class="col-12">
            <asp:Button CssClass="btn btn-space btn-primary" runat="server" ID="btNovo" OnClick="btNovo_Click" Text="Novo Programa" />
          </div>
        </div>
        <div class="row mt-3"></div>
        <div class="row">
          <!--Responsive table-->
          <div class="col-sm-12">
            <div class="card card-table">
              <div class="card-header">
                <%--Responsive Table--%>
                <div class="tools dropdown">
                  <span class="icon mdi mdi-download"></span><a href="#" role="button" data-toggle="dropdown" class="dropdown-toggle"><span class="icon mdi mdi-more-vert"></span></a>
                  <div role="menu" class="dropdown-menu">
                    <a href="#" class="dropdown-item">Action</a><a href="#" class="dropdown-item">Another action</a><a href="#" class="dropdown-item">Something else here</a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">Separated link</a>
                  </div>
                </div>
              </div>
              <div class="card-body">
                <asp:Repeater runat="server" ID="rptProgramas">
                  <HeaderTemplate>
                    <div class="table-responsive noSwipe">
                      <table class="table table-striped table-hover">
                        <thead>
                          <tr>
                            <th style="width: 25%;">Titulo</th>
                            <th style="width: 17%;">Last Commit</th>
                            <th style="width: 15%;">Milestone</th>
                            <th style="width: 10%;">Branch</th>
                            <th style="width: 10%;">Date</th>
                            <th style="width: 10%;"></th>
                          </tr>
                        </thead>
                        <tbody>
                  </HeaderTemplate>
                  <ItemTemplate>
                    <tr>
                      <td class="user-avatar cell-detail user-info">
                        <img src="assets/img/avatar6.png" alt="Avatar"><span>Penelope Thornton</span><span class="cell-detail-description">Developer</span></td>
                      <td class="cell-detail"><span>Initial commit</span><span class="cell-detail-description">Bootstrap Admin</span></td>
                      <td class="milestone"><span class="completed">8 / 15</span><span class="version">v1.2.0</span>
                        <div class="progress">
                          <div style="width: 45%" class="progress-bar progress-bar-primary"></div>
                        </div>
                      </td>
                      <td class="cell-detail"><span>master</span><span class="cell-detail-description">63e8ec3</span></td>
                      <td class="cell-detail"><span>May 6, 2016</span><span class="cell-detail-description">8:30</span></td>
                      <td class="text-right">
                        <div class="btn-group btn-hspace">
                          <button type="button" data-toggle="dropdown" class="btn btn-secondary dropdown-toggle">Open <span class="icon-dropdown mdi mdi-chevron-down"></span></button>
                          <div role="menu" class="dropdown-menu">
                            <a href="#" class="dropdown-item">Action</a><a href="#" class="dropdown-item">Another action</a><a href="#" class="dropdown-item">Something else here</a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">Separated link</a>
                          </div>
                        </div>
                      </td>
                    </tr>
                  </ItemTemplate>
                  <FooterTemplate>
                    </tbody>
                  </table>
              </div>
                  </FooterTemplate>
                </asp:Repeater>
              </div>
          </div>
        </div>
      </div>
      </div>
    </ContentTemplate>
  </asp:UpdatePanel>
</asp:Content>
