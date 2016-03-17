<%@ Page Language="AVR" AutoEventWireup="false"  CodeFile="SignOn.aspx.vr" Inherits="SignOn" MasterPageFile="~/Themes/Current/MasterPage.master" %>
<%@ Register  TagPrefix="mdf" Assembly="ASNA.Monarch.WebDspF, Version=14.0.9.0, Culture=neutral, PublicKeyToken=71de708db13b26d3" Namespace="ASNA.Monarch.WebDspF" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="HeaderPH" runat="Server" >
    </asp:Content>

    <asp:Content ID="FileContent1" runat="server" ContentPlaceHolderID="FKeyPH">
        <mdf:ddsfile id="SignOnControl" runat="server" DisplayErrorMessages="True" BannerStyle="Horizontal" />
    </asp:Content>
            
    <asp:Content ID="FileContent2" runat="server" ContentPlaceHolderID="CenPH">
            
          <mdf:DdsRecord id="_RSIGNON" runat="server" 
              style="position: relative; top: 0; left: 0;"
              Alias="RSIGNON"
              CssClass="DdsRecord"
              Width="738px" 
              Height="552px" >
            <mdf:DdsCharField id="RSignon_System" runat="server" 
              CssClass="DdsCharField"
              Length="126" 
              Lower="True" 
              style="position: absolute; left: 310px; top: 60px;"
              Alias="SYSTEM" 
              Usage="Both" 
              VirtualRowCol="6,30" 
              Width="200px" />

            <mdf:DdsConstant id="DdsConstant39" runat="server" 
              style="position: absolute; left: 577px; top: 0px;"
              Text="*DATE" 
              CssClass="DdsConstant" />
            <mdf:DdsConstant id="DdsConstant40" runat="server" 
              style="position: absolute; left: 697px; top: 0px; width:100px"
              Text="*TIME" 
              CssClass="DdsConstant" />

            <mdf:DdsConstant id="DdsConstant7" runat="server" 
              style="position: absolute; left: 150px; top: 64px;"
              Text="System" 
              CssClass="DdsConstant" />


            <mdf:DdsConstant id="DdsConstant21" runat="server" 
              style="position: absolute; left: 150px; top: 88px;"
              Text="Port" 
              CssClass="DdsConstant" />

            <mdf:DdsCharField id="RSignon_Port" runat="server" 
              CssClass="DdsDecField"
              Length="5"
              Lower="True" 
              style="position: absolute; left: 310px; top: 83px; width: 50px;"
              Alias="Port" 
              Usage="Both" 
              VirtualRowCol="8,30" />
              
            <mdf:DdsConstant id="DdsConstant1" runat="server" 
              style="position: absolute; left: 150px; top: 124px;"
              Text="User" 
              CssClass="DdsConstant" />

            <mdf:DdsCharField id="RSignon_User" runat="server" 
              CssClass="DdsCharField"
              Length="10" 
              Lower="True" 
              style="position: absolute; left: 310px; top: 120px;"
              Alias="USER" 
              Usage="Both" 
              VirtualRowCol="6,30"  
              Width="200px"  />
              
            <mdf:DdsConstant id="DdsConstant2" runat="server" 
              style="position: absolute; left: 150px; top: 146px;"
              Text="Password" 
              CssClass="DdsConstant" />

            <mdf:DdsCharField id="RSignon_Password" runat="server" 
              CssClass="DdsCharField"
              Length="128"
              Lower="True" 
              style="position: absolute; left: 310px; top: 143px;"
              InputStyle="Password"
              Alias="Password" 
              Usage="Both" 
              VirtualRowCol="7,30"
              Width="200px" 
              PositionCursor="True" />        
      
            <mdf:DdsConstant id="DdsConstant3" runat="server" 
              style="position: absolute; left: 150px; top: 224px;"
              Text="Program/procedure" 
              CssClass="DdsConstant" />
            <mdf:DdsCharField id="RSignon_Program" runat="server" 
              CssClass="DdsCharField"
              Length="10" 
              Lower="True" 
              style="position: absolute; left: 310px; top: 220px;"
              Alias="Program" 
              Usage="Both" 
              VirtualRowCol="10,30" 
              Width="200px"  />
              
            <mdf:DdsConstant id="DdsConstant4" runat="server" 
              style="position: absolute; left: 150px; top: 247px;"
              Text="Menu" 
              CssClass="DdsConstant" />
            <mdf:DdsCharField id="RSignon_Menu" runat="server" 
              CssClass="DdsCharField"
              Length="10" 
              Lower="True" 
              style="position: absolute; left: 310px; top: 243px;"
              Alias="Menu" 
              Usage="Both" 
              VirtualRowCol="11,30" 
              Width="200px"  />
              
            <mdf:DdsConstant id="DdsConstant5" runat="server" 
              style="position: absolute; left: 150px; top: 270px; width:138px"
              Text="Current Library" 
              CssClass="DdsConstant" />
            <mdf:DdsCharField id="RSignon_Library" runat="server" 
              CssClass="DdsCharField"
              Length="10" 
              Lower="True" 
              style="position: absolute; left: 310px; top: 266px;"
              Alias="Library" 
              Usage="Both" 
              VirtualRowCol="12,30" 
              Width="200px"  />
              
            <mdf:DdsCharField id="RSignon_Message" runat="server" 
              CssClass="DdsSflMsgField"
              Length="100" 
              Lower="True" 
              style="position: absolute; left: 10px; top: 410px; width: 796px;"
              Alias="Message" 
              Usage="OutputOnly" 
              VirtualRowCol="20,1"  />

          </mdf:DdsRecord >

    </asp:Content>

    <asp:Content ID="FileContent3" runat="server" ContentPlaceHolderID="MsgPH">
        <div id="Div2">
            <mdf:DdsMessagePanel ID="DdsMessagePanel" runat="server"/>
        </div>
    </asp:Content>
    
    <asp:Content ID="Content2" ContentPlaceHolderID="PageScriptPH" runat="server">         
    </asp:Content>

