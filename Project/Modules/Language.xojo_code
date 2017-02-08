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


	#tag Constant, Name = MenuAboutBeacon, Type = String, Dynamic = True, Default = \"About Beacon", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"About Beacon"
	#tag EndConstant

	#tag Constant, Name = MenuAddItemSet, Type = String, Dynamic = True, Default = \"Add Item Set", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Add Item Set"
	#tag EndConstant

	#tag Constant, Name = MenuAddLootSource, Type = String, Dynamic = True, Default = \"Add Loot Source\xE2\x80\xA6", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Add Loot Source\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = MenuCheckForUpdates, Type = String, Dynamic = True, Default = \"Check for Updates\xE2\x80\xA6", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Check for Updates\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = MenuClear, Type = String, Dynamic = True, Default = \"&Delete", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = MenuClose, Type = String, Dynamic = True, Default = \"Close", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Close"
	#tag EndConstant

	#tag Constant, Name = MenuCopy, Type = String, Dynamic = True, Default = \"&Copy", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"&Copy"
	#tag EndConstant

	#tag Constant, Name = MenuCut, Type = String, Dynamic = True, Default = \"Cu&t", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Cu&t"
	#tag EndConstant

	#tag Constant, Name = MenuDocument, Type = String, Dynamic = True, Default = \"&Document", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"&Document"
	#tag EndConstant

	#tag Constant, Name = MenuDuplicateLootSource, Type = String, Dynamic = True, Default = \"Duplicate Loot Source\xE2\x80\xA6", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Duplicate Loot Source\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = MenuEdit, Type = String, Dynamic = True, Default = \"&Edit", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"&Edit"
	#tag EndConstant

	#tag Constant, Name = MenuExport, Type = String, Dynamic = True, Default = \"Export\xE2\x80\xA6", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Export\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = MenuFile, Type = String, Dynamic = True, Default = \"&File", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"&File"
	#tag EndConstant

	#tag Constant, Name = MenuHelp, Type = String, Dynamic = True, Default = \"&Help", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"&Help"
	#tag EndConstant

	#tag Constant, Name = MenuImport, Type = String, Dynamic = True, Default = \"Import\xE2\x80\xA6", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Import\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = MenuMakeADonation, Type = String, Dynamic = True, Default = \"Make a Donation\xE2\x80\xA6", Scope = Protected
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Make a Donation\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = MenuMinimize, Type = String, Dynamic = True, Default = \"Minimize", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Minimize"
	#tag EndConstant

	#tag Constant, Name = MenuNewDocument, Type = String, Dynamic = True, Default = \"&New Document", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"&New Document"
	#tag EndConstant

	#tag Constant, Name = MenuNewEmptySet, Type = String, Dynamic = True, Default = \"New Empty Set", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"New Empty Set"
	#tag EndConstant

	#tag Constant, Name = MenuOpen, Type = String, Dynamic = True, Default = \"Open\xE2\x80\xA6", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Open\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = MenuPaste, Type = String, Dynamic = True, Default = \"&Paste", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"&Paste"
	#tag EndConstant

	#tag Constant, Name = MenuPublishDocument, Type = String, Dynamic = True, Default = \"Publish Document\xE2\x80\xA6", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Publish Document\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = MenuQuit, Type = String, Dynamic = True, Default = \"&Quit", Scope = Protected
		#Tag Instance, Platform = Windows, Language = en, Definition  = \"E&xit"
		#Tag Instance, Platform = Mac OS, Language = en, Definition  = \"&Quit"
		#Tag Instance, Platform = Linux, Language = en, Definition  = \"&Quit"
	#tag EndConstant

	#tag Constant, Name = MenuRemoveItemSet, Type = String, Dynamic = True, Default = \"Remove Item Set", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Remove Item Set"
	#tag EndConstant

	#tag Constant, Name = MenuRemoveLootSource, Type = String, Dynamic = True, Default = \"Remove Loot Source", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Remove Loot Source"
	#tag EndConstant

	#tag Constant, Name = MenuRemoveLootSources, Type = String, Dynamic = True, Default = \"Remove Loot Sources", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Remove Loot Sources"
	#tag EndConstant

	#tag Constant, Name = MenuReportAProblem, Type = String, Dynamic = True, Default = \"Report a Problem\xE2\x80\xA6", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Report a Problem\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = MenuSave, Type = String, Dynamic = True, Default = \"&Save", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"&Save"
	#tag EndConstant

	#tag Constant, Name = MenuSaveAs, Type = String, Dynamic = True, Default = \"Save As\xE2\x80\xA6", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Save As\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = MenuSelectAll, Type = String, Dynamic = True, Default = \"Select &All", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select &All"
	#tag EndConstant

	#tag Constant, Name = MenuUndo, Type = String, Dynamic = True, Default = \"&Undo", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"&Undo"
	#tag EndConstant

	#tag Constant, Name = MenuUnpublishDocument, Type = String, Dynamic = True, Default = \"Unpublish Document", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Unpublish Document"
	#tag EndConstant

	#tag Constant, Name = MenuWindow, Type = String, Dynamic = True, Default = \"&Window", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"&Window"
	#tag EndConstant

	#tag Constant, Name = MenuZoom, Type = String, Dynamic = True, Default = \"Zoom", Scope = Protected
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Zoom"
	#tag EndConstant

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
