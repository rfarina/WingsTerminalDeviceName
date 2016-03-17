<%@ Application Language="AVR" %>

<script runat="server">

	Begsr Application_Start
		dclsrparm sender type(*object)
		dclsrparm e type(System.EventArgs)

        dclfld ActiveJobTable type(System.Collections.Hashtable)
		*base.Application.Lock()
        ActiveJobTable = *new System.Collections.Hashtable()
        *base.Application["ActiveJobs"] = ActiveJobTable
        *base.Application.UnLock()
	Endsr

	Begsr Session_Start
		dclsrparm sender type(*object)
		dclsrparm e type(System.EventArgs)

        dclfld Device type(*object)
        dclfld Job type(ASNA.Monarch.WebJob)
        dclfld ActiveJobTable type(System.Collections.Hashtable)
        dclfld fileName type(*string) inz("")
		dclfld _lock0 type(*object)

        fileName = System.IO.Path.GetFileNameWithoutExtension(*base.Request.Path)

        If (fileName.StartsWith("!") *or *base.Request.Form["__isDspF__"] <> *nothing)
            leavesr
		Endif
        *base.Session["MonarchInitiated"] = *nothing
        Job = NewJob()
        *base.Session["Job"] = Job
        Device = Job.Start(*this.Session.SessionID)
        *base.Session["Device"] = Device

        ActiveJobTable = *base.Application["ActiveJobs"] *as System.Collections.Hashtable
        _lock0 = ActiveJobTable.SyncRoot
        EnterLock Object(_lock0)
            ActiveJobTable.Add(*this.Session.SessionID + Job.PsdsJobNumber.ToString(), Job)
        ExitLock

        ReadAlternatePagesConfig()
	Endsr

    Begsr  ReadAlternatePagesConfig
        dclfld userAgent type(*string)
        dclfld alternatePagesConfigDoc type(System.Xml.Linq.XDocument)

        userAgent =  Request.UserAgent

        If userAgent = *nothing
           LeaveSr
        EndIf

        alternatePagesConfigDoc = XDocument.Load(Request.PhysicalApplicationPath + "/App_Data/AlternatePages.config")

        If alternatePagesConfigDoc = *nothing
            LeaveSr
        EndIf

        ForEach agentNode Type(XElement) Collection( alternatePagesConfigDoc.Root.Elements(XName.Get("agent")) )
            DclArray words type(*String) Rank(1)
            dclfld subfolder type(*string)

            words = agentNode.Attribute(XName.Get("contains")).Value.Split(O' ')
            subfolder = agentNode.Attribute(XName.Get("subfolder")).Value.Trim()

            ForEach word Type(*string) Collection( words )
                If Not userAgent.Contains(word.Trim())
                    subfolder = *nothing
                    GoTo BreakLoop
                EndIf
            EndFor
            
Tag BreakLoop
            If subfolder <> *nothing
                Session.Item("Monarch_AlternateSubfolder") = subfolder
                LeaveSr
            EndIf
        EndFor
    Endsr

	Begsr Session_End
		dclsrparm sender type(*object)
		dclsrparm e type(System.EventArgs)

        dclfld Job type(ASNA.Monarch.WebJob)
        dclfld ActiveJobTable type(System.Collections.Hashtable)
		dclfld _lock1 type(*object)

        Job = *base.Session["Job"] *as ASNA.Monarch.WebJob
		If (Job <> *nothing)
            Job.RequestShutdown(20)

            ActiveJobTable = *base.Application["ActiveJobs"] *as System.Collections.Hashtable
            _lock1 = ActiveJobTable.SyncRoot
            EnterLock Object(_lock1)
                ActiveJobTable.Remove(*this.Session.SessionID + Job.PsdsJobNumber.ToString())
            ExitLock
		Endif
	Endsr

	BegFunc NewJob Type(ASNA.Monarch.WebJob)
        leavesr *new WingsLogic.WingsJob()
	EndFunc

</script>
