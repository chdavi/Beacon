#tag Class
Protected Class Document
	#tag Method, Flags = &h0
		Sub Constructor(Source As Xojo.Core.Dictionary)
		  Self.mDescription = Source.Value("description")
		  Self.mDocumentID = Source.Value("document_id")
		  Self.mDownloadCount = Source.Value("download_count")
		  Self.mLastUpdated = Beacon.ParseSQLDate(Source.Value("last_updated"))
		  Self.mName = Source.Value("name")
		  Self.mResourceURL = Source.Value("resource_url")
		  Self.mRevision = Source.Value("revision")
		  Self.mUserID = Source.Value("user_id")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Description() As Text
		  Return Self.mDescription
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DocumentID() As Text
		  Return Self.mDocumentID
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DownloadCount() As UInteger
		  Return Self.mDownloadCount
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LastUpdated() As Xojo.Core.Date
		  Return Self.mLastUpdated
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As Text
		  Return Self.mName
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Compare(Other As BeaconAPI.Document) As Integer
		  If Other = Nil Then
		    Return 1
		  End If
		  
		  Return Self.mDocumentID.Compare(Other.mDocumentID)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ResourceURL() As Text
		  Return Self.mResourceURL
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Revision() As UInteger
		  Return Self.mRevision
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UserID() As Text
		  Return Self.mUserID
		End Function
	#tag EndMethod


	#tag Note, Name = Beacon.Document
		Yes, they are different. An BeaconAPI.Document is metadata, no content, and includes stats.
		
	#tag EndNote


	#tag Property, Flags = &h21
		Private mDescription As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDocumentID As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDownloadCount As UInteger
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLastUpdated As Xojo.Core.Date
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mName As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mResourceURL As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRevision As UInteger
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mUserID As Text
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
