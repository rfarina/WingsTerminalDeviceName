<%@ Page Language="AVR" AutoEventWireup="false"  CodeFile="Asna5250Terminal.aspx.vr" Inherits="Display" MasterPageFile="~/Themes/Current/Terminal.master"%>
<%@ Register  TagPrefix="mdf" Assembly="ASNA.Monarch.WebDspF, Version=14.0.9.0, Culture=neutral, PublicKeyToken=71de708db13b26d3" Namespace="ASNA.Monarch.WebDspF" %>

<asp:Content ID="HeaderArea" ContentPlaceHolderID="HeaderPH" runat="Server">
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
</asp:Content>

<asp:Content ID="FKeyArea" runat="server" ContentPlaceHolderID="FKeyPH">
    <input class="DdsKey" id="Exit" onclick="WingsTerminal.executeMacro(['Exit', 'REDIRECT:../../Monarch/!Eoj.aspx']);" type="button" value="Exit"/>
</asp:Content>

<asp:Content ID="CentralArea" runat="server" ContentPlaceHolderID="CenPH">
    <mdf:AsnaTerm5250 runat="server" />
</asp:Content>

<asp:Content ID="PageScriptArea" runat="server" ContentPlaceHolderID="PageScriptPH">
<script type="text/javascript">
    WingsTerminal.Render({ "width": 800, "height": 560 }); // Note: this is ignored by WingsTerminal for Mobile browsers (the window.screen object is used).
</script>
</asp:Content>
