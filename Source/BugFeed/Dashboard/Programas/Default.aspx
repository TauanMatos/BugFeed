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
                <div class="table-responsive noSwipe">
                  <table class="table table-striped table-hover">
                    <thead>
                      <tr>
                        <th style="width: 5%;">
                          <label class="custom-control custom-control-sm custom-checkbox">
                            <input type="checkbox" class="custom-control-input"><span class="custom-control-label"></span>
                          </label>
                        </th>
                        <th style="width: 20%;">User</th>
                        <th style="width: 17%;">Last Commit</th>
                        <th style="width: 15%;">Milestone</th>
                        <th style="width: 10%;">Branch</th>
                        <th style="width: 10%;">Date</th>
                        <th style="width: 10%;"></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>
                          <label class="custom-control custom-control-sm custom-checkbox">
                            <input type="checkbox" class="custom-control-input"><span class="custom-control-label"></span>
                          </label>
                        </td>
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
                      <tr class="online">
                        <td>
                          <label class="custom-control custom-control-sm custom-checkbox">
                            <input type="checkbox" class="custom-control-input"><span class="custom-control-label"></span>
                          </label>
                        </td>
                        <td class="user-avatar cell-detail user-info">
                          <img src="assets/img/avatar4.png" alt="Avatar"><span>Benji Harper</span><span class="cell-detail-description">Designer</span></td>
                        <td class="cell-detail"><span>Main structure markup</span><span class="cell-detail-description">CLI Connector</span></td>
                        <td class="milestone"><span class="completed">22 / 30</span><span class="version">v1.1.5</span>
                          <div class="progress">
                            <div style="width: 75%" class="progress-bar progress-bar-primary"></div>
                          </div>
                        </td>
                        <td class="cell-detail"><span>develop</span><span class="cell-detail-description">4cc1bc2</span></td>
                        <td class="cell-detail"><span>April 22, 2016</span><span class="cell-detail-description">14:45</span></td>
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
                      <tr>
                        <td>
                          <label class="custom-control custom-control-sm custom-checkbox">
                            <input type="checkbox" class="custom-control-input"><span class="custom-control-label"></span>
                          </label>
                        </td>
                        <td class="user-avatar cell-detail user-info">
                          <img src="assets/img/avatar5.png" alt="Avatar"><span>Justine Myranda</span><span class="cell-detail-description">Designer</span></td>
                        <td class="cell-detail"><span>Left sidebar adjusments</span><span class="cell-detail-description">Back-end Manager</span></td>
                        <td class="milestone"><span class="completed">10 / 30</span><span class="version">v1.1.3</span>
                          <div class="progress">
                            <div style="width: 33%" class="progress-bar progress-bar-primary"></div>
                          </div>
                        </td>
                        <td class="cell-detail"><span>develop</span><span class="cell-detail-description">5477993</span></td>
                        <td class="cell-detail"><span>April 15, 2016</span><span class="cell-detail-description">10:00</span></td>
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
                      <tr>
                        <td>
                          <label class="custom-control custom-control-sm custom-checkbox">
                            <input type="checkbox" class="custom-control-input"><span class="custom-control-label"></span>
                          </label>
                        </td>
                        <td class="user-avatar cell-detail user-info">
                          <img src="assets/img/avatar3.png" alt="Avatar"><span>Sherwood Clifford</span><span class="cell-detail-description">Developer</span></td>
                        <td class="cell-detail"><span>Topbar dropdown style</span><span class="cell-detail-description">Bootstrap Admin</span></td>
                        <td class="milestone"><span class="completed">25 / 40</span><span class="version">v1.0.4</span>
                          <div class="progress">
                            <div style="width: 55%" class="progress-bar progress-bar-primary"></div>
                          </div>
                        </td>
                        <td class="cell-detail"><span>master</span><span class="cell-detail-description">8cb98ec</span></td>
                        <td class="cell-detail"><span>April 8, 2016</span><span class="cell-detail-description">17:24</span></td>
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
                      <tr class="online">
                        <td>
                          <label class="custom-control custom-control-sm custom-checkbox">
                            <input type="checkbox" class="custom-control-input"><span class="custom-control-label"></span>
                          </label>
                        </td>
                        <td class="user-avatar cell-detail user-info">
                          <img src="assets/img/avatar.png" alt="Avatar"><span>Kristopher Donny</span><span class="cell-detail-description">Designer</span></td>
                        <td class="cell-detail"><span>Right sidebar adjusments</span><span class="cell-detail-description">CLI Connector</span></td>
                        <td class="milestone"><span class="completed">38 / 40</span><span class="version">v1.0.1</span>
                          <div class="progress">
                            <div style="width: 98%" class="progress-bar progress-bar-primary"></div>
                          </div>
                        </td>
                        <td class="cell-detail"><span>master</span><span class="cell-detail-description">65bc2da</span></td>
                        <td class="cell-detail"><span>Mars 18, 2016</span><span class="cell-detail-description">13:02</span></td>
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
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </ContentTemplate>
  </asp:UpdatePanel>
</asp:Content>
