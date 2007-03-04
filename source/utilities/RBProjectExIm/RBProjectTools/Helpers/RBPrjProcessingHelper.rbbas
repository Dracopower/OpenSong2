#tag Class
Class RBPrjProcessingHelper
	#tag Method, Flags = &h1
		Protected Sub SetParseResultsObj(results as RBPrjParseResults)
		  me.parseResults = results
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub raiseExc(msg as String, f as FolderItem = nil)
		  raise new RBPrjException (msg, ClassName(), f)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub assert(condition as Boolean, msg as String, f as FolderItem = nil)
		  if not condition then
		    raiseExc (msg, f)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub reportError(message as String)
		  me.parseResults.errMsgs.Append message
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function lookup(dict as Dictionary, key as Variant, default as Variant) As Variant
		  #if RBVersion >= 6 then
		    return dict.Lookup (key, default)
		  #else
		    if dict.HasKey (key) then
		      return dict.Value (key)
		    else
		      return default
		    end
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub reportWarning(message as String)
		  me.parseResults.warnMsgs.Append message
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ClassName() As String
		  // virtual method - subclasses shall override this method and return their name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function AsText(type as Integer, dataRef as RBPrjDataRef) As String
		  dim s as String, i as Integer
		  if dataRef = nil then
		    return ""
		  elseif type = RBPrjItem.TypeInt then
		    return dataRef.AsIntString
		  elseif type = RBPrjItem.TypeString and dataRef.IsPrintable then
		    return dataRef.AsText
		  elseif type = RBPrjItem.TypeRect then
		    for i = 0 to 3
		      if i > 0 then
		        s = s + ","
		      end
		      s = s + RBPrjHelper.MyStr(dataRef.ptr.Long(dataRef.ofs+i*4))
		    next
		    return s
		  else
		    return "$"+dataRef.AsHexString
		  end
		End Function
	#tag EndMethod


	#tag Note, Name = About
		This is a base class implementing the necessary Interface methods from RBPrjProcessing
		as well as a few helper methods
	#tag EndNote


	#tag Property, Flags = &h1
		Protected parseResults As RBPrjParseResults
	#tag EndProperty


End Class
#tag EndClass
