﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DatePicker.ascx.cs" Inherits="BugFeed.Controls.Elements.DatePicker" %>
<div class="form-group">
  <div data-min-view="2" data-date-format="dd-mm-yyyy" class="input-group date datetimepicker">
    <asp:TextBox runat="server" ID="txtDateTime" CssClass="form-control" placeholder="Dada de Nascimento"></asp:TextBox>
    <div class="input-group-append">
      <button class="btn btn-primary"><i class="icon-th mdi mdi-calendar"></i></button>
    </div>
  </div>
</div>
<div class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu" style="left: 633px; z-index: 1101; display: none; top: 5803.58px;">
  <div class="datetimepicker-minutes" style="display: none;">
    <table class=" table-condensed">
      <thead>
        <tr>
          <th class="prev" style="visibility: visible;"><span class="icon mdi mdi-chevron-left"></span></th>
          <th colspan="5" class="switch">30 May 2018</th>
          <th class="next" style="visibility: visible;"><span class="icon mdi mdi-chevron-right"></span></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td colspan="7"><span class="minute active">0:00</span><span class="minute">0:05</span><span class="minute">0:10</span><span class="minute">0:15</span><span class="minute">0:20</span><span class="minute">0:25</span><span class="minute">0:30</span><span class="minute">0:35</span><span class="minute">0:40</span><span class="minute">0:45</span><span class="minute">0:50</span><span class="minute">0:55</span></td>
        </tr>
      </tbody>
      <tfoot>
        <tr>
          <th colspan="7" class="today" style="display: none;">Today</th>
        </tr>
      </tfoot>
    </table>
  </div>
  <div class="datetimepicker-hours" style="display: none;">
    <table class=" table-condensed">
      <thead>
        <tr>
          <th class="prev" style="visibility: visible;"><span class="icon mdi mdi-chevron-left"></span></th>
          <th colspan="5" class="switch">30 May 2018</th>
          <th class="next" style="visibility: visible;"><span class="icon mdi mdi-chevron-right"></span></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td colspan="7"><span class="hour active">0:00</span><span class="hour">1:00</span><span class="hour">2:00</span><span class="hour">3:00</span><span class="hour">4:00</span><span class="hour">5:00</span><span class="hour">6:00</span><span class="hour">7:00</span><span class="hour">8:00</span><span class="hour">9:00</span><span class="hour">10:00</span><span class="hour">11:00</span><span class="hour">12:00</span><span class="hour">13:00</span><span class="hour">14:00</span><span class="hour">15:00</span><span class="hour">16:00</span><span class="hour">17:00</span><span class="hour">18:00</span><span class="hour">19:00</span><span class="hour">20:00</span><span class="hour">21:00</span><span class="hour">22:00</span><span class="hour">23:00</span></td>
        </tr>
      </tbody>
      <tfoot>
        <tr>
          <th colspan="7" class="today" style="display: none;">Today</th>
        </tr>
      </tfoot>
    </table>
  </div>
  <div class="datetimepicker-days" style="display: block;">
    <table class=" table-condensed">
      <thead>
        <tr>
          <th class="prev" style="visibility: visible;"><span class="icon mdi mdi-chevron-left"></span></th>
          <th colspan="5" class="switch">May 2018</th>
          <th class="next" style="visibility: visible;"><span class="icon mdi mdi-chevron-right"></span></th>
        </tr>
        <tr>
          <th class="dow">Su</th>
          <th class="dow">Mo</th>
          <th class="dow">Tu</th>
          <th class="dow">We</th>
          <th class="dow">Th</th>
          <th class="dow">Fr</th>
          <th class="dow">Sa</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="day old">29</td>
          <td class="day old">30</td>
          <td class="day">1</td>
          <td class="day">2</td>
          <td class="day">3</td>
          <td class="day">4</td>
          <td class="day">5</td>
        </tr>
        <tr>
          <td class="day">6</td>
          <td class="day">7</td>
          <td class="day">8</td>
          <td class="day">9</td>
          <td class="day">10</td>
          <td class="day">11</td>
          <td class="day">12</td>
        </tr>
        <tr>
          <td class="day">13</td>
          <td class="day">14</td>
          <td class="day">15</td>
          <td class="day">16</td>
          <td class="day">17</td>
          <td class="day">18</td>
          <td class="day">19</td>
        </tr>
        <tr>
          <td class="day">20</td>
          <td class="day">21</td>
          <td class="day">22</td>
          <td class="day">23</td>
          <td class="day">24</td>
          <td class="day">25</td>
          <td class="day">26</td>
        </tr>
        <tr>
          <td class="day">27</td>
          <td class="day">28</td>
          <td class="day">29</td>
          <td class="day active">30</td>
          <td class="day">31</td>
          <td class="day new">1</td>
          <td class="day new">2</td>
        </tr>
        <tr>
          <td class="day new">3</td>
          <td class="day new">4</td>
          <td class="day new">5</td>
          <td class="day new">6</td>
          <td class="day new">7</td>
          <td class="day new">8</td>
          <td class="day new">9</td>
        </tr>
      </tbody>
      <tfoot>
        <tr>
          <th colspan="7" class="today" style="display: none;">Today</th>
        </tr>
      </tfoot>
    </table>
  </div>
  <div class="datetimepicker-months" style="display: none;">
    <table class="table-condensed">
      <thead>
        <tr>
          <th class="prev" style="visibility: visible;"><span class="icon mdi mdi-chevron-left"></span></th>
          <th colspan="5" class="switch">2018</th>
          <th class="next" style="visibility: visible;"><span class="icon mdi mdi-chevron-right"></span></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td colspan="7"><span class="month">Jan</span><span class="month">Feb</span><span class="month">Mar</span><span class="month">Apr</span><span class="month active">May</span><span class="month">Jun</span><span class="month">Jul</span><span class="month">Aug</span><span class="month">Sep</span><span class="month">Oct</span><span class="month">Nov</span><span class="month">Dec</span></td>
        </tr>
      </tbody>
      <tfoot>
        <tr>
          <th colspan="7" class="today" style="display: none;">Today</th>
        </tr>
      </tfoot>
    </table>
  </div>
  <div class="datetimepicker-years" style="display: none;">
    <table class="table-condensed">
      <thead>
        <tr>
          <th class="prev" style="visibility: visible;"><span class="icon mdi mdi-chevron-left"></span></th>
          <th colspan="5" class="switch">2010-2019</th>
          <th class="next" style="visibility: visible;"><span class="icon mdi mdi-chevron-right"></span></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td colspan="7"><span class="year old">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year">2015</span><span class="year">2016</span><span class="year">2017</span><span class="year active">2018</span><span class="year">2019</span><span class="year old">2020</span></td>
        </tr>
      </tbody>
      <tfoot>
        <tr>
          <th colspan="7" class="today" style="display: none;">Today</th>
        </tr>
      </tfoot>
    </table>
  </div>
</div>
