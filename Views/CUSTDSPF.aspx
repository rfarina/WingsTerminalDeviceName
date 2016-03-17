<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="CUSTDSPF.aspx.cs" Inherits="Asna.CUSTDSPFForm"  MasterPageFile="~/Themes/Current/MasterPage.master" %>
<%@ Register  TagPrefix="mdf" Assembly="ASNA.Monarch.WebDspF, Version=14.0.9.0, Culture=neutral, PublicKeyToken=71de708db13b26d3" Namespace="ASNA.Monarch.WebDspF" %>

    <asp:Content ContentPlaceHolderID="HeaderPH" runat="Server" >
        <%-- Migrated on 3/17/2016 at 2:34 PM by ASNA Monarch(R) Wings version 8.0.4.0 --%>
        <%-- Legacy location: library WNGBAS, file QDDSSRC, member CUSTDSPF --%>

    </asp:Content>

    <asp:Content ID="FileContent1" runat="server" ContentPlaceHolderID="FKeyPH">
        <div id="Div0">
            
            <mdf:ddsfile id="CUSTDSPFControl" runat="server" 
            FuncKeys="F3 'Exit' 03;"
            BannerStyle="Horizontal"
            DisplayErrorMessages="False"
            SrcDdsCcsid="37" 
            PixelPerCharWidth="8" 
            PixelPerCharHeight="24"  />

        </div>
    </asp:Content>


    <asp:Content ID="FileContent2" runat="server" ContentPlaceHolderID="CenPH">
        <div id="Div1">
            
      <%-- %%TS  SD  20080401  105542  JB          REL-V5R3M0  5722-WDS                     --%>
      <%-- %%EC                                                                             --%>
          <mdf:DdsSubfileControl id="_SFLC" runat="server" 
            style="position: relative; width: 738px; height: 504px" 
            Alias="SFLC"
            CssClass="DdsRecord"
            FuncKeys="PageUp 51 : !76;PageDown 50 : !77;"
            ClearRecords="90" 
            DisplayFields="!90" 
            DisplayRecords="!90" 
            SubfilePage="14" 
            SubfileSize="15" 
            ShowRecordField="DSPREC" 
            ShowRecordWithCursor="True" 
            CueCurrentRecord="true" 
            ClickSetsCurrentRecord="true" 
            VerticalScrollBar="true" 
            EraseFormats="CUSTREC SALESREC" 
          >&nbsp;
          <%-- %%TS  SD  20080327  112037  JB          REL-V5R3M0  5722-WDS                     --%>
          <%--                                  7  3'Sel Custno Customer Name          -        --%>
          <%--                                                 City, State/Province'            --%>
          <%--                                      DSPATR(HI)                                  --%>
          <%--                                      DSPATR(UL)                                  --%>
            <mdf:DdsDecField id="SFLC_DSPREC" runat="server" style="position: absolute; left: 1px; top: 0px; width: 37px"
              CssClass="DdsDecField"
              Length="4" 
              Decimals="0" 
              Alias="DSPREC" 
              Usage="Hidden" 
 />
            <mdf:DdsConstant id="DdsConstant1" runat="server" 
              style="position: absolute; left: 19px; top: 3px;"
              Text="*USER" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant6" runat="server" 
              style="position: absolute; left: 280px; top: 3px;"
              Text="M5 Customer Inquiry" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant9" runat="server" 
              style="position: absolute; left: 577px; top: 3px;"
              Text="*DATE" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant10" runat="server" 
              style="position: absolute; left: 658px; top: 3px;"
              Text="*TIME" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant8" runat="server" 
              style="position: absolute; left: 469px; top: 27px;"
              Text="Position to name:" 
              CssClass="DdsConstant"
 />
            <mdf:DdsCharField id="SFLC_SETNAME" runat="server" style="position: absolute; left: 631px; top: 24px; width: 91px"
              CssClass="DdsCharField"
              Length="10" 
              Lower="True" 
              Alias="SETNAME" 
              Usage="InputOnly" 
              VirtualRowCol="2,70" 
              TabIndex="1"  />
            <mdf:DdsConstant id="DdsConstant2" runat="server" 
              style="position: absolute; left: 28px; top: 75px;"
              Text="2=Update   3=Display sales    5=Delivery Addresses   11=Orders" 
              Color="Blue" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant3" runat="server" 
              style="position: absolute; left: 28px; top: 147px;"
              Text="Sel" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant4" runat="server" 
              style="position: absolute; left: 64px; top: 147px;"
              Text="Custno" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant5" runat="server" 
              style="position: absolute; left: 127px; top: 147px;"
              Text="Customer Name" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant7" runat="server" 
              style="position: absolute; left: 433px; top: 147px;"
              Text="City, State/Province" 
              CssClass="DdsConstant"
 />
          <mdf:DdsSubfile id="_SFL1" runat="server" 
            style="position: absolute; left: 0px; top: 168px; width: 693px; height: 24px" 
            Alias="SFL1"
            CssClass="DdsSubfileRecord"
            UseSubfilePaging="True" 
            VirtualRowCol="8,4" 
            VirtualWidth="70" 
            VirtualRowsPerRecord="1" 
            RowsCssClasses="DefaultRow AlternateRow"
          >&nbsp;
          <%-- %%TS  SD  20050519  121733  JB          REL-V5R3M0  5722-WDS                     --%>
          <%-- **         SFCOLOR        1A  B  8  2DSPATR(ND PR)                               --%>
          <%--                                      DSPATR(RI)                                  --%>
          <%-- N61                                  COLOR(GRN)                                  --%>
          <%--  61                                  COLOR(WHT)                                  --%>
          <%--                                      DSPATR(RI)                                  --%>
          <%-- N61                                  COLOR(GRN)                                  --%>
          <%--  61                                  COLOR(WHT)                                  --%>
          <%--                                      DSPATR(RI)                                  --%>
          <%-- N61                                  COLOR(GRN)                                  --%>
          <%--  61                                  COLOR(WHT)                                  --%>
          <%--                                                                                  --%>
            <mdf:DdsDecField id="SFL1_SFSEL" runat="server" style="position: absolute; left: 37px; top: 0px; width: 46px"
              CssClass="DdsDecField"
              Length="2" 
              Decimals="0" 
              Alias="SFSEL" 
              VisibleCondition="!( 60 )"
              Usage="Both" 
              VirtualRowCol="8,4" 
              Protect="60" 
              EditCode="Z" 
              ValuesStyle="DropdownBoth" 
              Values="0 2 3 5 11 " 
              TabIndex="1"  />
            <mdf:DdsDecField id="SFL1_SFCUSTNO" runat="server" style="position: absolute; left: 91px; top: 0px; width: 55px"
              CssClass="DdsDecField"
              Length="6" 
              Decimals="0" 
              Alias="SFCUSTNO" 
              Usage="OutputOnly" 
              VirtualRowCol="8,7" 
              EditCode="Z" 
 />
            <mdf:DdsCharField id="SFL1_SFNAME1" runat="server" style="position: absolute; left: 154px; top: 0px; width: 271px"
              CssClass="DdsCharField"
              Length="30" 
              Alias="SFNAME1" 
              Usage="OutputOnly" 
              VirtualRowCol="8,14" 
 />
            <mdf:DdsCharField id="SFL1_SFCSZ" runat="server" style="position: absolute; left: 460px; top: 0px; width: 226px"
              CssClass="DdsCharField"
              Length="25" 
              Alias="SFCSZ" 
              Usage="OutputOnly" 
              VirtualRowCol="8,48" 
 />
          </mdf:DdsSubfile >
          </mdf:DdsSubfileControl >
          <mdf:DdsRecord id="_CUSTREC" runat="server" 
            style="position: relative; width: 738px; height: 552px" 
            Alias="CUSTREC"
            CssClass="DdsRecord"
            FuncKeys="F4 'Prompt' 04;F6 'New' 06 : !30;F11 'Delete' 11 : !30;F12 'Cancel' 12;"
            CursorRecord="CSRREC" 
            CursorField ="CSRFLD" 
            EraseFormats="SFLC KEYS SALESREC" 
          >&nbsp;
          <%-- %%TS  SD  20080401  105542  JB          REL-V5R3M0  5722-WDS                     --%>
          <%-- ***                                  CHECK(RB)                                   --%>
          <%-- ***                                  CHECK(RB)                                   --%>
            <mdf:DdsCharField id="CUSTREC_CSRREC" runat="server" style="position: absolute; left: 1px; top: 0px; width: 91px"
              CssClass="DdsCharField"
              Length="10" 
              Alias="CSRREC" 
              Usage="Hidden" 
 />
            <mdf:DdsCharField id="CUSTREC_CSRFLD" runat="server" style="position: absolute; left: 1px; top: 0px; width: 91px"
              CssClass="DdsCharField"
              Length="10" 
              Alias="CSRFLD" 
              Usage="Hidden" 
 />
            <mdf:DdsConstant id="DdsConstant11" runat="server" 
              style="position: absolute; left: 19px; top: 3px;"
              Text="*USER" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant28" runat="server" 
              style="position: absolute; left: 262px; top: 3px;"
              Text="M5 Customer Maintenance" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant34" runat="server" 
              style="position: absolute; left: 577px; top: 3px;"
              Text="*DATE" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant35" runat="server" 
              style="position: absolute; left: 658px; top: 3px;"
              Text="*TIME" 
              CssClass="DdsConstant"
 />
            <mdf:DdsCharField id="CUSTREC_SCPGM" runat="server" style="position: absolute; left: 19px; top: 24px; width: 91px"
              CssClass="DdsCharField"
              Length="10" 
              Alias="SCPGM" 
              Usage="OutputOnly" 
              VirtualRowCol="2,2" 
 />
            <mdf:DdsDecField id="CUSTREC_SFCUSTNO" runat="server" style="position: absolute; left: 244px; top: 96px; width: 55px"
              CssClass="DdsDecField"
              Length="6" 
              Decimals="0" 
              Alias="SFCUSTNO" 
              Usage="OutputOnly" 
              VirtualRowCol="5,27" 
              EditCode="Z" 
 />
            <mdf:DdsCharField id="CUSTREC_SFOLDNAME" runat="server" style="position: absolute; left: 316px; top: 96px; width: 361px"
              CssClass="DdsCharField"
              Length="40" 
              Alias="SFOLDNAME" 
              Usage="OutputOnly" 
              VirtualRowCol="5,35" 
 />
            <mdf:DdsConstant id="DdsConstant24" runat="server" 
              style="position: absolute; left: 181px; top: 147px;"
              Text="Name:" 
              CssClass="DdsConstant"
 />
            <mdf:DdsCharField id="CUSTREC_SFNAME" runat="server" style="position: absolute; left: 244px; top: 144px; width: 361px"
              CssClass="DdsCharField"
              Length="40" 
              Lower="True" 
              Alias="SFNAME" 
              Usage="Both" 
              VirtualRowCol="7,27" 
              PositionCursor="40" 
              TabIndex="2"  />
            <mdf:DdsConstant id="DdsConstant20" runat="server" 
              style="position: absolute; left: 154px; top: 171px;"
              Text="Address:" 
              CssClass="DdsConstant"
 />
            <mdf:DdsCharField id="CUSTREC_SFADDR1" runat="server" style="position: absolute; left: 244px; top: 168px; width: 316px"
              CssClass="DdsCharField"
              Length="35" 
              Lower="True" 
              Alias="SFADDR1" 
              Usage="Both" 
              VirtualRowCol="8,27" 
              PositionCursor="41" 
              TabIndex="3"  />
            <mdf:DdsCharField id="CUSTREC_SFADDR2" runat="server" style="position: absolute; left: 244px; top: 192px; width: 316px"
              CssClass="DdsCharField"
              Length="35" 
              Lower="True" 
              Alias="SFADDR2" 
              Usage="Both" 
              VirtualRowCol="9,27" 
              TabIndex="4"  />
            <mdf:DdsConstant id="DdsConstant25" runat="server" 
              style="position: absolute; left: 181px; top: 219px;"
              Text="City:" 
              CssClass="DdsConstant"
 />
            <mdf:DdsCharField id="CUSTREC_SFCITY" runat="server" style="position: absolute; left: 244px; top: 216px; width: 271px"
              CssClass="DdsCharField"
              Length="30" 
              Lower="True" 
              Alias="SFCITY" 
              Usage="Both" 
              VirtualRowCol="10,27" 
              PositionCursor="42" 
              TabIndex="5"  />
            <mdf:DdsConstant id="DdsConstant18" runat="server" 
              style="position: absolute; left: 136px; top: 243px;"
              Text="State/Zip:" 
              CssClass="DdsConstant"
 />
            <mdf:DdsCharField id="CUSTREC_SFSTATE" runat="server" style="position: absolute; left: 244px; top: 240px; width: 226px"
              CssClass="DdsCharField"
              Length="25" 
              Lower="True" 
              Alias="SFSTATE" 
              Usage="Both" 
              VirtualRowCol="11,27" 
              PositionCursor="43" 
              TabIndex="6"  />
            <mdf:DdsConstant id="DdsConstant32" runat="server" 
              style="position: absolute; left: 478px; top: 243px;"
              Text="(F4)" 
              Color="Blue" 
              CssClass="DdsConstant"
 />
            <mdf:DdsCharField id="CUSTREC_SFPOSTCODE" runat="server" style="position: absolute; left: 523px; top: 240px; width: 91px"
              CssClass="DdsCharField"
              Length="10" 
              Alias="SFPOSTCODE" 
              Usage="Both" 
              VirtualRowCol="11,58" 
              TabIndex="7"  />
            <mdf:DdsConstant id="DdsConstant27" runat="server" 
              style="position: absolute; left: 190px; top: 291px;"
              Text="Fax:" 
              CssClass="DdsConstant"
 />
            <mdf:DdsDecField id="CUSTREC_SFFAX" runat="server" style="position: absolute; left: 244px; top: 288px; width: 127px"
              CssClass="DdsDecField"
              Length="12" 
              Decimals="0" 
              Alias="SFFAX" 
              Usage="Both" 
              VirtualRowCol="13,27" 
              EditWord=" 0   .   .    " 
              TabIndex="8"  />
            <mdf:DdsConstant id="DdsConstant22" runat="server" 
              style="position: absolute; left: 172px; top: 315px;"
              Text="Phone:" 
              CssClass="DdsConstant"
 />
            <mdf:DdsDecField id="CUSTREC_SFPHONE" runat="server" style="position: absolute; left: 244px; top: 312px; width: 127px"
              CssClass="DdsDecField"
              Length="12" 
              Decimals="0" 
              Alias="SFPHONE" 
              Usage="Both" 
              VirtualRowCol="14,27" 
              EditWord=" 0   .   .    " 
              TabIndex="9"  />
            <mdf:DdsConstant id="DdsConstant21" runat="server" 
              style="position: absolute; left: 163px; top: 339px;"
              Text="Status:" 
              CssClass="DdsConstant"
 />
            <mdf:DdsCharField id="CUSTREC_SFSTATUS" runat="server" style="position: absolute; left: 244px; top: 336px; width: 10px"
              CssClass="DdsCharField"
              Length="1" 
              Alias="SFSTATUS" 
              Usage="Both" 
              VirtualRowCol="15,27" 
              PositionCursor="44" 
              TabIndex="10"  />
            <mdf:DdsConstant id="DdsConstant30" runat="server" 
              style="position: absolute; left: 271px; top: 339px;"
              Text="(F4)" 
              Color="Blue" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant16" runat="server" 
              style="position: absolute; left: 109px; top: 363px;"
              Text="Contact" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant26" runat="server" 
              style="position: absolute; left: 181px; top: 363px;"
              Text="Name:" 
              CssClass="DdsConstant"
 />
            <mdf:DdsCharField id="CUSTREC_SFCONTACT" runat="server" style="position: absolute; left: 244px; top: 360px; width: 361px"
              CssClass="DdsCharField"
              Length="40" 
              Lower="True" 
              Alias="SFCONTACT" 
              Usage="Both" 
              VirtualRowCol="16,27" 
              TabIndex="11"  />
            <mdf:DdsConstant id="DdsConstant15" runat="server" 
              style="position: absolute; left: 100px; top: 387px;"
              Text="Contact" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant23" runat="server" 
              style="position: absolute; left: 172px; top: 387px;"
              Text="eMail:" 
              CssClass="DdsConstant"
 />
            <mdf:DdsCharField id="CUSTREC_SFCONEMAIL" runat="server" style="position: absolute; left: 244px; top: 384px; width: 361px"
              CssClass="DdsCharField"
              Length="40" 
              Lower="True" 
              Alias="SFCONEMAIL" 
              Usage="Both" 
              VirtualRowCol="17,27" 
              TabIndex="12"  />
            <mdf:DdsConstant id="DdsConstant14" runat="server" 
              style="position: absolute; left: 64px; top: 411px;"
              Text="Send" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant17" runat="server" 
              style="position: absolute; left: 109px; top: 411px;"
              Text="Confirmation:" 
              CssClass="DdsConstant"
 />
            <mdf:DdsCharField id="CUSTREC_SFYN01" runat="server" style="position: absolute; left: 244px; top: 408px; width: 10px"
              CssClass="DdsCharField"
              Length="1" 
              Alias="SFYN01" 
              Usage="Both" 
              VirtualRowCol="18,27" 
              TabIndex="13"  />
            <mdf:DdsConstant id="DdsConstant29" runat="server" 
              style="position: absolute; left: 262px; top: 411px;"
              Text="(Y/N)" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant12" runat="server" 
              style="position: absolute; left: 28px; top: 531px;"
              Text="F4=Prompt" 
              Color="Blue" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant13" runat="server" 
              style="position: absolute; left: 55px; top: 531px;"
              Text="    " 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant19" runat="server" 
              style="position: absolute; left: 136px; top: 531px;"
              Text="F6=New customer" 
              VisibleCondition="!30"
              Color="Blue" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant31" runat="server" 
              style="position: absolute; left: 298px; top: 531px;"
              Text="F11=Remove customer" 
              VisibleCondition="!30"
              Color="Blue" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant33" runat="server" 
              style="position: absolute; left: 496px; top: 531px;"
              Text="F12=Cancel" 
              Color="Blue" 
              CssClass="DdsConstant"
 />
          </mdf:DdsRecord >
          <mdf:DdsRecord id="_SALESREC" runat="server" 
            style="position: relative; width: 738px; height: 552px" 
            Alias="SALESREC"
            CssClass="DdsRecord"
            FuncKeys="F12 'Cancel' 12;"
            EraseFormats="SFLC KEYS CUSTREC" 
          >&nbsp;
          <%-- %%TS  SD  20080401  105457  JB          REL-V5R3M0  5722-WDS                     --%>
            <mdf:DdsConstant id="DdsConstant36" runat="server" 
              style="position: absolute; left: 19px; top: 3px;"
              Text="*USER" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant40" runat="server" 
              style="position: absolute; left: 253px; top: 3px;"
              Text="M5 Customer Sales/Returns" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant42" runat="server" 
              style="position: absolute; left: 577px; top: 3px;"
              Text="*DATE" 
              CssClass="DdsConstant"
 />
            <mdf:DdsConstant id="DdsConstant43" runat="server" 
              style="position: absolute; left: 658px; top: 3px;"
              Text="*TIME" 
              CssClass="DdsConstant"
 />
            <mdf:DdsCharField id="SALESREC_SCPGM" runat="server" style="position: absolute; left: 19px; top: 24px; width: 91px"
              CssClass="DdsCharField"
              Length="10" 
              Alias="SCPGM" 
              Usage="OutputOnly" 
              VirtualRowCol="2,2" 
 />
            <mdf:DdsConstant id="DdsConstant41" runat="server" 
              style="position: absolute; left: 289px; top: 27px;"
              Text="Sales Information" 
              CssClass="DdsConstant"
 />
            <mdf:DdsDecField id="SALESREC_SFCUSTNO" runat="server" style="position: absolute; left: 181px; top: 144px; width: 55px"
              CssClass="DdsDecField"
              Length="6" 
              Decimals="0" 
              Alias="SFCUSTNO" 
              Usage="OutputOnly" 
              VirtualRowCol="7,20" 
              EditCode="Z" 
 />
            <mdf:DdsCharField id="SALESREC_SFNAME" runat="server" style="position: absolute; left: 253px; top: 144px; width: 361px"
              CssClass="DdsCharField"
              Length="40" 
              Alias="SFNAME" 
              Usage="OutputOnly" 
              VirtualRowCol="7,28" 
 />
            <mdf:DdsConstant id="DdsConstant39" runat="server" 
              style="position: absolute; left: 199px; top: 219px;"
              Text="Total Sales:" 
              CssClass="DdsConstant"
 />
            <mdf:DdsDecField id="SALESREC_SFSALES" runat="server" style="position: absolute; left: 316px; top: 216px; width: 163px"
              CssClass="DdsDecField"
              Length="13" 
              Decimals="2" 
              Alias="SFSALES" 
              Usage="OutputOnly" 
              VirtualRowCol="10,35" 
              EditCode="J" 
 />
            <mdf:DdsConstant id="DdsConstant38" runat="server" 
              style="position: absolute; left: 181px; top: 267px;"
              Text="Total Returns:" 
              CssClass="DdsConstant"
 />
            <mdf:DdsDecField id="SALESREC_SFRETURNS" runat="server" style="position: absolute; left: 316px; top: 264px; width: 163px"
              CssClass="DdsDecField"
              Length="13" 
              Decimals="2" 
              Alias="SFRETURNS" 
              Usage="OutputOnly" 
              VirtualRowCol="12,35" 
              EditCode="J" 
 />
            <mdf:DdsConstant id="DdsConstant37" runat="server" 
              style="position: absolute; left: 28px; top: 531px;"
              Text="F12=Previous" 
              Color="Blue" 
              CssClass="DdsConstant"
 />
          </mdf:DdsRecord >
          <mdf:DdsRecord id="_KEYS" runat="server" 
            style="position: relative; width: 99px; height: 24px" 
            Alias="KEYS"
            CssClass="DdsRecord"
            EraseFormats="CUSTREC SALESREC" 
          >&nbsp;
          <%--                                                                                  --%>
          <%-- *********************************************************                        --%>
          <%--                                                                                  --%>
            <mdf:DdsConstant id="DdsConstant44" runat="server" 
              style="position: absolute; left: 28px; top: 3px;"
              Text="F3=Exit" 
              Color="Blue" 
              CssClass="DdsConstant"
 />
          </mdf:DdsRecord >
          <mdf:DdsSubfileControl id="_MSGSFC" runat="server" 
            style="position: relative; width: 9px; height: 24px" 
            Alias="MSGSFC"
            CssClass="DdsRecord"
            ProgramQ="@PGMQ" 
            DisplayFields="*True" 
            DisplayRecords="*True" 
            InitializeRecords="*True" 
            SubfilePage="1" 
            SubfileSize="10" 
          >&nbsp;
          <mdf:DdsSubfile id="_MSGSF" runat="server" 
            style="position: absolute; left: 0px; top: 0px; width: 9px; height: 24px" 
            Alias="MSGSF"
            CssClass="DdsSubfileRecord"
            UseSubfilePaging="True" 
            RowsCssClasses="DefaultRow AlternateRow"
          >&nbsp;
          <%--                                                                                  --%>
            <mdf:DdsCharField id="MSGSF__at_MSGKY" runat="server" 
              style="position: absolute; left: 8px; top: 0px; width: 600px"
              Alias="@MSGKY"
              Length="76" 
              Usage="OutputOnly" 
              CssClass="DdsSflMsgField" />
          </mdf:DdsSubfile >
          </mdf:DdsSubfileControl >

        </div>
    </asp:Content>

    <asp:Content ID="FileContent3" runat="server" ContentPlaceHolderID="MsgPH">
        <mdf:DdsMessagePanel ID="DdsMessagePanel1" Style="position: relative" runat="server" Height="64px"></mdf:DdsMessagePanel>
    </asp:Content>

    <asp:Content ContentPlaceHolderID="PageScriptPH" runat="server" >
    </asp:Content>
