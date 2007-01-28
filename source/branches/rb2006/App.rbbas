#tag Class
Class App
Inherits Application
	#tag Event
		Sub Close()
		  DebugWriter.Done
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim OK As Boolean
		  'Profiler.EnableProfiler
		  Profiler.BeginProfilerEntry "App::Open"
		  
		  DebugWriter = New DebugOutput
		  DebugWriter.Enabled = DEBUG
		  DebugWriter.Level = DEBUGLEVEL
		  OK = DebugWriter.Init
		  DebugWriter.Write "-------------------- Begin Run ----------------------"
		  
		  Splash.Show
		  
		  SmartML.Init
		  
		  AppFolder = App.ExecutableFile
		  If Not AppFolder.Directory Then AppFolder = AppFolder.Parent ' Linux points to the parent folder; the other OSes seem to point to the executable file.
		  
		  Splash.SetStatus "Loading global settings..."
		  MyGlobals = SmartML.XDocFromFile(AppFolder.Child("OpenSong Settings").Child("Globals"))
		  If MyGlobals = Nil Then
		    MsgBox SmartML.ErrorString + ": " + _
		    AppFolder.Child("OpenSong Settings").AbsolutePath + _
		    " (" + Str(SmartML.ErrorCode) + ")"
		    Quit
		    Return
		  End If
		  
		  Splash.SetStatus "Creating/Checking documents folders..."
		  CheckCreateFolders()
		  
		  Dim xml As XmlDocument
		  Dim xnode As XmlNode
		  
		  ' --- LOAD SETTINGS ---
		  Splash.SetStatus "Loading main settings..."
		  MyMainSettings = SmartML.XDocFromFile(DocsFolder.Child("Settings").Child("MainSettings"))
		  If MyMainSettings = Nil Then
		    SmartML.DisplayError
		    Quit
		  End If
		  Splash.SetStatus "Loading translation text..."
		  Dim temp As String
		  temp = SmartML.GetValue(MyMainSettings.DocumentElement, "language/@file")
		  If Len(temp) = 0 Then
		    temp = "English"
		  End If
		  T = New Translator(AppFolder.Child("OpenSong Languages").Child(temp))
		  If Not T.IsLoaded Then
		    'Search first usable language file in directory
		    Dim i As Integer = 1
		    While i <= AppFolder.Child("OpenSong Languages").Count And Not T.IsLoaded
		      If Not AppFolder.Child("OpenSong Languages").Item(i).Directory Then
		        T = New Translator(AppFolder.Child("OpenSong Languages").Item(i))
		      End If
		      i = i + 1
		    Wend
		    If Not T.IsLoaded Then
		      'Show hardcoded error message, because we can't translate :(
		      Dim result As Integer
		      result = MsgBox("Error: Could not find a language file in " + AppFolder.Child("OpenSong Languages").AbsolutePath, 16)
		      Quit
		    End If
		  End If
		  
		  SmartML.SetValue MyMainSettings.DocumentElement, "language/@file", T.GetFileName
		  
		  TranslateMe True
		  
		  Splash.SetStatus T.Translate("load_settings/print") + "..."
		  MyPrintSettings = SmartML.XDocFromFile(DocsFolder.Child("Settings").Child("PrintSettings"))
		  If MyPrintSettings = Nil Then
		    SmartML.DisplayError
		    Quit
		  End If
		  Splash.SetStatus T.Translate("load_settings/presentation") + "..."
		  MyPresentSettings = SmartML.XDocFromFile(DocsFolder.Child("Settings").Child("PresentSettings"))
		  If MyPresentSettings = Nil Then
		    SmartML.DisplayError
		    Quit
		  End If
		  
		  ' --- BUILD CAPO LIST ---
		  CapoList.Append "1"
		  CapoList.Append "2"
		  CapoList.Append "3"
		  CapoList.Append "4"
		  CapoList.Append "5"
		  
		  ' --- BUILD FONT LIST ---
		  Dim i, j As Integer
		  Splash.SetStatus T.Translate("load_settings/fonts") + "..."
		  j = FontCount - 1
		  For i = 0 to j
		    FontList.Append Font(i)
		  Next i
		  FontList.Sort
		  
		  UpdateTranslationFonts
		  
		  ' --- CHECK FOR LATEST SONG AND SET VERSIONS ---
		  Dim songVersion, setVersion As Double
		  songVersion = SmartML.GetValueN(MyMainSettings.DocumentElement, "version/@songs")
		  setVersion = SmartML.GetValueN(MyMainSettings.DocumentElement, "version/@sets")
		  
		  App.MouseCursor = Nil
		  Dim f As FolderItem
		  
		  GraphicsX.ThicknessFactor = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "style/@thickness")
		  
		  Profiler.EndProfilerEntry
		  
		  ' --- CHECK FOR A NEWER VERSION ---
		  
		  If Len(SmartML.GetValue(App.MyMainSettings.DocumentElement, "version/@check", False)) < 4 Then _
		  SmartML.SetValueB(App.MyMainSettings.DocumentElement, "version/@check", True)
		  
		  Dim checkVer As CheckVerThread
		  If SmartML.GetValueB(App.MyMainSettings.DocumentElement, "version/@check") Then
		    Splash.SetStatus T.Translate("load_settings/latest_version") + "..."
		    checkVer = new CheckVerThread
		    checkVer.Run
		  End If
		  
		  ' Initialize whitespaces
		  Globals.WhitespaceChars.Append " "
		  Globals.WhitespaceChars.Append Chr(ENTER)
		  
		  ' Translate the Menus
		  T.TranslateMenu("main_menu", MainMenu)
		  
		  ' Start the show ...
		  MainWindow.Show
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(error As RuntimeException) As Boolean
		  Dim Popup As New ErrorPopup
		  Dim i As Integer
		  Dim StackTrace() As String
		  
		  'workaround, RB starts whining when I refer to error.Stack(i) directly
		  StackTrace = error.Stack
		  
		  'The exception's type is not part of the error message :(
		  If error IsA FunctionNotFoundException Then
		    Popup.ErrorDescription.Text = "FunctionNotFoundException"
		  ElseIf error IsA IllegalCastException Then
		    Popup.ErrorDescription.Text = "IllegalCastException"
		  ElseIf error IsA InvalidParentException Then
		    Popup.ErrorDescription.Text = "InvalidParentException"
		  ElseIf error IsA KeyChainException Then
		    Popup.ErrorDescription.Text = "KeyChainException"
		  ElseIf error IsA KeyNotFoundException Then
		    Popup.ErrorDescription.Text = "KeyNotFoundException"
		  ElseIf error IsA NilObjectException Then
		    Popup.ErrorDescription.Text = "NilObjectException"
		  ElseIf error IsA OLEException Then
		    Popup.ErrorDescription.Text = "OLEException"
		  ElseIf error IsA OutOfBoundsException Then
		    Popup.ErrorDescription.Text = "OutOfBoundsException"
		  ElseIf error IsA OutOfMemoryException Then
		    Popup.ErrorDescription.Text = "OutOfMemoryException"
		  ElseIf error IsA RbScriptAlreadyRunningException Then
		    Popup.ErrorDescription.Text = "RbScriptAlreadyRunningException"
		  ElseIf error IsA RegExException Then
		    Popup.ErrorDescription.Text = "RegExException"
		  ElseIf error IsA RegistryAccessErrorException Then
		    Popup.ErrorDescription.Text = "RegistryAccessErrorException"
		  ElseIf error IsA ShellNotRunningException Then
		    Popup.ErrorDescription.Text = "ShellNotRunningException"
		  ElseIf error IsA SOAPException Then
		    Popup.ErrorDescription.Text = "SOAPException"
		  ElseIf error IsA SpotlightException Then
		    Popup.ErrorDescription.Text = "SpotlightException"
		  ElseIf error IsA StackOverflowException Then
		    Popup.ErrorDescription.Text = "StackOverflowException"
		  ElseIf error IsA ThreadAlreadyRunningException Then
		    Popup.ErrorDescription.Text = "ThreadAlreadyRunningException"
		  ElseIf error IsA TypeMismatchException Then
		    Popup.ErrorDescription.Text = "TypeMismatchException"
		  ElseIf error IsA UnsupportedFormatException Then
		    Popup.ErrorDescription.Text = "UnsupportedFormatException"
		  ElseIf error IsA XMLDOMException Then
		    Popup.ErrorDescription.Text = "XMLDOMException"
		  ElseIf error IsA XMLException Then
		    Popup.ErrorDescription.Text = "XMLException"
		  ElseIf error IsA XMLReaderException Then
		    Popup.ErrorDescription.Text = "XMLReaderException"
		  End If
		  
		  If error.Message.Len > 0 Then
		    Popup.ErrorDescription.AppendText(":" + EndOfLine + error.Message)
		  End If
		  
		  'print stacktrace below error description
		  Popup.ErrorDescription.AppendText(EndOfLine + EndOfLine + "Stacktrace:")
		  For i = 0 To Ubound(error.Stack)
		    Popup.ErrorDescription.AppendText(EndOfLine + StackTrace(i))
		  Next
		  
		  Popup.ShowModal
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CenterInControlScreen(win As Window)
		  Dim controlScreen As Integer
		  If App.MyPresentSettings <> Nil Then
		    controlScreen = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@control") - 1
		    If controlScreen < 0 Or controlScreen + 1 > ScreenCount Then controlScreen = 0
		  Else
		    controlScreen = 0
		  End If
		  
		  // Do something reasonable for TwinView screens.
		  // Thanks, Jon!  EMP, June 2006
		  
		  '#If TargetLinux
		  If (Screen(controlScreen).Width /2) > Screen(controlScreen).Height Then
		    win.Left = Screen(controlScreen).Left + (Screen(controlScreen).Width - win.Width) / 4
		  Else
		    '#EndIf
		    win.Left = Screen(controlScreen).Left + (Screen(controlScreen).Width - win.Width) / 2
		  End If
		  
		  win.Top = Screen(controlScreen).Top + (Screen(controlScreen).Height  - win.Height) / 2 + 10
		  win.Left = Screen(controlScreen).Left + (Screen(controlScreen).Width - win.Width) / 2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ChangeWindowState(wnd As Window, style As Integer)
		  #if TargetWin32
		    Declare Sub ShowWindow Lib "User32" (wnd As Integer, nCmdShow As Integer)
		    
		    ShowWindow( wnd.WinHWND, style )
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FriendlyXMLException(e As XMLException) As String
		  Return e.Message + EndOfLine + " (" + e.Node + ":" + e.Line + ") " + e.Token + " (E" + Str(e.ErrorNumber) + ")"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFrontControlScreenWindow() As Window
		  // Returns the frontmost window on the control screen
		  // EMP 26 Feb 2006
		  //
		  Dim w As Window
		  Dim wc As Integer
		  Dim i As Integer
		  Dim cs As Integer
		  
		  wc = WindowCount - 1
		  cs = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@control") - 1
		  
		  For i = 0 To wc
		    If Window(i).Visible Then
		      If Window(i).Left >= Screen(cs).Left _
		        And Window(i).Left < Screen(cs).Left + Screen(cs).Width _
		        And Window(i).Top >= Screen(cs).Top _
		        And Window(i).Top < Screen(cs).Top + Screen(cs).Height _
		        Then
		        Return Window(i)
		      End If
		    End If
		  Next i
		  Return Nil // Fell through, no one is on the control screen
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPrinterSetup(ShowDialog As Boolean = False, Wnd As Window = Nil) As PrinterSetup
		  //
		  // OpenSong maintains a single PrinterSetup object for the printer.  This routine controls
		  // access to that object.  If ShowDialog is True, then the PrinterSetup dialog will be shown.
		  // If Wnd is not Nil, that Dialog will be attached to the given window (Mac only).
		  //
		  // RealBasic for the Mac has an issue with the PrinterSetup object.  The one returned
		  // from PageSetupDialog is invalid.  It has to be copied into a new one to be used.  For
		  // this reason, a clone is returned on OS X.
		  //
		  // On Windows, a second call to OpenPrinterDialog with the same PrinterSetup object
		  // results in no dialog display and Nil returned for the Graphics object.  Copy it, and
		  // all works fine.  Go figure.
		  //
		  // TODO: Save SetupString across program invocations.  Issues to remember: SetupString is
		  // platform dependent.  SetupString on Windows can't just be sent to an XML file such as
		  // MyPrintSettings with SmartML.SetValue.  Use something like EncodeBase64 to store
		  // and retrieve (didn't test Mac to see if this was also true on that platform).
		  //
		  // Finally, this needs a different approach for Linux since (as of RB2005R4) PrinterSetup
		  // doesn't do anything useful.
		  //
		  
		  Dim TempPS As PrinterSetup
		  Dim NewPS As PrinterSetup
		  
		  If MyPrinterSetup = Nil And Not ShowDialog Then Return Nil
		  
		  TempPS = New PrinterSetup
		  TempPS.MaxHorizontalResolution = -1
		  TempPS.MaxVerticalResolution = -1
		  
		  If MyPrinterSetup <> Nil Then
		    TempPS.SetupString = MyPrinterSetup.SetupString
		  End If
		  
		  If ShowDialog Then
		    If TempPS.PageSetupDialog(Wnd) Then
		      MyPrinterSetup = TempPS // Save the new settings
		      If SmartML.GetValueB(App.MyPrintSettings.DocumentElement, "page/@points", False, False) Then
		        SmartML.SetValueN(MyPrintSettings.DocumentElement, "page/@height", _
		        InchesToPoints(TempPS.PageHeight) / TempPS.VerticalResolution)
		        SmartML.SetValueN(MyPrintSettings.DocumentElement, "page/@width", _
		        InchesToPoints(TempPS.PageHeight) / TempPS.VerticalResolution)
		      Else
		        SmartML.SetValueN(MyPrintSettings.DocumentElement, "page/@height", _
		        TempPS.PageHeight / TempPS.VerticalResolution)
		        SmartML.SetValueN(MyPrintSettings.DocumentElement, "page/@width", _
		        TempPS.PageWidth / TempPS.HorizontalResolution)
		      End If
		    Else
		      Return Nil // User cancelled dialog.
		    End If
		  End If
		  // We have a non-null MyPrinterSetup now.  Copy it and return
		  // Sadly, this has to be OS-specific, at least under RB5.5.
		  // If, on OS X, if you do a straight copy it bombs.  If you copy
		  // the setup string, it doesn't bomb but the horizontal and vertical resolutions
		  // are set to 72, which really does a number on things if it is reporting
		  // height and width at something other than 72dpi.
		  // Copying the setup string on Windows started off working, but
		  // then started returning an invalid pointer that would crash OS.
		  // This is insane...
		  NewPS = New PrinterSetup
		  #If TargetMacOS
		    NewPS.MaxHorizontalResolution = -1
		    NewPS.MaxVerticalResolution = -1
		    NewPS.SetupString = MyPrinterSetup.SetupString
		  #ElseIf TargetWin32
		    NewPS = MyPrinterSetup
		  #EndIf
		  Return NewPS
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MaximizeInControlScreen(win As Window)
		  Dim controlScreen As Integer
		  If App.MyPresentSettings <> Nil Then
		    controlScreen = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@control") - 1
		    If controlScreen < 0 Or controlScreen + 1 > ScreenCount Then controlScreen = 0
		  Else
		    controlScreen = 0
		  End If
		  
		  // Added to support TwinView displays under Linux
		  // Thanks, Jon!  EMP, June 2006
		  
		  #If TargetLinux
		    If (Screen(controlScreen).Width /2) > Screen(controlScreen).Height Then
		      win.Width = (Screen(controlScreen).Width /2) - 40
		    else
		      win.Width = Screen(controlScreen).Width - 40
		    End If
		  #Else
		    win.Width = Screen(controlScreen).Width - 40
		  #EndIf
		  
		  win.Height = Screen(controlScreen).Height - 115
		  
		  win.Top = Screen(controlScreen).Top + (Screen(controlScreen).Height  - win.Height) / 2 + 10
		  win.Left = Screen(controlScreen).Left + (Screen(controlScreen).Width - win.Width) / 2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SmartVersion() As String
		  Dim t As String
		  
		  t = "v" + Str(App.MajorVersion) + "." + Str(App.MinorVersion) + "." + Str(App.BugVersion)
		  
		  Select Case App.StageCode
		  Case Developement
		    t = t + " dev "
		  Case Alpha
		    t = t + " alpha "
		  Case Beta
		    t = t + " beta "
		  Case Final
		    t = t + " final "
		  Else
		    t = t + " "
		  End Select
		  
		  If App.NonReleaseVersion > 0 Then t = t + Str(App.NonReleaseVersion)
		  
		  Return t
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TranslateMe(splashShowing As Boolean = False)
		  Dim xnode As XmlNode
		  Dim i As Integer
		  
		  StylePreview = T.GetNode("style_preview")
		  
		  ' --- BUILD TEMPO LIST ---
		  If splashShowing Then Splash.SetStatus T.Translate("load_settings/tempos") + "..."
		  xnode = T.GetNode("tempo_list").FirstChild
		  For i = UBound(TempoList) DownTo 1
		    TempoList.Remove i
		  Next i
		  While xnode <> Nil
		    TempoList.Append SmartML.GetValue(xnode, "@name")
		    xnode = xnode.NextSibling
		  Wend
		  
		  ' --- BUILD THEME LIST ---
		  If splashShowing Then Splash.SetStatus T.Translate("load_settings/themes") + "..."
		  xnode = T.GetNode("theme_list").FirstChild
		  For i = UBound(ThemeList) DownTo 1
		    ThemeList.Remove i
		  Next i
		  While xnode <> Nil
		    ThemeList.Append SmartML.GetValue(xnode, "@name")
		    xnode = xnode.NextSibling
		  Wend
		  
		  ' --- BUILD TIME SIG LIST ---
		  If splashShowing Then Splash.SetStatus T.Translate("load_settings/time_signatures") + "..."
		  xnode = T.GetNode("time_sig_list").FirstChild
		  For i = UBound(TimeSigList) DownTo 1
		    TimeSigList.Remove i
		  Next i
		  While xnode <> Nil
		    TimeSigList.Append SmartML.GetValue(xnode, "@name")
		    xnode = xnode.NextSibling
		  Wend
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateTranslationFonts()
		  Dim i As Integer
		  For i = UBound(TranslationFonts) DownTo 1
		    TranslationFonts.Remove i
		  Next i
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/headings")
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/labels")
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/text_fields")
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/large_headings")
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/buttons")
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/fixed_width")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CheckCreateFolders()
		  ' Check if document folders exist and create when necessary
		  Dim docsPath As String
		  Dim defaultsFolder As FolderItem
		  Dim failedFolderName As String
		  App.DocsFolder = Nil
		  
		  docsPath = SmartML.GetValue(MyGlobals.DocumentElement, "documents/@folder", False)
		  If Len(docsPath) > 0 Then
		    DocsFolder = FileUtils.AbsolutePathToFolderItem(docsPath)
		  End If
		  If DocsFolder = Nil Then DocsFolder = DocumentsFolder.Child("OpenSong")
		  
		  ' All folders are created from the OpenSong Defaults template folder, check if it is complete
		  If Not AppFolder.Child("OpenSong Defaults").Exists Then
		    failedFolderName = AppFolder.Child("OpenSong Defaults").AbsolutePath
		  Else
		    defaultsFolder = AppFolder.Child("OpenSong Defaults")
		  End If
		  
		  If Not defaultsFolder.Child("Settings").Exists Then
		    failedFolderName = defaultsFolder.Child("Settings").AbsolutePath
		  ElseIf Not defaultsFolder.Child("Songs").Exists Then
		    failedFolderName = defaultsFolder.Child("Songs").AbsolutePath
		  ElseIf Not defaultsFolder.Child("Sets").Exists Then
		    failedFolderName = defaultsFolder.Child("Sets").AbsolutePath
		  ElseIf Not defaultsFolder.Child("Backgrounds").Exists Then
		    failedFolderName = defaultsFolder.Child("Backgrounds").AbsolutePath
		  End If
		  
		  If failedFolderName.Len > 0 Then
		    App.MouseCursor = Nil
		    MsgBox "Can't find Defaults folder: " + failedFolderName + " You should try to reinstall the application."
		    Quit
		  End If
		  
		  ' Create whatever sub-folders are needed
		  If Not DocsFolder.Exists Then
		    If Not FileUtils.CopyPath(defaultsFolder, DocsFolder) Then
		      App.MouseCursor = Nil
		      MsgBox "Could not find Documents folder (" + DocsFolder.AbsolutePath + ") and could not create it."
		      Quit
		    End If
		  End If
		  
		  If Not DocsFolder.Child("Settings").Exists Then
		    If Not FileUtils.CopyPath(defaultsFolder.Child("Settings"), DocsFolder.Child("Settings")) Then
		      failedFolderName = DocsFolder.Child("Settings").AbsolutePath
		    End If
		  End If
		  
		  If Not DocsFolder.Child("Songs").Exists Then
		    If Not FileUtils.CopyPath(defaultsFolder.Child("Songs"), DocsFolder.Child("Songs")) Then
		      failedFolderName = DocsFolder.Child("Songs").AbsolutePath
		    End If
		  End If
		  
		  If Not DocsFolder.Child("Sets").Exists Then
		    If Not FileUtils.CopyPath(defaultsFolder.Child("Sets"), DocsFolder.Child("Sets")) Then
		      failedFolderName = DocsFolder.Child("Sets").AbsolutePath
		    End If
		  End If
		  
		  If Not DocsFolder.Child("Backgrounds").Exists Then
		    If Not FileUtils.CopyPath(defaultsFolder.Child("Backgrounds"), DocsFolder.Child("Backgrounds")) Then
		      failedFolderName = DocsFolder.Child("Backgrounds").AbsolutePath
		    End If
		  End If
		  
		  If failedFolderName.Len > 0 Then
		    App.MouseCursor = System.Cursors.StandardPointer
		    MsgBox "Could not find " + failedFolderName + " and was not able to create it."
		    Quit
		  End If
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AppFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		CapoList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DebugWriter As DebugOutput
	#tag EndProperty

	#tag Property, Flags = &h0
		DocsFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		FontList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MyBible As Bible
	#tag EndProperty

	#tag Property, Flags = &h0
		MyFontChooser As FontChooser
	#tag EndProperty

	#tag Property, Flags = &h0
		MyGlobals As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h0
		MyMainSettings As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h0
		MyPresentSettings As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Global printer settings.
		#tag EndNote
		MyPrinterSetup As PrinterSetup
	#tag EndProperty

	#tag Property, Flags = &h0
		MyPrintSettings As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h0
		SplashShowing As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		StylePreview As XmlNode
	#tag EndProperty

	#tag Property, Flags = &h0
		T As Translator
	#tag EndProperty

	#tag Property, Flags = &h0
		TempoList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ThemeList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TimeSigList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TranslationFonts(0) As FontFace
	#tag EndProperty


	#tag Constant, Name = DEBUG, Type = Boolean, Dynamic = False, Default = \"False", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DEBUGLEVEL, Type = Double, Dynamic = False, Default = \"3", Scope = Private
	#tag EndConstant


End Class
#tag EndClass
