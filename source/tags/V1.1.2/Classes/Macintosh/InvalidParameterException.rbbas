#tag Class
Protected Class InvalidParameterException
Inherits RuntimeException
	#tag Method, Flags = &h0
		Sub Constructor(msg as String)
		  me.Message = msg
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(className as String, methodName as String, msg as String)
		  me.Message = className + "." + methodName + ": " + msg + "."
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="RuntimeException"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="RuntimeException"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass