<%@ Page Language="AVR" AutoEventWireup="false"  CodeFile="Asna5250Terminal.aspx.vr" Inherits="Display" %>
<%@ Register  TagPrefix="mdf" Assembly="ASNA.Monarch.WebDspF, Version=14.0.9.0, Culture=neutral, PublicKeyToken=71de708db13b26d3" Namespace="ASNA.Monarch.WebDspF" %>

<!DOCTYPE html>

<html> 
<head>
    <title>ASNA 5250 Terminal Emulator</title>
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" type="text/css" href="../Styles/Framework.css" />
    <!-- Note: The iOS Home screen icon and startup image's links are in the TabletMasterPage.master which should be used by the initial page: Tablet/SignOn.aspx -->
</head>
<body id="AsnaTermBody" style="margin:0;padding:0;">
    <form id="form1" runat="server" autocomplete="off">
        <mdf:AsnaTerm5250 runat="server" />
    </form>
</body>

<script type="text/javascript">
    WingsTerminal.Render({ "width": 960, "height": 720 }); // Note: this is ignored by WingsTerminal for Mobile browsers (the window.screen object is used).
</script>

</html>
