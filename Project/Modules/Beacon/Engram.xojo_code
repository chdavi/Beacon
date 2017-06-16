#tag Class
Protected Class Engram
	#tag Method, Flags = &h0
		Function Availability() As UInteger
		  Return Self.mAvailability
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AvailableTo(Package As Beacon.LootSource.Packages) As Boolean
		  Dim PackageValue As UInteger = Beacon.LootSource.PackageToInteger(Package)
		  Return (PackageValue And Self.mAvailability) = PackageValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BlueprintPath() As Text
		  Return "Blueprint'" + Self.mPath + "'"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanBeBlueprint() As Boolean
		  Return Self.mCanBeBlueprint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClassString() As Text
		  Dim Components() As Text = Self.mPath.Split("/")
		  Dim Tail As Text = Components(UBound(Components))
		  Components = Tail.Split(".")
		  Return Components(UBound(Components)) + "_C"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Constructor()
		  Self.mCanBeBlueprint = True
		  Self.mAvailability = Beacon.LootSource.PackageToInteger(Beacon.LootSource.Packages.Island) Or Beacon.LootSource.PackageToInteger(Beacon.LootSource.Packages.Scorched)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Source As Beacon.Engram)
		  Self.Constructor()
		  
		  Self.mAvailability = Source.mAvailability
		  Self.mCanBeBlueprint = Source.mCanBeBlueprint
		  Self.mPath = Source.mPath
		  Self.mLabel = Source.mLabel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GeneratedBlueprintPath() As Text
		  Return "BlueprintGeneratedClass'" + Self.mPath + "_C'"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsValid() As Boolean
		  Return Self.mPath.Length > 6 And Self.mPath.Left(6) = "/Game/"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Label() As Text
		  If Self.mLabel <> "" Then
		    Return Self.mLabel
		  Else
		    Return Self.mPath
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Lookup(ClassString As Text) As Beacon.Engram
		  Dim Engram As Beacon.Engram = Beacon.Data.GetEngramByClass(ClassString)
		  If Engram = Nil Then
		    Engram = New Beacon.Engram
		    Engram.mPath = ClassString
		  End If
		  Return Engram
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Path() As Text
		  Return Self.mPath
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected mAvailability As UInteger
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mCanBeBlueprint As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mLabel As Text
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mPath As Text
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
