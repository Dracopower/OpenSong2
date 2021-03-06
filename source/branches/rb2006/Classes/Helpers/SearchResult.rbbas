#tag Class
Class SearchResult
	#tag Method, Flags = &h0
		Function compareTo(sr as SearchResult) As Integer
		  'returns <0 if Me<sr, 0 if Me==sr, >0 if Me>sr
		  
		  Dim one, two as Integer
		  
		  one= book*1000000 + chapter*1000 + verse
		  two= sr.book*1000000 + sr.chapter*1000 + sr.verse
		  
		  return one-two
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SearchResult(verse as String)
		  'format for incoming string must be three integers with a space inbetween them
		  
		  Me.book= Val(Nthfield(verse, " ", 1))
		  Me.chapter= Val(Nthfield(verse, " ", 2))
		  Me.verse= Val(Nthfield(verse, " ", 3))
		  Me.value=10
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SearchResult(tbook as Integer, tchap as Integer, tver as Integer)
		  book= tbook
		  chapter= tchap
		  verse= tver
		  value=10 '10 is base value
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		book As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		chapter As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		value As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		verse As Integer
	#tag EndProperty


End Class
#tag EndClass
