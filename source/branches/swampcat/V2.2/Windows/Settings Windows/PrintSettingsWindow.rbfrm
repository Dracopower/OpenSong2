#tag Window
Begin Window PrintSettingsWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   True
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   380
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "Print Settings"
   Visible         =   True
   Width           =   676
   Begin PushButton btn_ok
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   507
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   11.0
      TextUnit        =   0
      Top             =   338
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "&Cancel"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   587
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   11.0
      TextUnit        =   0
      Top             =   338
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin TabPanel tab_main_tabs
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   316
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "Fonts\rLayout\rMargins"
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   11.0
      TextUnit        =   0
      Top             =   10
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   646
      Begin Canvas can_print_fonts
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   284
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_main_tabs"
         Left            =   15
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   35
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   635
         Begin Label lbl_font_title
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   20
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Title:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   92
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   60
         End
         Begin SFontCanvas can_font_title
            AcceptFocus     =   False
            AcceptMouseDown =   true
            AcceptTabs      =   False
            AdvancedOptions =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Left            =   85
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   77
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   160
         End
         Begin Label lbl_font_author
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   20
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Author:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   147
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   60
         End
         Begin SFontCanvas can_font_author
            AcceptFocus     =   False
            AcceptMouseDown =   true
            AcceptTabs      =   False
            AdvancedOptions =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Left            =   85
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   132
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   160
         End
         Begin Label lbl_font_sections
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   254
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Sections:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   92
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   95
         End
         Begin SFontCanvas can_font_sections
            AcceptFocus     =   False
            AcceptMouseDown =   true
            AcceptTabs      =   False
            AdvancedOptions =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Left            =   354
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   7
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   77
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   160
         End
         Begin Label lbl_font_lyrics
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   254
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   18
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Lyrics:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   255
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   95
         End
         Begin SFontCanvas can_font_lyrics
            AcceptFocus     =   False
            AcceptMouseDown =   true
            AcceptTabs      =   False
            AdvancedOptions =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Left            =   354
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   19
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   240
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   160
         End
         Begin Label lbl_font_chords
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   254
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   10
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Chords:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   145
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   95
         End
         Begin SFontCanvas can_font_chords
            AcceptFocus     =   False
            AcceptMouseDown =   true
            AcceptTabs      =   False
            AdvancedOptions =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Left            =   354
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   11
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   130
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   160
         End
         Begin Label lbl_font_capo
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   254
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   14
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Capo Chords:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   200
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   95
         End
         Begin SFontCanvas can_font_capo
            AcceptFocus     =   False
            AcceptMouseDown =   true
            AcceptTabs      =   False
            AdvancedOptions =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Left            =   354
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   15
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   185
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   160
         End
         Begin SFontCanvas can_font_copyright
            AcceptFocus     =   False
            AcceptMouseDown =   true
            AcceptTabs      =   False
            AdvancedOptions =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Left            =   85
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   185
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   160
         End
         Begin Label lbl_font_copyright
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   35
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   20
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Copyright:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   193
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   60
         End
         Begin TextField edt_font_chords_before
            AcceptTabs      =   False
            Alignment       =   3
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   598
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   12
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   129
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   35
         End
         Begin TextField edt_font_chords_after
            AcceptTabs      =   False
            Alignment       =   3
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   598
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   13
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   155
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   35
         End
         Begin TextField edt_font_capo_after
            AcceptTabs      =   False
            Alignment       =   3
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   598
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   17
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   210
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   35
         End
         Begin TextField edt_font_capo_before
            AcceptTabs      =   False
            Alignment       =   3
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   598
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   16
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   184
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   35
         End
         Begin TextField edt_font_lyrics_after
            AcceptTabs      =   False
            Alignment       =   3
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   598
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   21
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   266
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   35
         End
         Begin TextField edt_font_lyrics_before
            AcceptTabs      =   False
            Alignment       =   3
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   598
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   20
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   240
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   35
         End
         Begin TextField edt_font_sections_after
            AcceptTabs      =   False
            Alignment       =   3
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   598
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   9
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   103
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   35
         End
         Begin TextField edt_font_sections_before
            AcceptTabs      =   False
            Alignment       =   3
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   598
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   8
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   77
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   35
         End
         Begin Label lbl_font_spacing
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   521
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   22
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Spacing:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   58
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   112
         End
         Begin Label lbl_font_sections_before
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   521
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   23
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "before:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   80
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   70
         End
         Begin Label lbl_font_chords_before
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   521
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   24
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "before:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   132
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   70
         End
         Begin Label lbl_font_capo_before
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   521
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   25
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "before:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   187
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   70
         End
         Begin Label lbl_font_lyrics_before
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   521
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   26
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "before:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   243
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   70
         End
         Begin Label lbl_font_sections_after
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   521
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   27
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "after:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   106
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   70
         End
         Begin Label lbl_font_chords_after
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   521
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   28
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "after:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   158
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   70
         End
         Begin Label lbl_font_capo_after
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   521
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   29
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "after:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   213
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   70
         End
         Begin Label lbl_font_lyrics_after
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Italic          =   False
            Left            =   521
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   30
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "after:"
            TextAlign       =   2
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   269
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   70
         End
      End
      Begin Canvas can_print_layout
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   284
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_main_tabs"
         Left            =   15
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Top             =   35
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   635
         Begin Label lbl_layout_heading_border_thickness
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_layout"
            Italic          =   False
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Heading Border Thickness:"
            TextAlign       =   0
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   55
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   300
         End
         Begin TextField edt_layout_heading_border_thickness
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_layout"
            Italic          =   False
            Left            =   30
            LimitText       =   4
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   70
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   50
         End
         Begin CheckBox chk_layout_title_in_caps
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Title in CAPS"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_layout"
            Italic          =   False
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   100
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   300
         End
         Begin CheckBox chk_layout_highlight_chorus
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Highlight choruses"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_layout"
            Italic          =   False
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   4
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   122
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   209
         End
      End
      Begin Canvas can_print_margins
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   245
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_main_tabs"
         Left            =   15
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         Top             =   35
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   635
         Begin Label lbl_page_top
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_margins"
            Italic          =   False
            Left            =   280
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Top:"
            TextAlign       =   1
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   46
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   105
         End
         Begin SEditFieldNumeric edt_page_top
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   True
            BackColor       =   
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            EnforceRange    =   False
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_print_margins"
            Italic          =   False
            Left            =   310
            LimitText       =   0
            LineHeight      =   0.0
            LineSpacing     =   1.0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Maximum         =   431.0
            Minimum         =   4310000.0
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            SignalRangeErrors=   False
            Styled          =   False
            TabIndex        =   1
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   61
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   45
         End
         Begin Label lbl_page_left
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_margins"
            Italic          =   False
            Left            =   175
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   2
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Left:"
            TextAlign       =   1
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   136
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   95
         End
         Begin SEditFieldNumeric edt_page_left
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   True
            BackColor       =   
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            EnforceRange    =   False
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_print_margins"
            Italic          =   False
            Left            =   200
            LimitText       =   0
            LineHeight      =   0.0
            LineSpacing     =   1.0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Maximum         =   4310000.0
            Minimum         =   4310000.0
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            SignalRangeErrors=   False
            Styled          =   False
            TabIndex        =   3
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   151
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   45
         End
         Begin Label lbl_page_bottom
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_margins"
            Italic          =   False
            Left            =   280
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   4
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Bottom:"
            TextAlign       =   1
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   241
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   105
         End
         Begin SEditFieldNumeric edt_page_bottom
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   True
            BackColor       =   
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            EnforceRange    =   False
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_print_margins"
            Italic          =   False
            Left            =   310
            LimitText       =   0
            LineHeight      =   0.0
            LineSpacing     =   1.0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Maximum         =   4310000.0
            Minimum         =   4310000.0
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            SignalRangeErrors=   False
            Styled          =   False
            TabIndex        =   5
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   256
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   45
         End
         Begin Label lbl_page_right
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_margins"
            Italic          =   False
            Left            =   395
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   6
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Right:"
            TextAlign       =   1
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   138
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   95
         End
         Begin SEditFieldNumeric edt_page_right
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   True
            BackColor       =   
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            EnforceRange    =   False
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_print_margins"
            Italic          =   False
            Left            =   420
            LimitText       =   0
            LineHeight      =   0.0
            LineSpacing     =   1.0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Maximum         =   4310000.0
            Minimum         =   4310000.0
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            SignalRangeErrors=   False
            Styled          =   False
            TabIndex        =   7
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   151
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   45
         End
         Begin Rectangle nil_page
            AutoDeactivate  =   True
            BorderWidth     =   1
            BottomRightColor=   
            Enabled         =   True
            FillColor       =   
            Height          =   150
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_margins"
            Left            =   275
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   8
            TabPanelIndex   =   3
            TabStop         =   True
            Top             =   86
            TopLeftColor    =   
            Visible         =   True
            Width           =   115
            Begin Label lbl_page_width
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   15
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "nil_page"
               Italic          =   False
               Left            =   280
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   0
               TabPanelIndex   =   3
               TabStop         =   True
               Text            =   "Width:"
               TextAlign       =   1
               TextColor       =   
               TextFont        =   "Arial"
               TextSize        =   10.0
               TextUnit        =   0
               Top             =   121
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   105
            End
            Begin SEditFieldNumeric edt_page_width
               AcceptTabs      =   False
               Alignment       =   0
               AutoDeactivate  =   True
               AutomaticallyCheckSpelling=   True
               BackColor       =   
               Bold            =   False
               Border          =   True
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               EnforceRange    =   False
               Format          =   ""
               Height          =   20
               HelpTag         =   ""
               HideSelection   =   True
               Index           =   -2147483648
               InitialParent   =   "nil_page"
               Italic          =   False
               Left            =   310
               LimitText       =   0
               LineHeight      =   0.0
               LineSpacing     =   1.0
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Mask            =   ""
               Maximum         =   4310000.0
               Minimum         =   4310000.0
               Multiline       =   False
               ReadOnly        =   False
               Scope           =   0
               ScrollbarHorizontal=   False
               ScrollbarVertical=   True
               SignalRangeErrors=   False
               Styled          =   False
               TabIndex        =   1
               TabPanelIndex   =   3
               TabStop         =   True
               Text            =   ""
               TextColor       =   
               TextFont        =   "Arial"
               TextSize        =   10.0
               TextUnit        =   0
               Top             =   136
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   45
            End
            Begin Label lbl_page_height
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   15
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "nil_page"
               Italic          =   False
               Left            =   280
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   2
               TabPanelIndex   =   3
               TabStop         =   True
               Text            =   "Height:"
               TextAlign       =   1
               TextColor       =   
               TextFont        =   "Arial"
               TextSize        =   10.0
               TextUnit        =   0
               Top             =   166
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   105
            End
            Begin SEditFieldNumeric edt_page_height
               AcceptTabs      =   False
               Alignment       =   0
               AutoDeactivate  =   True
               AutomaticallyCheckSpelling=   True
               BackColor       =   
               Bold            =   False
               Border          =   True
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               EnforceRange    =   False
               Format          =   ""
               Height          =   20
               HelpTag         =   ""
               HideSelection   =   True
               Index           =   -2147483648
               InitialParent   =   "nil_page"
               Italic          =   False
               Left            =   310
               LimitText       =   0
               LineHeight      =   0.0
               LineSpacing     =   1.0
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Mask            =   ""
               Maximum         =   4310000.0
               Minimum         =   4310000.0
               Multiline       =   False
               ReadOnly        =   False
               Scope           =   0
               ScrollbarHorizontal=   False
               ScrollbarVertical=   True
               SignalRangeErrors=   False
               Styled          =   False
               TabIndex        =   3
               TabPanelIndex   =   3
               TabStop         =   True
               Text            =   ""
               TextColor       =   
               TextFont        =   "Arial"
               TextSize        =   10.0
               TextUnit        =   0
               Top             =   181
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   45
            End
         End
      End
      Begin GroupBox grp_page_units
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Units"
         Enabled         =   True
         Height          =   78
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_main_tabs"
         Italic          =   False
         Left            =   38
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   46
         Underline       =   False
         Visible         =   True
         Width           =   150
         Begin RadioButton rad_page_inches
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Inches"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_page_units"
            Italic          =   False
            Left            =   54
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   70
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   118
         End
         Begin RadioButton rad_page_cm
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "cm"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_page_units"
            Italic          =   False
            Left            =   54
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   12.0
            TextUnit        =   0
            Top             =   94
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   118
         End
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  
		  Dim PS As XmlElement
		  Dim Setup As PrinterSetup
		  
		  PS = App.MyPrintSettings.DocumentElement
		  Setup = App.GetPrinterSetup(False, Nil)
		  
		  ValuesInPoints = SmartML.GetValueB(PS, "page/@points", False)
		  
		  rad_page_inches.Value = SmartML.GetValueB(PS, "page/@inches", True, True)
		  rad_page_cm.Value = Not rad_page_inches.Value
		  SetupMarginMinimums(Setup, rad_page_inches.Value)
		  
		  If ValuesInPoints Then
		    If rad_page_inches.Value Then
		      edt_page_top.SetValue  Max(PointsToInches(SmartML.GetValueN(PS, "page/@top")), edt_page_top.Minimum)
		      edt_page_bottom.SetValue  Max(PointsToInches(SmartML.GetValueN(PS, "page/@bottom")), edt_page_bottom.Minimum)
		      edt_page_left.SetValue  Max(PointsToInches(SmartML.GetValueN(PS, "page/@left")), edt_page_left.Minimum)
		      edt_page_right.SetValue  Max(PointsToInches(SmartML.GetValueN(PS, "page/@right")), edt_page_right.Minimum)
		      
		      If Setup <> Nil Then
		        edt_page_width.SetValue Setup.PageWidth / Setup.HorizontalResolution
		        edt_page_height.SetValue Setup.PageHeight / Setup.VerticalResolution
		      Else
		        edt_page_width.SetValue PointsToInches(SmartML.GetValueN(PS, "page/@width"))
		        edt_page_height.SetValue PointsToInches(SmartML.GetValueN(PS, "page/@height"))
		      End If
		      
		    Else
		      edt_page_top.SetValue  Max(PointsToCM(SmartML.GetValueN(PS, "page/@top")), edt_page_top.Minimum)
		      edt_page_bottom.SetValue  Max(PointsToCM(SmartML.GetValueN(PS, "page/@bottom")), edt_page_bottom.Minimum)
		      edt_page_left.SetValue  Max(PointsToCM(SmartML.GetValueN(PS, "page/@left")), edt_page_left.Minimum)
		      edt_page_right.SetValue  Max(PointsToCM(SmartML.GetValueN(PS, "page/@right")), edt_page_right.Minimum)
		      
		      If Setup <> Nil Then
		        edt_page_width.SetValue PointsToCM(InchesToPoints(Setup.PageWidth / Setup.HorizontalResolution))
		        edt_page_height.SetValue PointsToCM(InchesToPoints(Setup.PageHeight / Setup.VerticalResolution))
		      Else
		        edt_page_width.SetValue PointsToCM(SmartML.GetValueN(PS, "page/@width"))
		        edt_page_height.SetValue PointsToCM(SmartML.GetValueN(PS, "page/@height"))
		      End If
		    End If
		  Else
		    edt_page_top.SetValue  SmartML.GetValueN(PS, "page/@top")
		    edt_page_bottom.SetValue  SmartML.GetValueN(PS, "page/@bottom")
		    edt_page_left.SetValue  SmartML.GetValueN(PS, "page/@left")
		    edt_page_right.SetValue  SmartML.GetValueN(PS, "page/@right")
		    If Setup <> Nil Then
		      edt_page_width.SetValue Setup.PageWidth / Setup.HorizontalResolution
		      edt_page_height.SetValue Setup.PageHeight / Setup.VerticalResolution
		    Else
		      edt_page_width.SetValue SmartML.GetValueN(PS, "page/@width")
		      edt_page_height.SetValue SmartML.GetValueN(PS, "page/@height")
		    End If
		    rad_page_inches.Value = True
		  End If
		  edt_page_top.EnforceRange = True
		  edt_page_left.EnforceRange = True
		  edt_page_right.EnforceRange = True
		  edt_page_bottom.EnforceRange = True
		  Initializing = False
		  
		  // Mac and Windows use PrinterSetup for page size.
		  #If TargetMacOS Or TargetWin32
		    edt_page_width.ReadOnly = True
		    edt_page_height.ReadOnly = True
		  #Else
		    edt_page_width.ReadOnly = False
		    edt_page_height.ReadOnly = False
		  #Endif
		  
		  can_font_title.SetFont SmartML.GetValueF(PS, "title")
		  can_font_author.SetFont SmartML.GetValueF(PS, "author")
		  can_font_sections.SetFont SmartML.GetValueF(PS, "heading")
		  can_font_lyrics.SetFont SmartML.GetValueF(PS, "lyrics")
		  can_font_chords.SetFont SmartML.GetValueF(PS, "chords")
		  can_font_capo.SetFont SmartML.GetValueF(PS, "capo_chords")
		  can_font_copyright.SetFont SmartML.GetValueF(PS, "copyright")
		  
		  chk_layout_title_in_caps.Value = SmartML.GetValueB(PS, "style/@caps_song_title")
		  edt_layout_heading_border_thickness.Text = SmartML.GetValue(PS, "style/@border_thickness")
		  chk_layout_highlight_chorus.Value = SmartML.GetValueB(PS, "style/@highlight_chorus", False, True)
		  
		  edt_font_lyrics_before.Text = CStr(SmartML.GetValueN(PS, "layout/lyrics/@space_before"))
		  edt_font_lyrics_after.Text = CStr(SmartML.GetValueN(PS, "layout/lyrics/@space_after"))
		  edt_font_chords_before.Text = CStr(SmartML.GetValueN(PS, "layout/chords/@space_before"))
		  edt_font_chords_after.Text = CStr(SmartML.GetValueN(PS, "layout/chords/@space_after"))
		  edt_font_capo_before.Text = CStr(SmartML.GetValueN(PS, "layout/capo/@space_before"))
		  edt_font_capo_after.Text = CStr(SmartML.GetValueN(PS, "layout/capo/@space_after"))
		  edt_font_sections_before.Text = CStr(SmartML.GetValueN(PS, "layout/sections/@space_before"))
		  edt_font_sections_after.Text = CStr(SmartML.GetValueN(PS, "layout/sections/@space_after"))
		  
		  App.T.TranslateWindow Me, "print_settings", App.TranslationFonts
		  App.CenterInControlScreen Me
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor()
		  Initializing = True // This needs to happen before the Open event EMP 06 Feb 06
		  // call the Window constructor, or Open events will not fire
		  Super.Window()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetupMarginMinimums(Setup As PrinterSetup, UseInches As Boolean)
		  
		  If Setup <> Nil Then
		    If UseInches Then
		      edt_page_top.Minimum = Abs(Setup.PageTop) / Setup.VerticalResolution
		      edt_page_bottom.Minimum = (Setup.PageHeight - Setup.Height - Abs(Setup.PageTop)) / Setup.VerticalResolution
		      edt_page_left.Minimum = Abs(Setup.PageLeft) / Setup.HorizontalResolution
		      edt_page_right.Minimum = (Setup.PageWidth - Setup.Width - Abs(Setup.PageLeft)) / Setup.HorizontalResolution
		      
		      edt_page_top.Maximum = (Setup.Height + Abs(Setup.PageTop)) / Setup.VerticalResolution
		      edt_page_bottom.Maximum = (Setup.PageHeight - Abs(Setup.PageTop)) / Setup.VerticalResolution
		      edt_page_left.Maximum = (Setup.Width + Abs(Setup.PageLeft)) / Setup.HorizontalResolution
		      edt_page_right.Maximum = (Setup.Width - Abs(Setup.PageLeft)) / Setup.HorizontalResolution
		    Else
		      edt_page_top.Minimum = PointsToCM(InchesToPoints(Abs(Setup.PageTop) / Setup.VerticalResolution))
		      edt_page_bottom.Minimum = PointsToCM(InchesToPoints((Setup.PageHeight - Setup.Height - Abs(Setup.PageTop)) / Setup.VerticalResolution))
		      edt_page_left.Minimum = PointsToCM(InchesToPoints(Abs(Setup.PageLeft) / Setup.HorizontalResolution))
		      edt_page_right.Minimum = PointsToCM(InchesToPoints((Setup.PageWidth - Setup.Width - Abs(Setup.PageLeft)) / Setup.HorizontalResolution))
		      
		      edt_page_top.Maximum = PointsToCM(InchesToPoints((Setup.Height + Abs(Setup.PageTop)) / Setup.VerticalResolution))
		      edt_page_bottom.Maximum = PointsToCM(InchesToPoints((Setup.PageHeight - Abs(Setup.PageTop)) / Setup.VerticalResolution))
		      edt_page_left.Maximum = PointsToCM(InchesToPoints((Setup.Width + Abs(Setup.PageLeft)) / Setup.HorizontalResolution))
		      edt_page_right.Maximum = PointsToCM(InchesToPoints((Setup.Width - Abs(Setup.PageLeft)) / Setup.HorizontalResolution))
		      
		    End If
		  Else // Setup = Nil
		    edt_page_top.Minimum = 0
		    edt_page_bottom.Minimum = 0
		    edt_page_left.Minimum = 0
		    edt_page_right.Minimum = 0
		    
		    edt_page_top.Maximum = 1.0e100
		    edt_page_left.Maximum = 1.0e100
		    edt_page_bottom.Maximum = 1.0e100
		    edt_page_right.Maximum = 1.0e100
		  End If // Setup <> Nil
		  
		  edt_page_top.EnforceRange = True
		  edt_page_right.EnforceRange = True
		  edt_page_bottom.EnforceRange = True
		  edt_page_left.EnforceRange = True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ToCM(e As SEditFieldNumeric)
		  e.SetValue PointsToCM(InchesToPoints(e.Value))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ToInches(e As SEditFieldNumeric)
		  e.SetValue PointsToInches(CMtoPoints(e.Value))
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected Initializing As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			This flag indicates if the margin values in the PrintSettings XML are in points.
			
			This allows for a smooth transition from storing in inches or cm to storing in
			points, and therefore being somewhat more precise and in line with the rest
			of the page calculations since the base unit of measure for the Graphics object
			is a point.
			
			See documentation in the OpenSongUtils module for the conversion factors used.
		#tag EndNote
		Protected ValuesInPoints As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events btn_ok
	#tag Event
		Sub Action()
		  Dim PS As XmlElement
		  
		  PS = App.MyPrintSettings.DocumentElement
		  
		  SmartML.SetValueF(PS, "title", can_font_title.GetFont)
		  SmartML.SetValueF(PS, "author", can_font_author.GetFont)
		  SmartML.SetValueF(PS, "heading", can_font_sections.GetFont)
		  SmartML.SetValueF(PS, "lyrics", can_font_lyrics.GetFont)
		  SmartML.SetValueF(PS, "chords", can_font_chords.GetFont)
		  SmartML.SetValueF(PS, "capo_chords", can_font_capo.GetFont)
		  SmartML.SetValueF(PS, "copyright", can_font_copyright.GetFont)
		  
		  SmartML.SetValueB(PS, "page/@inches", rad_page_inches.Value)
		  SmartML.SetValueB(PS, "page/@points", True) // Flags unit values in the settings as being in points rather than in/cm
		  
		  If rad_page_inches.Value Then
		    
		    SmartML.SetValueN(PS, "page/@top", InchesToPoints(edt_page_top.Value))
		    SmartML.SetValueN(PS, "page/@bottom", InchesToPoints(edt_page_bottom.Value))
		    SmartML.SetValueN(PS, "page/@left", InchesToPoints(edt_page_left.Value))
		    SmartML.SetValueN(PS, "page/@right", InchesToPoints(edt_page_right.Value))
		    
		    SmartML.SetValueN(PS, "page/@width", InchesToPoints(edt_page_width.Value))
		    SmartML.SetValueN(PS, "page/@height", InchesToPoints(edt_page_height.Value))
		    
		  Else
		    
		    SmartML.SetValueN(PS, "page/@top", CMtoPoints(edt_page_top.Value))
		    SmartML.SetValueN(PS, "page/@bottom", CMtoPoints(edt_page_bottom.Value))
		    SmartML.SetValueN(PS, "page/@left", CMtoPoints(edt_page_left.Value))
		    SmartML.SetValueN(PS, "page/@right", CMtoPoints(edt_page_right.Value))
		    
		    SmartML.SetValueN(PS, "page/@width", CMtoPoints(edt_page_width.Value))
		    SmartML.SetValueN(PS, "page/@height", CMtoPoints(edt_page_height.Value))
		    
		  End If
		  
		  SmartML.SetValueB(PS, "style/@caps_song_title", chk_layout_title_in_caps.Value)
		  SmartML.SetValue(PS, "style/@border_thickness", edt_layout_heading_border_thickness.Text)
		  SmartML.SetValueB(PS, "style/@highlight_chorus", chk_layout_highlight_chorus.Value)
		  
		  SmartML.SetValueN(PS, "layout/lyrics/@space_before", CDbl(edt_font_lyrics_before.Text))
		  SmartML.SetValueN(PS, "layout/lyrics/@space_after", CDbl(edt_font_lyrics_after.Text))
		  SmartML.SetValueN(PS, "layout/chords/@space_before", CDbl(edt_font_chords_before.Text))
		  SmartML.SetValueN(PS, "layout/chords/@space_after", CDbl(edt_font_chords_after.Text))
		  SmartML.SetValueN(PS, "layout/capo/@space_before", CDbl(edt_font_capo_before.Text))
		  SmartML.SetValueN(PS, "layout/capo/@space_after", CDbl(edt_font_capo_after.Text))
		  SmartML.SetValueN(PS, "layout/sections/@space_before", CDbl(edt_font_sections_before.Text))
		  SmartML.SetValueN(PS, "layout/sections/@space_after", CDbl(edt_font_sections_after.Text))
		  
		  //++
		  // Bug 1462055: Save settings on dialog exit
		  //
		  If App.CheckDocumentFolders(App.SETTINGS_FOLDER) <> App.NO_FOLDER Then
		    If Not SmartML.XDocToFile(App.MyPrintSettings, App.DocsFolder.Child(App.STR_SETTINGS).Child("PrintSettings")) Then SmartML.DisplayError
		  Else
		    If App.DocsFolder <> Nil Then
		      MsgBox App.T.Translate("errors/create_settings_folder",  App.DocsFolder.NativePath + App.STR_SETTINGS)
		    Else
		      MsgBox App.T.Translate("errors/no_docs_folder", "")
		    End If
		  End If
		  //--
		  
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_cancel
	#tag Event
		Sub Action()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_layout_heading_border_thickness
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    
		    if c.TextAvailable then
		      edt_layout_heading_border_thickness.Text  = Left(c.Text, 4)
		      return true
		    end if
		    
		  end if
		  c.close
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events edt_page_top
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    
		    if c.TextAvailable then
		      edt_page_top.Text  = c.Text
		      return true
		    end if
		    
		  end if
		  c.close
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events edt_page_left
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    
		    if c.TextAvailable then
		      edt_page_left.Text  = c.Text
		      return true
		    end if
		    
		  end if
		  c.close
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events edt_page_bottom
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    
		    if c.TextAvailable then
		      edt_page_bottom.Text  = c.Text
		      return true
		    end if
		    
		  end if
		  c.close
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events edt_page_right
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    
		    if c.TextAvailable then
		      edt_page_right.Text  = c.Text
		      return true
		    end if
		    
		  end if
		  c.close
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events edt_page_width
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    
		    if c.TextAvailable then
		      edt_page_width.Text  = c.Text
		      return true
		    end if
		    
		  end if
		  c.close
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events edt_page_height
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    
		    if c.TextAvailable then
		      edt_page_height.Text  = c.Text
		      return true
		    end if
		    
		  end if
		  c.close
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events rad_page_inches
	#tag Event
		Sub Action()
		  //
		  // Switch to inches.  Use 2.54cm to the inch as the conversion factor
		  //
		  // Ed Palmer, 6 Feb 2006
		  //
		  If Initializing Then Return
		  ToInches(edt_page_top)
		  ToInches(edt_page_left)
		  ToInches(edt_page_right)
		  ToInches(edt_page_bottom)
		  ToInches(edt_page_height)
		  ToInches(edt_page_width)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_page_cm
	#tag Event
		Sub Action()
		  //
		  // Switch displayed measurements to centimeters
		  //
		  If Initializing Then Return // wait until everything is set up
		  ToCM(edt_page_top)
		  ToCM(edt_page_left)
		  ToCM(edt_page_right)
		  ToCM(edt_page_bottom)
		  ToCM(edt_page_height)
		  ToCM(edt_page_width)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior