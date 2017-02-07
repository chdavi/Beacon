#tag Module
Protected Module Language
	#tag Method, Flags = &h1
		Protected Function Format(InputFormat As String, ParamArray Values() As String) As String
		  For I As Integer = 0 To UBound(Values)
		    Dim Placeholder As String = "%%" + Str(I + 1, "-0") + "%%"
		    InputFormat = ReplaceAll(InputFormat, Placeholder, Values(I))
		  Next
		  Return InputFormat
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LabelForQuality(Quality As Beacon.Qualities) As String
		  Select Case Quality
		  Case Beacon.Qualities.Primitive
		    Return QualityPrimitive
		  Case Beacon.Qualities.Ramshackle
		    Return QualityRamshackle
		  Case Beacon.Qualities.Apprentice
		    Return QualityApprentice
		  Case Beacon.Qualities.Journeyman
		    Return QualityJourneyman
		  Case Beacon.Qualities.Mastercraft
		    Return QualityMastercraft
		  Case Beacon.Qualities.Ascendant
		    Return QualityAscendant
		  Case Beacon.Qualities.AscendantPlus
		    Return QualityAscendantPlus
		  Case Beacon.Qualities.AscendantPlusPlus
		    Return QualityAscendantPlusPlus
		  Case Beacon.Qualities.AscendantPlusPlusPlus
		    Return QualityAscendantPlusPlusPlus
		  Else
		    Return ""
		  End Select
		End Function
	#tag EndMethod


	#tag Constant, Name = QualityApprentice, Type = String, Dynamic = True, Default = \"Apprentice", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Apprentice"
	#tag EndConstant

	#tag Constant, Name = QualityAscendant, Type = String, Dynamic = True, Default = \"Ascendant", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Ascendant"
	#tag EndConstant

	#tag Constant, Name = QualityAscendantPlus, Type = String, Dynamic = True, Default = \"Epic", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Epic"
	#tag EndConstant

	#tag Constant, Name = QualityAscendantPlusPlus, Type = String, Dynamic = True, Default = \"Legendary", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Legendary"
	#tag EndConstant

	#tag Constant, Name = QualityAscendantPlusPlusPlus, Type = String, Dynamic = True, Default = \"Pearlescent", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Pearlescent"
	#tag EndConstant

	#tag Constant, Name = QualityJourneyman, Type = String, Dynamic = True, Default = \"Journeyman", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Journeyman"
	#tag EndConstant

	#tag Constant, Name = QualityMastercraft, Type = String, Dynamic = True, Default = \"Mastercraft", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Mastercraft"
	#tag EndConstant

	#tag Constant, Name = QualityPrimitive, Type = String, Dynamic = True, Default = \"Primitive", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Primitive"
	#tag EndConstant

	#tag Constant, Name = QualityRamshackle, Type = String, Dynamic = True, Default = \"Ramshackle", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Ramshackle"
	#tag EndConstant


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
End Module
#tag EndModule
