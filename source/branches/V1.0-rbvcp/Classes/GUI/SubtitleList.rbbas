#tag Class
Protected Class SubtitleList
Inherits Listbox
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  Dim Status As String
		  
		  If Me.CellCheck(row, 1) Then Status = "Checked" Else Status = "Not Checked"
		  App.DebugWriter.Write "In SubtitleList::CellClick: (" + str(row) + ","+ str(column) + "), old state was " + status
		  Return False
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  SetupList
		  Open
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function GetSelectedOptions() As String
		  //++EMP 12/02
		  // Build the subtitle options
		  Dim subtitles As String = ""
		  Dim i As Integer
		  For i = 0 to ListCount - 1
		    If CellCheck(i, 1) Then 
		      If Len(subtitles) > 0 then subtitles = subtitles + "|"
		      subtitles = subtitles + CellTag(i, 2)
		    End If
		  Next
		  Return Subtitles
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSelected(InitialSettings As String)
		  Dim Order(-1) As String
		  Dim Row, Pos As Integer
		  
		  Order = Split(InitialSettings, "|")
		  ' Now order them
		  For row = 0 to UBound(Order)
		    For pos = 0 to ListCount - 1
		      If me.CellTag(pos, 2) = Order(row) Then
		        me.Cell(pos,0) = Str(row)
		        me.CellCheck(pos, 1) = True
		      End If
		    Next pos
		  Next row
		  
		  For row = 0 to ListCount - 1
		    If me.Cell(row, 0) = "" Then 
		      me.Cell(row, 0) = "99" 'Sort at end of list
		      me.CellCheck(row, 1) = False 'Not selected
		    End If
		  Next row
		  me.SortedColumn = 0
		  me.Sort
		  me.SortedColumn = -1
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetupList()
		  Dim row As Integer
		  Dim temp As String
		  Dim RowData(-1) As String
		  Dim InitialSettings As String
		  Dim Order(-1) As String
		  Dim pos As Integer
		  'InitialSettings = SmartML.GetValue(App.MyPresentSettings.DocumentElement, "style/@subtitles")
		  row = 0
		  temp = App.T.Translate("subtitles/row" + Str(row) + "/@caption")
		  ColumnCount = 3
		  ColumnWidths = "0,15%,*"
		  me.ColumnType(1) = 2 'Left Column is a checkbox
		  DeleteAllRows
		  While Len(temp) > 0
		    me.AddRow ""
		    RowData = Split(temp, "|")
		    me.Cell(LastIndex, 2) = RowData(0)
		    me.CellTag(LastIndex, 2) = RowData(1)
		    row = row + 1
		    temp = App.T.Translate("subtitles/row" + Str(row) + "/@caption")
		  Wend
		  
		  'SetSelected(InitialSettings)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


End Class
#tag EndClass