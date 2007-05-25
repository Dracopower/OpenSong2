#tag Window
Begin Window FontChooser
   BackColor       =   16777215
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   1
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   285
   LiveResize      =   "False"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   "True"
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   "True"
   MinHeight       =   64
   MinimizeButton  =   "True"
   MinWidth        =   64
   Placement       =   1
   Resizeable      =   "False"
   Title           =   "Font Selection"
   Visible         =   "True"
   Width           =   320
   Begin StaticText lbl_font_face
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      ControlOrder    =   0
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   15
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "Font:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   15
      Underline       =   "False"
      Visible         =   True
      Width           =   100
      BehaviorIndex   =   0
   End
   Begin EditField edt_font_face
      AcceptTabs      =   "False"
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   16777215
      BalloonHelp     =   ""
      Bold            =   "False"
      Border          =   "True"
      ControlOrder    =   1
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Format          =   ""
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   15
      LimitText       =   0
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Mask            =   ""
      Multiline       =   "False"
      Password        =   "False"
      ReadOnly        =   "False"
      ScrollBar       =   "True"
      ScrollbarHorizontal=   "False"
      ScrollbarVertical=   "True"
      Styled          =   "False"
      TabPanelIndex   =   0
      Text            =   "Times New Roman"
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   30
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   True
      Width           =   150
      BehaviorIndex   =   1
   End
   Begin ListBox lst_font_faces
      AutoDeactivate  =   "True"
      AutoHideScrollbars=   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      ColumnCount     =   1
      ColumnsResizable=   "False"
      ColumnWidths    =   ""
      ControlOrder    =   2
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      DisabledBalloonHelp=   ""
      Enabled         =   True
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   "False"
      HeadingIndex    =   -1
      Height          =   100
      HelpTag         =   ""
      Hierarchical    =   "False"
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   "False"
      Left            =   15
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      RequiresSelection=   ""
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      ScrollPosition  =   0
      ScrollPositionX =   0
      SelectionType   =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   55
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   True
      Width           =   150
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      BehaviorIndex   =   2
   End
   Begin StaticText lbl_font_size
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      ControlOrder    =   3
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   175
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "Size:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   15
      Underline       =   "False"
      Visible         =   True
      Width           =   60
      BehaviorIndex   =   3
   End
   Begin EditField edt_font_size
      AcceptTabs      =   "False"
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   16777215
      BalloonHelp     =   ""
      Bold            =   "False"
      Border          =   "True"
      ControlOrder    =   4
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Format          =   ""
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   175
      LimitText       =   3
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Mask            =   "##9"
      Multiline       =   "False"
      Password        =   "False"
      ReadOnly        =   "False"
      ScrollBar       =   "True"
      ScrollbarHorizontal=   "False"
      ScrollbarVertical=   "True"
      Styled          =   "False"
      TabPanelIndex   =   0
      Text            =   12
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   30
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   True
      Width           =   60
      BehaviorIndex   =   4
   End
   Begin ListBox lst_font_size
      AutoDeactivate  =   "True"
      AutoHideScrollbars=   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      ColumnCount     =   1
      ColumnsResizable=   "False"
      ColumnWidths    =   ""
      ControlOrder    =   5
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      DisabledBalloonHelp=   ""
      Enabled         =   True
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   "False"
      HeadingIndex    =   -1
      Height          =   100
      HelpTag         =   ""
      Hierarchical    =   "False"
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "8\r9\r10\r11\r12\r14\r16\r18\r20\r22\r24\r26\r28\r36\r48\r72"
      Italic          =   "False"
      Left            =   175
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      RequiresSelection=   ""
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      ScrollPosition  =   0
      ScrollPositionX =   0
      SelectionType   =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   55
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   True
      Width           =   60
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      BehaviorIndex   =   5
   End
   Begin CheckBox chk_font_bold
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Bold"
      ControlOrder    =   6
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   245
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   60
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   80
      BehaviorIndex   =   6
   End
   Begin CheckBox chk_font_italic
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Italic"
      ControlOrder    =   7
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   245
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   85
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   80
      BehaviorIndex   =   7
   End
   Begin CheckBox chk_font_underline
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Underline"
      ControlOrder    =   8
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   245
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   110
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   80
      BehaviorIndex   =   8
   End
   Begin PushButton btn_ok
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "OK"
      ControlOrder    =   9
      Default         =   "True"
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   50
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   255
      Underline       =   "False"
      Visible         =   True
      Width           =   70
      BehaviorIndex   =   9
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "Cancel"
      ControlOrder    =   10
      Default         =   "False"
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   130
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   255
      Underline       =   "False"
      Visible         =   True
      Width           =   70
      BehaviorIndex   =   10
   End
   Begin SColorCanvas can_font_color
                      =   ""
                      =   ""
                      =   ""
                      =   100
                      =   ""
                      =   ""
                      =   ""
                      =   "True"
                      =   ""
                      =   ""
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      ControlOrder    =   11
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      EraseBackground =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      IsColorSet      =   0
      Left            =   245
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MyColor         =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   30
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   60
      BehaviorIndex   =   11
   End
   Begin StaticText lbl_font_color
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      ControlOrder    =   12
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   245
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "Color:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   15
      Underline       =   "False"
      Visible         =   True
      Width           =   60
      BehaviorIndex   =   12
   End
   Begin SFontCanvas can_font_preview
                      =   ""
                      =   ""
                      =   ""
                      =   100
                      =   ""
                      =   ""
                      =   ""
                      =   "True"
                      =   ""
                      =   ""
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AdvancedOptions =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      ControlOrder    =   13
      DisabledBalloonHelp=   ""
      Enabled         =   "False"
      EraseBackground =   "True"
      Height          =   80
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   15
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   165
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   220
      BehaviorIndex   =   13
   End
   Begin CheckBox chk_font_border
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Border"
      ControlOrder    =   14
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   245
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   135
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   80
      BehaviorIndex   =   14
   End
   Begin SColorCanvas can_font_border
                      =   ""
                      =   ""
                      =   ""
                      =   100
                      =   ""
                      =   ""
                      =   ""
                      =   "True"
                      =   ""
                      =   ""
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      ControlOrder    =   15
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      EraseBackground =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      IsColorSet      =   0
      Left            =   245
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MyColor         =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   155
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   60
      BehaviorIndex   =   15
   End
   Begin CheckBox chk_font_shadow
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Shadow"
      ControlOrder    =   16
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   245
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   180
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   80
      BehaviorIndex   =   16
   End
   Begin SColorCanvas can_font_shadow
                      =   ""
                      =   ""
                      =   ""
                      =   100
                      =   ""
                      =   ""
                      =   ""
                      =   "True"
                      =   ""
                      =   ""
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      ControlOrder    =   17
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      EraseBackground =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      IsColorSet      =   0
      Left            =   245
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MyColor         =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   200
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   60
      BehaviorIndex   =   17
   End
   Begin CheckBox chk_font_fill
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Fill"
      ControlOrder    =   18
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   245
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   225
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   80
      BehaviorIndex   =   18
   End
   Begin SColorCanvas can_font_fill
                      =   ""
                      =   ""
                      =   ""
                      =   100
                      =   ""
                      =   ""
                      =   ""
                      =   "True"
                      =   ""
                      =   ""
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      ControlOrder    =   19
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      EraseBackground =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      IsColorSet      =   0
      Left            =   245
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MyColor         =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   245
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   60
      BehaviorIndex   =   19
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  BorderFraction = 15
		  
		  App.T.TranslateWindow Me, "font_selection", App.TranslationFonts
		  App.CenterInControlScreen Me
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function Ask(fromFont As FontFace, advancedOptions As Boolean = True) As FontFace
		  Dim c As Color
		  MyFont = fromFont.Clone
		  
		  If MyFont <> Nil Then
		    edt_font_face.Text = MyFont.Name
		    edt_font_size.Text = Str(MyFont.Size)
		    chk_font_bold.Value = MyFont.Bold
		    chk_font_italic.Value = MyFont.Italic
		    chk_font_underline.Value = MyFont.Underline
		    c = MyFont.ForeColor
		    can_font_color.SetColor c
		    c = MyFont.BorderColor
		    can_font_border.SetColor c
		    c = MyFont.ShadowColor
		    can_font_shadow.SetColor c
		    c = MyFont.FillColor
		    can_font_fill.SetColor c
		    chk_font_border.Value = MyFont.Border
		    chk_font_shadow.Value = MyFont.Shadow
		    chk_font_fill.Value = MyFont.Fill
		  End If
		  
		  Dim x As Integer
		  For x = 1 To UBound(App.FontList)
		    lst_font_faces.AddRow App.FontList(x)
		  Next x
		  
		  If Not advancedOptions Then
		    chk_font_border.Visible = False
		    can_font_border.Visible = False
		    chk_font_shadow.Visible = False
		    can_font_shadow.Visible = False
		    chk_font_fill.Visible = False
		    can_font_fill.Visible = False
		  End If
		  
		  ShowModalWithin(MainWindow)
		  
		  Return MyFont
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected BorderFraction As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected MyFont As FontFace
	#tag EndProperty


#tag EndWindowCode

#tag Events edt_font_face
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    
		    if c.TextAvailable then
		      edt_font_face.Text  = c.Text
		      return true
		    end if
		    
		  end if
		  c.close
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  MyFont.Name = Me.Text
		  can_font_preview.SetFont MyFont
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_font_faces
	#tag Event
		Sub Change()
		  edt_font_face.Text = Me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_font_size
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    
		    if c.TextAvailable then
		      edt_font_size.Text  = c.Text
		      return true
		    end if
		    
		  end if
		  c.close
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  MyFont.Size = Val(Me.Text)
		  can_font_preview.SetFont MyFont
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_font_size
	#tag Event
		Sub Change()
		  edt_font_size.Text = lst_font_size.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_font_bold
	#tag Event
		Sub Action()
		  MyFont.Bold = Me.Value
		  can_font_preview.SetFont MyFont
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_font_italic
	#tag Event
		Sub Action()
		  MyFont.Italic = Me.Value
		  can_font_preview.SetFont MyFont
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_font_underline
	#tag Event
		Sub Action()
		  MyFont.Underline = Me.Value
		  can_font_preview.SetFont MyFont
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_ok
	#tag Event
		Sub Action()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_cancel
	#tag Event
		Sub Action()
		  MyFont = Nil
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_font_color
	#tag Event
		Sub Action()
		  Dim c As Color
		  If can_font_color.GetColor(c) Then
		    MyFont.ForeColor = c
		  Else
		    MyFont.ForeColor = RGB(0,0,0)
		  End If
		  
		  can_font_preview.SetFont MyFont
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_font_border
	#tag Event
		Sub Action()
		  MyFont.Border = Me.Value
		  If Me.Value Then
		    can_font_border.Enabled = True
		    can_font_border.SetColor MyFont.BorderColor
		  Else
		    can_font_border.Enabled = False
		    can_font_border.ClearColor
		  End If
		  can_font_preview.SetFont MyFont
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_font_border
	#tag Event
		Sub Action()
		  Dim c As Color
		  If Me.GetColor(c) Then
		    MyFont.BorderColor = c
		  Else
		    MyFont.BorderColor = RGB(0,0,0)
		  End If
		  
		  can_font_preview.SetFont MyFont
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_font_shadow
	#tag Event
		Sub Action()
		  MyFont.Shadow = Me.Value
		  If Me.Value Then
		    can_font_shadow.Enabled = True
		    can_font_shadow.SetColor MyFont.ShadowColor
		  Else
		    can_font_shadow.Enabled = False
		    can_font_shadow.ClearColor
		  End If
		  can_font_preview.SetFont MyFont
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_font_shadow
	#tag Event
		Sub Action()
		  Dim c As Color
		  If can_font_shadow.GetColor(c) Then
		    MyFont.ShadowColor = c
		  Else
		    MyFont.ShadowColor = RGB(0,0,0)
		  End If
		  
		  can_font_preview.SetFont MyFont
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_font_fill
	#tag Event
		Sub Action()
		  MyFont.Fill = Me.Value
		  If Me.Value Then
		    can_font_fill.Enabled = True
		    can_font_fill.SetColor MyFont.FillColor
		  Else
		    can_font_fill.Enabled = False
		    can_font_fill.ClearColor
		  End If
		  can_font_preview.SetFont MyFont
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_font_fill
	#tag Event
		Sub Action()
		  Dim c As Color
		  If can_font_fill.GetColor(c) Then
		    MyFont.FillColor = c
		  Else
		    MyFont.FillColor = RGB(255,255,255)
		  End If
		  
		  can_font_preview.SetFont MyFont
		End Sub
	#tag EndEvent
#tag EndEvents
