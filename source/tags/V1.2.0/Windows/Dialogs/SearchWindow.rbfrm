#tag Window
Begin Window SearchWindow
   BackColor       =   16777215
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   1
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   409
   ImplicitInstance=   "True"
   LiveResize      =   "False"
   MacProcID       =   1046
   MaxHeight       =   32000
   MaximizeButton  =   "True"
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   "True"
   MinHeight       =   400
   MinimizeButton  =   "True"
   MinWidth        =   477
   Placement       =   0
   Resizeable      =   "True"
   Title           =   "Search"
   Visible         =   "True"
   Width           =   477
   Begin PushButton btn_search_ok
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Ok"
      ControlOrder    =   0
      Default         =   "False"
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   311
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   367
      Underline       =   "False"
      Visible         =   "True"
      Width           =   67
      BehaviorIndex   =   3
   End
   Begin PushButton btn_search_cancel
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "Cancel"
      ControlOrder    =   1
      Default         =   "False"
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   390
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   367
      Underline       =   "False"
      Visible         =   "True"
      Width           =   67
      BehaviorIndex   =   4
   End
   Begin SEditField edt_search
      AcceptTabs      =   "False"
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   16777215
      Bold            =   "False"
      Border          =   "True"
      ControlOrder    =   2
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   74
      LimitText       =   0
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      Mask            =   ""
      Multiline       =   "False"
      Password        =   "False"
      ReadOnly        =   "False"
      ScrollbarHorizontal=   "False"
      ScrollbarVertical=   "True"
      Styled          =   "False"
      TabPanelIndex   =   0
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   114
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   284
      BehaviorIndex   =   0
   End
   Begin PushButton btn_search_search
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Search"
      ControlOrder    =   3
      Default         =   "True"
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   373
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   114
      Underline       =   "False"
      Visible         =   "True"
      Width           =   66
      BehaviorIndex   =   1
   End
   Begin ListBox lst_result
      AutoDeactivate  =   "True"
      AutoHideScrollbars=   "True"
      Bold            =   "False"
      ColumnCount     =   2
      ColumnsResizable=   "False"
      ColumnWidths    =   "100, 350%"
      ControlOrder    =   4
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   "True"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   "True"
      HeadingIndex    =   -1
      Height          =   186
      HelpTag         =   ""
      Hierarchical    =   "False"
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   "False"
      Left            =   12
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      RequiresSelection=   ""
      ScrollbarHorizontal=   "True"
      ScrollBarVertical=   "True"
      SelectionType   =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   165
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   449
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      BehaviorIndex   =   2
   End
   Begin GroupBox grp_search_match
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Match:"
      ControlOrder    =   5
      Enabled         =   "True"
      Height          =   83
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   74
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   14
      Underline       =   "False"
      Visible         =   "True"
      Width           =   166
      BehaviorIndex   =   5
      Begin RadioButton rad_match_exact
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Exact word"
         ControlOrder    =   6
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_match"
         Italic          =   "False"
         Left            =   85
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   36
         Underline       =   "False"
         Value           =   "True"
         Visible         =   "True"
         Width           =   139
         BehaviorIndex   =   6
      End
      Begin RadioButton rad_match_begin
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Begins with"
         ControlOrder    =   7
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_match"
         Italic          =   "False"
         Left            =   85
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   63
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   139
         BehaviorIndex   =   7
      End
   End
   Begin GroupBox grp_search_words
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Verse must have:"
      ControlOrder    =   8
      Enabled         =   "True"
      Height          =   83
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   260
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   14
      Underline       =   "False"
      Visible         =   "True"
      Width           =   176
      BehaviorIndex   =   9
      Begin RadioButton rad_words_any
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Any word"
         ControlOrder    =   9
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_words"
         Italic          =   "False"
         Left            =   276
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   36
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   105
         BehaviorIndex   =   10
      End
      Begin RadioButton rad_words_all
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "All words"
         ControlOrder    =   10
         Enabled         =   "True"
         Height          =   19
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_words"
         Italic          =   "False"
         Left            =   276
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   64
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   105
         BehaviorIndex   =   11
      End
   End
   Begin StaticText lbl_search_example
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   11
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   46
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "True"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "To search for an exact phrase enclose it in double quotes, like ""Simon Peter"""
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   144
      Underline       =   "False"
      Visible         =   "True"
      Width           =   373
      BehaviorIndex   =   8
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  App.CenterInControlScreen Self
		  '++JRC
		  App.T.TranslateWindow Me, "scripture_search", App.TranslationFonts
		  '--
		  rad_match_exact.Value = True
		  rad_words_all.Value = True
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  HS.Resize
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Function combineResults(main() as SearchResult, add() as String) As SearchResult()
		  'method takes two sorted lists and combines them
		  Dim returnVal(), temp as SearchResult
		  Dim x,y, comp as Integer
		  
		  
		  'since both lists are sorted all you have to do is combine them
		  while x<= UBound(main) AND y<= UBound(add)
		    
		    temp= new SearchResult(add(y))
		    
		    comp= main(x).compareTo(temp)
		    
		    if comp=0 then
		      main(x).value= main(x).value+temp.value
		      
		      returnVal.Append(main(x))
		      
		      x=x+1
		      y=y+1
		    elseif comp<0 then
		      if rad_words_any.Value then
		        returnVal.Append(main(x))
		      end if
		      
		      x=x+1
		    else
		      if rad_words_any.Value then
		        returnVal.Append(temp)
		      end if
		      
		      y=y+1
		    end if
		    
		  wend
		  
		  if rad_words_any.Value then
		    while x<=UBound(main)
		      returnVal.Append(main(x))
		      x=x+1
		    wend
		    
		    while y<= UBound(add)
		      
		      temp= new SearchResult(add(y))
		      
		      returnVal.Append(temp)
		      y=y+1
		    wend
		  end if
		  
		  return returnVal
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  HS = New HalfSizer(Self)
		  // call the Window constructor, or Open events will not fire
		  Super.Window()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function mergeSort(list() as SearchResult, leftIndex as Integer, rightIndex as Integer) As SearchResult()
		  Dim left(), right(), returnVal() as SearchResult
		  Dim mid, x, y as Integer
		  
		  'break list into smaller parts
		  if rightIndex-leftIndex =0 then
		    returnVal.Append(list(leftIndex))
		    return returnVal
		  elseif rightIndex<leftIndex then
		    return returnVal
		  end if
		  
		  mid= leftIndex+ (rightIndex-leftIndex)/2
		  
		  'sort smaller lists
		  left= mergeSort(list, leftIndex, mid)
		  right= mergeSort(list, mid+1, rightIndex)
		  
		  'combine lists back together
		  while x<= UBound(left) AND y<= UBound(right)
		    
		    if left(x).value= right(y).value then
		      
		      returnVal.Append(left(x))
		      
		      x=x+1
		    elseif left(x).value > right(y).value then
		      
		      returnVal.Append(left(x))
		      
		      x=x+1
		    else
		      returnVal.Append(right(y))
		      
		      y=y+1
		    end if
		    
		  wend
		  
		  while x<=UBound(left)
		    returnVal.Append(left(x))
		    x=x+1
		  wend
		  
		  while y<= UBound(right)
		    returnVal.Append(right(y))
		    y=y+1
		  wend
		  
		  
		  return returnVal
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub search()
		  Dim words(), results(), verse(),  phrase, searchString as String
		  Dim x, y as Integer
		  Dim  temp As SearchResult
		  Dim reg as RegEx
		  Dim found as Boolean
		  
		  'used to tell the difference between list being empty b/c we haven't searched for any words yet and we have searched for words, but haven't found any matches
		  found=false
		  Self.MouseCursor = WatchCursor
		  'get user input
		  searchString= edt_search.Text
		  
		  'remove old search results
		  lst_result.DeleteAllRows
		  Redim resultList(-1)
		  
		  'used to remove puncuation
		  reg= New RegEx
		  reg.SearchPattern= "[^a-zA-z0-9\s]+"
		  reg.ReplacementPattern=""
		  reg.Options.ReplaceAllMatches=true
		  
		  
		  'get phrases (things in double quotes)
		  for x=2 to CountFields(searchString, Chr(34))
		    phrase= Trim(NthField(searchString, Chr(34), x))
		    
		    'remove from main searchString
		    searchString= ReplaceAll(searchString, phrase, "")
		    
		    'search for first word in phrase that is in index
		    y=1
		    do until y> CountFields(phrase, " ") Or Bible(bibleToSearch).validSearch(NthField(phrase, " ", y))=true
		      y=y+1
		      
		    loop
		    
		    if (y<=CountFields(phrase, " ")) then
		      
		      
		      results= Bible(bibleToSearch).search(NthField(phrase, " ", y), false)
		      
		      'remove results that don't contain the entire phrase
		      for y=0 to UBound(results)
		        temp= new SearchResult(results(y))
		        verse= Bible(bibleToSearch).GetPassage(Bible(bibleToSearch).GetBookName(temp.book), Str(temp.chapter), Str(temp.verse), Str(temp.verse))
		        
		        'remove puncuation
		        verse(1)= reg.Replace(verse(1))
		        
		        if InStr(verse(1), phrase)=0 then
		          results.Remove(y)
		          y=y-1
		        end if
		      next y
		      
		      if (UBound(results)>=0) then
		        
		        'add matches to list
		        if (rad_words_all.value AND found=false) then
		          for y=0 to UBound(results)
		            resultList.Append(new SearchResult(Val(Nthfield(results(y), " ", 1)), Val(Nthfield(results(y), " ", 2)), Val(Nthfield(results(y), " ", 3))))
		          next y
		        else
		          resultList= combineResults(resultList, results)
		        end if
		        
		        x=x+1
		        found=true
		      end if
		      
		    end if
		  next x
		  
		  'remove puncuation
		  searchString= reg.Replace(searchString)
		  
		  'get individual words
		  words= searchString.split(" ")
		  
		  'remove words that aren't indexed
		  for x=0 to UBound(words)
		    if Bible(bibleToSearch).validSearch(words(x))=false OR Len(words(x))<1 then
		      words.Remove(x)
		      x=x-1
		    end if
		  next x
		  
		  
		  if UBound(words) >= 0 then
		    
		    'find the word
		    results= Bible(bibleToSearch).search(words(0), rad_match_begin.value)
		    
		    if (found=false) then
		      for x=0 to UBound(results)
		        resultList.Append(new SearchResult(Val(Nthfield(results(x), " ", 1)), Val(Nthfield(results(x), " ", 2)), Val(Nthfield(results(x), " ", 3))))
		      next x
		      
		    else
		      resultList= combineResults(resultList, results)
		    end if
		    
		    for x=1 to UBound(words)
		      
		      'find the word
		      results= Bible(bibleToSearch).search(words(x), rad_match_begin.value)
		      
		      resultList= combineResults(resultList, results)
		      
		    next x
		    
		  end if
		  
		  'sort by priority
		  resultList= mergeSort(resultList, 0, UBound(resultList))
		  
		  'add results to list
		  for x=0 to UBound(resultList)
		    temp = resultList(x)
		    verse= bibleToSearch.GetPassage(temp.book, temp.chapter, temp.verse, temp.verse, False)
		    
		    lst_result.AddRow(bibleToSearch.GetCitation(temp.book, temp.chapter, temp.verse))
		    lst_result.Cell(x, 1)= Join(verse, "/")
		  next x
		  If x > 0 Then
		    lst_result.ListIndex = 0
		    lst_result.SetFocus
		  End If
		  Self.MouseCursor = Nil
		Catch ex
		  MsgBox "SearchWindow.Search: " + ex.message + ":" + str(ex.errornumber)
		  Self.MouseCursor = Nil
		  Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoSearch(controller As ScripturePickerController)
		  controllerObject = controller
		  bibleToSearch = controller.CurrentBible
		  If edt_search.Text <> "" Then search // This updates everything to account for possible changes elsewhere
		  Show
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SelectResult()
		  if lst_result.ListIndex > -1 Then
		    if controllerObject <> Nil Then
		      if UBound(resultList) >= lst_result.ListIndex Then
		        controllerObject.SearchComplete(Self, resultList(lst_result.ListIndex))
		      end if
		    end if
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected HS As HalfSizer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected controllerObject As ScripturePickerController
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected bibleToSearch As iBible
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected resultList() As SearchResult
	#tag EndProperty


#tag EndWindowCode

#tag Bindings
	#tag BeginBinding
		SourceItem = lst_result
		DestinationItem = btn_search_ok
		ItemType = enablingBinder
		ItemDescription = Enable btn_search_ok when lst_result has a selection
		SourceBindData = getSelectionProvider
		SourceData = 1
	#tag EndBinding
	#tag BeginBinding
		SourceItem = edt_search
		DestinationItem = btn_search_search
		ItemType = bindEditFieldAndPushButton
		ItemDescription = Enable btn_search_search when text is in edt_search
	#tag EndBinding
#tag EndBindings
#tag Events btn_search_ok
	#tag Event
		Sub Action()
		  SelectResult
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_search_cancel
	#tag Event
		Sub Action()
		  
		  close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_search
	#tag Event
		Sub GotFocus()
		  btn_search_search.Default = Me.Text <> ""
		  btn_search_ok.Default = Not btn_search_search.Default
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  btn_search_search.Enabled = False
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  btn_search_search.Enabled = Me.Text <> ""
		  btn_search_search.Default = Me.Text <> ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_search_search
	#tag Event
		Sub Action()
		  search
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_result
	#tag Event
		Sub GotFocus()
		  btn_search_search.default=false
		  btn_search_ok.default=true
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  SelectResult
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events grp_search_match
	#tag Event
		Sub Open()
		  If HS <> Nil Then HS.AddWidth Me, .5
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_match_exact
	#tag Event
		Sub GotFocus()
		  btn_search_search.Default = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_match_begin
	#tag Event
		Sub GotFocus()
		  btn_search_search.Default = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events grp_search_words
	#tag Event
		Sub Open()
		  If HS <> Nil Then HS.AddLeftWidth Me, .5, .5
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_words_any
	#tag Event
		Sub GotFocus()
		  btn_search_search.Default = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_words_all
	#tag Event
		Sub GotFocus()
		  btn_search_search.Default = True
		End Sub
	#tag EndEvent
#tag EndEvents
