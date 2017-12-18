#tag Class
Protected Class StyleImage
	#tag Method, Flags = &h0
		 Shared Function AsObjectFit(fitInt As Integer) As ObjectFit
		  Return ObjectFit(fitInt)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clear()
		  Me.oImage = Nil
		  Me.sFilename = ""
		  Me.sBase64 = ""
		  Me.ImageFit = ObjectFit.Cover
		  Me.TrimBottom = 0
		  Me.ImagePositionH = 0.5
		  Me.ImagePositionW = 0.5
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Clear
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(img As StyleImage)
		  Me.oImage = img.GetImage()
		  Me.sBase64 = img.GetImageAsString(False)
		  Me.sFilename = img.GetImageFilename()
		  Me.mImageFit = img.mImageFit
		  Me.ImagePositionH = img.ImagePositionH
		  Me.ImagePositionW = img.ImagePositionW
		  Me.TrimBottom = img.TrimBottom
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Draw(g As Graphics)
		  If oImage = Nil Then Return
		  
		  Dim gWidth, gHeight As  Integer
		  Dim DestW, DestH As Double
		  Dim bgDrawH, bgDrawW As Double
		  Dim bgHeightRatio, bgWidthRatio As Double
		  Dim scale as Double
		  Dim Top, Left As Integer
		  
		  gWidth = g.Width
		  gHeight = g.Height
		  bgDrawW = oImage.Width
		  bgDrawH = oImage.Height - TrimBottom
		  
		  Select Case ImageFit
		  Case ObjectFit._center
		    'old calculation (does not handle StripFooter properly) - kept for backward compatibility when used in old styles
		    Dim strip, stripW As Integer
		    Dim aspect_ratio As Double
		    Dim display_height As Integer
		    
		    aspect_ratio = gWidth / gHeight
		    
		    strip = (gHeight/oImage.Height) * TrimBottom
		    // This section makes the picture stretch at the picture's aspect ratio, not the screen's.
		    //
		    stripW = strip * aspect_ratio
		    bgDrawH = oImage.Height - strip
		    bgDrawW = oImage.Width - stripW
		    bgHeightRatio = gHeight / bgDrawH
		    bgWidthRatio = gWidth / bgDrawW
		    aspect_ratio = Min(bgHeightRatio, bgWidthRatio)
		    display_height = bgDrawH * aspect_ratio //Scale pic to display
		    display_height = gHeight - display_height //If this is the "short" side, calculate the difference between the pic and screen
		    display_height = display_height / 2 //Half of that is our y margin
		    
		    g.DrawPicture oImage, _
		    (gWidth / 2) - ((bgDrawW * aspect_ratio) / 2), _
		    display_height, _
		    bgDrawW * aspect_ratio, _
		    bgDrawH * aspect_ratio, _
		    stripw, 0, bgDrawW, bgDrawH
		  Case ObjectFit.none
		    Left = (g.Width - bgDrawW) * ImagePositionW
		    Top = (g.Height - bgDrawh) * ImagePositionH
		    g.DrawPicture oImage, Left, Top, bgDrawW, bgDrawH, 0, 0, bgDrawW, bgDrawH
		  Case ObjectFit.fill
		    bgWidthRatio = g.Width / bgDrawW
		    bgHeightRatio = g.Height / bgDrawH
		    DestW = bgDrawW * bgWidthRatio
		    DestH = bgDrawH * bgHeightRatio
		    Left = (g.Width - DestW) * ImagePositionW
		    Top = (g.Height - DestH) * ImagePositionH
		    g.DrawPicture oImage, Left, Top, DestW, DestH, 0,0, bgDrawW, bgDrawH
		  Case ObjectFit.contain
		    bgHeightRatio = g.Height / bgDrawH
		    bgWidthRatio = g.Width / bgDrawW
		    scale = Min(bgWidthRatio,bgHeightRatio)
		    DestW = bgDrawW * scale
		    DestH = bgDrawH * scale
		    Left = (g.Width - DestW) * ImagePositionW
		    Top = (g.Height - DestH) * ImagePositionH
		    g.DrawPicture oImage, Left, Top, DestW, DestH, 0,0, bgDrawW, bgDrawH
		  Case ObjectFit.cover
		    bgHeightRatio = g.Height / bgDrawH
		    bgWidthRatio = g.Width / bgDrawW
		    scale = Max(bgWidthRatio,bgHeightRatio)
		    DestW = bgDrawW * scale
		    DestH = bgDrawH * scale
		    Left = (g.Width - DestW) * ImagePositionW
		    Top = (g.Height - DestH) * ImagePositionH
		    g.DrawPicture oImage, Left, Top, DestW, DestH, 0,0, bgDrawW, bgDrawH
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetImage() As Picture
		  Return Me.oImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetImageAsString(generateIfMissing As Boolean = True) As String
		  If Me.sBase64 = "" And Me.oImage <> Nil And generateIfMissing Then
		    Me.sBase64 = App.GetImageAsString(Me.oImage)
		  End If
		  
		  Return Me.sBase64
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetImageFilename() As String
		  Return Me.sFilename
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ObjectFitAsString(fit As ObjectFit) As String
		  Select Case fit
		  Case ObjectFit.none
		    Return "none"
		  Case ObjectFit.cover
		    Return "cover"
		  Case ObjectFit.contain
		    Return "contain"
		  Case ObjectFit.fill
		    Return "fill"
		  Case ObjectFit._center
		    Return "center"
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImage(img As Picture)
		  Me.oImage = img
		  Me.sFilename = ""
		  Me.sBase64 = ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetImageAsString(Base64 as String) As Boolean
		  Dim f As FolderItem
		  Dim outputStream As BinaryStream
		  Dim bSuccess As Boolean
		  
		  bSuccess = False
		  Base64 = Trim(Base64)
		  If Len(Base64) = 0 Then
		    Clear()
		  Else
		    If Base64 <> Me.sBase64 Then
		      
		      f = GetTemporaryFolderItem ()
		      If f <> Nil Then
		        outputStream = BinaryStream.Create(f, True)
		        outputStream.Write DecodeBase64(Base64)
		        outputStream.Close
		        Me.oImage = Picture.Open(f)
		        #If TargetLinux
		          If IsNull(Me.oImage) Then
		            Dim f_jpg As FolderItem = GetFolderItem( f.AbsolutePath() + ".jpg" )
		            f.MoveFileTo( f_jpg )
		            Me.oImage = f_jpg.OpenAsPicture()
		            f_jpg.Delete
		          End If
		        #Else
		          f.Delete
		        #EndIf
		        
		        If Me.oImage <> Nil Then
		          Me.sBase64 = Base64
		          bSuccess = True
		        Else
		          Me.sBase64 = ""
		        End If
		        Me.sFilename = ""
		      End If
		      
		    End If
		  End If
		  
		  Return bSuccess 'Returns True if a new image is succesfully loaded. If the new image is equal to the old image, false is returned.
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetImageFromFile(File As FolderItem) As Boolean
		  Dim bSuccess As Boolean = False
		  
		  If File<>Nil And File.Exists() Then
		    If File.AbsolutePath() <> Me.sFilename Then
		      
		      Dim inputStream As BinaryStream = BinaryStream.Open(File, False)
		      If inputStream <> Nil Then
		        Try
		          Me.oImage = Picture.Open(File)
		        Catch excpt
		          If Not Globals.Status_Presentation Then
		            If excpt IsA UnsupportedFormatException Then
		              If Not Globals.Status_Presentation Then
		                InputBox.Message App.T.Translate("errors/unsupported_image_type", File.AbsolutePath)
		              End If
		            Else
		              Raise excpt
		            End If
		          End If
		        End Try
		        
		        If Me.oImage <> Nil Then
		          
		          If File.AbsolutePath().StartsWith( SpecialFolder.Temporary.AbsolutePath() ) Then
		            Me.sBase64 = EncodeBase64(inputStream.Read(File.Length))
		            Me.sFilename = ""
		          Else
		            Me.sBase64 = ""
		            Me.sFilename = File.AbsolutePath()
		          End If
		          
		          bSuccess = True
		        Else
		          Clear()
		        End If
		        
		      Else
		        If Not Globals.Status_Presentation Then
		          InputBox.Message App.T.Translate("errors/unreadable_image", File.AbsolutePath)
		        End If
		      End If
		      
		    End If
		  Else
		    If File<>Nil Then
		      If File.AbsolutePath() <> "" Then
		        If Not Globals.Status_Presentation Then
		          InputBox.Message App.T.Translate("errors/unreadable_image", File.AbsolutePath)
		        End If
		      End If
		    End If
		    Clear()
		  End If
		  
		  Return bSuccess 'Returns True if a new image is succesfully loaded. If the new image filename is equal to the old image filename, false is returned.
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetImageFromFileName(Filename As String) As Boolean
		  #if TargetMacOS then
		    Filename = Filename.ReplaceAll("\", "/")
		  #elseif TargetWin32 then
		    Filename = Filename.ReplaceAll("/", "\")
		  #elseif TargetLinux then
		    Filename = Filename.ReplaceAll("\", "/")
		  #endif
		  
		  Dim result As Boolean = False
		  Dim f as FolderItem
		  
		  Try
		    If Filename = "" Then
		      ' don't try to load the current folder
		    ElseIf FileName.StartsWith("/") or FileName.StartsWith("\\") or FileName.Mid(2, 1)=":" Then
		      f = new FolderItem(FileName)
		    Else
		      f = new FolderItem( App.DocsFolder.Child("Backgrounds").AbsolutePath + Filename )
		    End If
		  Catch excpt As RuntimeException
		    App.DebugWriter.Write "Exception in " + CurrentMethodName + "(" + Filename + ") : " + Introspection.GetType(excpt).FullName + "->" + excpt.message
		    f = nil
		  End Try
		  
		  If IsNull(f) Then
		    If Filename <> "" Then
		      If Not Globals.Status_Presentation Then
		        InputBox.Message App.T.Translate("errors/unreadable_image", Filename)
		      End If
		    Else
		      result = SetImageFromFile(f)
		    End If
		  End If
		  
		  Return result
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mImageFit
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mImageFit = value
			End Set
		#tag EndSetter
		ImageFit As ObjectFit
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		ImagePositionH As Double = 0.5
	#tag EndProperty

	#tag Property, Flags = &h0
		ImagePositionW As Double = 0.5
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mImageFit As ObjectFit
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected oImage As Picture
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected sBase64 As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected sFilename As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TrimBottom As Integer
	#tag EndProperty


	#tag Enum, Name = ObjectFit, Type = Integer, Flags = &h0
		cover
		  contain
		  fill
		  none
		_center = 99
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="ImagePositionH"
			Group="Behavior"
			InitialValue="0.5"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImagePositionW"
			Group="Behavior"
			InitialValue="0.5"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TrimBottom"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
