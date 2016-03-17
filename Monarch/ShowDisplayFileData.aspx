<%@ Page Language="AVR" %>

<!DOCTYPE html>

<script runat="server">
    BegSr Page_Load Access(*Private) Event( *This.Load )
        DclSrParm sender Type(*Object)
        DclSrParm e Type(System.EventArgs)

        DclFld ds     Type( System.Data.DataSet ) 
        DclFld device Type( ASNA.Monarch.WebDevice ) 
        DclFld gv     Type( GridView ) 
        DclFld lit    Type( Literal ) 
                
        // Get a reference to the ASNA.Monarch.WebDevice resident in a session variable.
        device = Session[ "device" ] *As ASNA.Monarch.WebDevice

        // Get that device's dataset.
        ds = device.ActiveDisplayFile.DataSet       
        
        // Traverse over each table in that dataset.
        ForEach dt Type( System.Data.DataTable ) Collection( ds.Tables )
            lit = *new Literal()
            lit.Text = "<div class='tableName'>Display file/format: " + device.ActiveDisplayFile.FileName.Trim() + "/" + dt.TableName + "</div>"
            panel1.Controls.Add( lit )             

            If ( dt.Rows.Count > 0 ) 
                gv = *New GridView()
                gv.DataSource = dt
                gv.DataBind()         
                panel1.Controls.Add( gv ) 
            Else
                lit = *new Literal()
                lit.Text = "Nothing to display."
                panel1.Controls.Add( lit )             
            EndIf                
        EndFor
    EndSr
</script>

<html>

<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Show display file data</title>
    
    <style type="text/css">
        body {
            font-family: Tahoma,Verdana, Arial, Helvetica, sans-serif;
            color: Black;
        }
      
        div.tableName {
            font-size: large;
            margin-top: 20px;
        }
      
        table {
            font-size:small;
        }
        
        table tr td {
            text-align: right;
            padding-right: 3px;
        }

        .note {
            font-size: small;
            color: orangered;
        }
       
        .optionIndicatorsDisplay, .responseIndicatorsDisplay {
            cursor:pointer;
        }
       
        .indValue {           
           width: 80px;          
           border: solid black 1px;
        }
        
        .indicatorUndefined {
            background-color: lightgray;
        }

        .indicatorOn {
            background-color: skyblue;
        }

        .responseIndicatorOff {
            background-color: gold;
        }

        .responseIndicatorWontChange {
            opacity: 0.5;
        }

        .asnabox, .asnafade {
            left: 0px;
            top: 0px;
            width: 100%;
            height: 100%;
            z-index: 999;
        }
       
        .asnafade {
              position: absolute;
              background-color: #aaaaaa;
              opacity: 0.6;
        }

        .asnabox {
            position: fixed;
        }

        div.asna {
              width: 70%;
              font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;
              position: absolute;
              background-color: #ffffff;
              font-size: 11px;
              text-align: left;
              border: solid 1px #eeeeee;
              border-radius: 10px;
              -moz-border-radius: 10px;
              -webkit-border-radius: 10px;
              padding: 7px;
        }

        div.asna .asnacontainer {
              font-weight: normal;
        }

        div.asna .asnaclose {
              position: absolute;
              top: 4px; right: -2px;
              width: 18px;
              cursor: default;
              color: #bbbbbb;
              font-weight: bold;
        }

        div.asna .asnamessage {
              padding: 10px;
              line-height: 20px;
              color: #444444;
        }

        div.asna .asnabuttons {
              text-align: right;
              padding: 5px 0 5px 0;
              border: solid 1px #eeeeee;
              background-color: #f4f4f4;
        }

        div.asna button {
              padding: 3px 10px;
              margin: 0 10px;
              background-color: #2F6073;
              border: solid 1px #f4f4f4;
              color: #ffffff;
              font-weight: bold;
              font-size: 12px;
        }

        div.asna button:hover {
              background-color: #728A8C;
        }

        div.asna button.asnadefaultbutton {
              background-color: #BF5E26;
        }

        .asnawarning .asna .asnabuttons {
              background-color: #BF5E26;
        }       
    </style>   
    
</head>

<body>
    <div>Click any indicator to see the indicator value table. 
        <a id='anchorRefresh' href='#'>Refresh page</a>
    </div>
    <div class="note">Note: This page is intended for development purposes only. Please remove before deploying.</div>
    <br />
    <div>    
        <form id="form1" runat="server">
            <asp:Panel ID="Panel1" runat="server" 
                style="z-index: 1; left: 10px; top: 34px; position: absolute; height: 19px; width: 1573px">
            </asp:Panel>
        </form>
    </div>

    <script>
        (function () {
            var Const = function () {
                return {
                    HTML_TAG_Div: 'DIV',
                    HTML_TAG_Button: 'BUTTON',
                    EVENT_TYPE_Click: 'click',
                    ID_Refresh: 'anchorRefresh',
                    CLASS_TableName: 'tableName',
                    CLASS_OptionIndicatorDisplay: 'optionIndicatorsDisplay',
                    CLASS_ResponseIndicatorDisplay: 'responseIndicatorsDisplay',
                    CLASS_indicatorOn: 'indicatorOn',
                    CLASS_ResponseIndicatorOff: 'responseIndicatorOff',
                    CLASS_ResponseIndicatorWontChange: 'responseIndicatorWontChange',
                    DATA_ID_DataTableName: 'data-table-name',
                    DATA_ID_Rrn: 'data-rrn',
                    TITLE_OptionIndicators: 'Option Indicator values:',
                    TITLE_ResponseIndicators: 'Response Indicator values:<br/>&nbsp;&nbsp;&nbsp;"0" means: The indicator will be reset on the program when this record is read, the value may be "1" if some other condition succeeds.<br/>&nbsp;&nbsp;&nbsp;"x" means: Indicator value will not change.',
                    ALERT_BrowserTooOld: 'Please use a modern Browser for development.'
                };
            }();

            var Propmt = function () {
                return {
                    ID_CLASS_AsnaBox: 'asnabox',
                    ID_CLASS_AsnaFade: 'asnafade',
                    ID_CLASS_Asna: 'asna',
                    CLASS_AsnaContainer: 'asnacontainer',
                    CLASS_AsnaClose: 'asnaclose',
                    ID_AsnaStates: 'asnastates',
                    CLASS_AsnaState: 'asna_state',
                    CLASS_AsnaMessage: 'asnamessage',
                    CLASS_AsnaButtons: 'asnabuttons',
                    CLASS_AsnaDefaultBtn: 'asnadefaultbutton',
                    ID_AsnaStateZero: 'asna_state_state0',
                    ID_NAME_StateZeroBtnOk: 'asna_state0_buttonOk',
                    TEXT_Ok: 'Ok'
                };
            }();

            var copyToArray = function (nodeList) {
                var arr = [], i, arrL;
                for (i = 0, arrL = arr.length = nodeList.length; i < arrL; i++) {
                    arr[i] = nodeList[i];
                }
                return arr;
            };

            var usingModernBrowser = function () {
                var el = document.getElementById(Const.ID_Refresh); // Known ID
                if (el.addEventListener && document.querySelectorAll && el.getAttribute && el.setAttribute && window.getComputedStyle) {
                    return true;
                }
                return false;
            };

            var addClassesToIndicators = function (strOptionIndicatorClass, strResponseIndicatorClass) {
                var sel = document.querySelectorAll('table tr');
                var trArr = copyToArray(sel), trArrL = trArr.length, i;

                for (i = 0; i < trArrL; i++) {
                    sel = trArr[i].querySelectorAll('td');
                    var tdArr = copyToArray(sel), tdArrL = tdArr.length;

                    if (tdArrL > 2) { // Last two columns
                        tdArr[tdArrL - 2].className = strOptionIndicatorClass;
                        tdArr[tdArrL - 1].className = strResponseIndicatorClass;
                    }
                }
            };

            var addEventListenerToElementsOfClass = function (strClass, strEventId, fn) {
                var sel = document.getElementsByClassName(strClass);
                var elArr = copyToArray(sel), elArrL = elArr.length, i;
                for (i = 0; i < elArrL; i++) {
                    elArr[i].addEventListener(strEventId, fn);
                }
            };

            var addDataTableNameAttrToIndicators = function () {
                var sel = document.getElementsByClassName(Const.CLASS_TableName);
                var divTableNameArr = copyToArray(sel), divTableNameArrL = divTableNameArr.length, i;

                for (i = 0; i < divTableNameArrL; i++) {
                    var tableName = divTableNameArr[i].innerHTML;
                    var next = divTableNameArr[i].nextSibling;

                    if (next.tagName && next.tagName === Const.HTML_TAG_Div) { // When record is inactive, the next node would be not be a DIV, but #text with 'Nothing to display.'
                        sel = next.querySelectorAll('table tr');
                        var trArr = copyToArray(sel), trArrL = trArr.length, k;

                        for (k = 0; k < trArrL; k++) {
                            sel = trArr[k].querySelectorAll('td');
                            var tdArr = copyToArray(sel), tdArrL = tdArr.length;
                            var oi, ri;

                            if (tdArrL > 2) { // Last two columns
                                oi = tdArr[tdArrL - 2];
                                ri = tdArr[tdArrL - 1];

                                oi.setAttribute(Const.DATA_ID_DataTableName, tableName);
                                ri.setAttribute(Const.DATA_ID_DataTableName, tableName);

                                if (trArrL > 2) { // First row are headings
                                    oi.setAttribute(Const.DATA_ID_Rrn, k);
                                    ri.setAttribute(Const.DATA_ID_Rrn, k);
                                }
                            }
                        }
                    }
                }
            };

            var formatTitle = function (tdEl) {
                var tableName = tdEl.getAttribute(Const.DATA_ID_DataTableName);
                var rrn = tdEl.getAttribute(Const.DATA_ID_Rrn);
                var title = '';

                if (tableName) {
                    title = tableName + ' ';
                }
                if (rrn) {
                    title += '(RRN: ' + rrn + ')';
                }

                if (title.length > 0) {
                    title += '<br>';
                }

                return title;
            };

            var writeIndicatorsHtml = function (indicators, title, colorMap) {
                var i, ind;
                var html = '</br>' + title + '</br>', className;
                html = html + '<table style="border-collapse:collapse;font-size:small;width=96%"><tr>';

                for (i = 0; i <= 99; i++) {
                    if (i % 10 == 0 && i != 0) {
                        html = html + "</tr><tr>";
                    }
                    if (i == 0) {
                        html = html + '<td class="indValue indicatorUndefined"></td>';
                    }
                    else {
                        ind = indicators.substring(i, i + 1);
                        className = colorMap[ind];

                        if (className && className.length > 0) {
                            html = html + '<td class="indValue ' + className + '">' + i + ' = ' + ind + '</td>';
                        }
                        else {
                            html = html + '<td class="indValue">' + i + ' = ' + ind + '</td>';
                        }
                    }
                }
                html = html + '</tr></table>';
                return html;
            };

            var outerWidth = function (el) {
                var width = el.offsetWidth;
                var style = window.getComputedStyle(el);

                width += parseInt(style.marginLeft) + parseInt(style.marginRight);
                return width;
            };

            var prompt = function (msgHtml) {
                var fragment = document.createDocumentFragment();
                var box = document.createElement(Const.HTML_TAG_Div);
                var fade = document.createElement(Const.HTML_TAG_Div);
                var chrome = document.createElement(Const.HTML_TAG_Div);
                var container = document.createElement(Const.HTML_TAG_Div);
                var close = document.createElement(Const.HTML_TAG_Div);
                var states = document.createElement(Const.HTML_TAG_Div);
                var state0 = document.createElement(Const.HTML_TAG_Div);
                var message = document.createElement(Const.HTML_TAG_Div);
                var buttons = document.createElement(Const.HTML_TAG_Div);
                var okButton = document.createElement(Const.HTML_TAG_Button);

                box.id = box.className = Propmt.ID_CLASS_AsnaBox;
                fade.id = fade.className = Propmt.ID_CLASS_AsnaFade;

                box.appendChild(fade);

                chrome.id = chrome.className = Propmt.ID_CLASS_Asna;
                chrome.style.cssText = 'left: 50%; top: 15%; position: absolute; z-index: 1000;';
                chrome.style.opacity = 0.20; // Animation

                box.appendChild(chrome);

                container.className = Propmt.CLASS_AsnaContainer;
                close.className = Propmt.CLASS_AsnaClose;
                close.innerHTML = "X";

                container.appendChild(close);

                states.id = Propmt.ID_AsnaStates;
                container.appendChild(states);

                state0.id = Propmt.ID_AsnaStateZero;
                state0.className = Propmt.CLASS_AsnaState;
                state0.style.cssText = 'display: block;';
                states.appendChild(state0);

                message.className = Propmt.CLASS_AsnaMessage;
                message.innerHTML = msgHtml;

                state0.appendChild(message);

                buttons.className = Propmt.CLASS_AsnaButtons;

                okButton.id = okButton.name = Propmt.ID_NAME_StateZeroBtnOk;
                okButton.className = Propmt.CLASS_AsnaDefaultBtn;
                okButton.value = 'true';
                okButton.innerHTML = Propmt.TEXT_Ok;

                buttons.appendChild(okButton);

                state0.appendChild(buttons);
                chrome.appendChild(container);

                fragment.appendChild(box);
                document.body.appendChild(fragment);

                chrome.style.marginLeft = '-' + outerWidth(chrome) / 2 + 'px';

                chrome.style.transition = 'opacity 0.5s ease-in';
                chrome.style.opacity = 1;

                okButton.addEventListener('click', function () {
                    var promptBox = document.getElementById(Propmt.ID_CLASS_AsnaBox);
                    if (promptBox)
                        document.body.removeChild(promptBox);
                });

                close.addEventListener(Const.EVENT_TYPE_Click, function () {
                    var promptBox = document.getElementById(Propmt.ID_CLASS_AsnaBox);
                    if (promptBox)
                        document.body.removeChild(promptBox);
                });
            };

            // Main Code
            if (usingModernBrowser()) {
                document.getElementById(Const.ID_Refresh).addEventListener(Const.EVENT_TYPE_Click,
                    function () {
                        window.location.reload(true);
                    });

                addClassesToIndicators(Const.CLASS_OptionIndicatorDisplay, Const.CLASS_ResponseIndicatorDisplay);
                addDataTableNameAttrToIndicators();
                addEventListenerToElementsOfClass(Const.CLASS_OptionIndicatorDisplay, Const.EVENT_TYPE_Click, function () {
                    var indicators = this.innerHTML;
                    var title = formatTitle(this) + Const.TITLE_OptionIndicators;
                    var html = writeIndicatorsHtml(indicators, title, { '0': '', '1': Const.CLASS_indicatorOn });
                    prompt(html);
                });
                addEventListenerToElementsOfClass(Const.CLASS_ResponseIndicatorDisplay, Const.EVENT_TYPE_Click, function () {
                    var indicators = this.innerHTML;
                    var title = formatTitle(this) + Const.TITLE_ResponseIndicators;
                    html = writeIndicatorsHtml(indicators, title, { 'x': Const.CLASS_ResponseIndicatorWontChange, '0': Const.CLASS_ResponseIndicatorOff, '1': Const.CLASS_indicatorOn });
                    prompt(html);
                });
            }
            else {
                alert(Const.ALERT_BrowserTooOld);
            }

        })();
     </script>     
</body>
</html>
