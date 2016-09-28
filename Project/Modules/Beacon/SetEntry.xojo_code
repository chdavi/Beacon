#tag Class
Protected Class SetEntry
Implements Beacon.Countable
	#tag Method, Flags = &h0
		Sub Append(Item As Beacon.ItemClass)
		  Self.mItems.Append(Item)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Self.mMinQuantity = 1
		  Self.mMaxQuantity = 1
		  Self.mMinQuality = Beacon.Qualities.Primitive
		  Self.mMaxQuality = Beacon.Qualities.Ascendant
		  Self.mChanceToBeBlueprint = 0.1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Source As Beacon.SetEntry)
		  Self.Constructor()
		  
		  Redim Self.mItems(UBound(Source.mItems))
		  
		  Self.mChanceToBeBlueprint = Source.mChanceToBeBlueprint
		  Self.mMaxQuality = Source.mMaxQuality
		  Self.mMaxQuantity = Source.mMaxQuantity
		  Self.mMinQuality = Source.mMinQuality
		  Self.mMinQuantity = Source.mMinQuantity
		  Self.mWeight = Source.mWeight
		  
		  For I As Integer = 0 To UBound(Source.mItems)
		    Self.mItems(I) = New Beacon.ItemClass(Source.mItems(I))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count() As Integer
		  Return UBound(Self.mItems) + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Export() As Xojo.Core.Dictionary
		  Dim Children() As Xojo.Core.Dictionary
		  For Each Item As Beacon.ItemClass In Self.mItems
		    Children.Append(Item.Export)
		  Next
		  
		  Dim Keys As New Xojo.Core.Dictionary
		  Keys.Value("ChanceToBeBlueprintOverride") = Self.ChanceToBeBlueprint
		  Keys.Value("Items") = Children
		  Keys.Value("MaxQuality") = Beacon.QualityToText(Self.MaxQuality)
		  Keys.Value("MaxQuantity") = Self.MaxQuantity
		  Keys.Value("MinQuality") = Beacon.QualityToText(Self.MinQuality)
		  Keys.Value("MinQuantity") = Self.MinQuantity
		  Keys.Value("EntryWeight") = Self.Weight
		  Return Keys
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetIterator() As Xojo.Core.Iterator
		  Return New Beacon.SetEntryIterator(Self)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Import(Dict As Xojo.Core.Dictionary) As Beacon.SetEntry
		  Dim Entry As New Beacon.SetEntry
		  If Dict.HasKey("EntryWeight") Then
		    Entry.Weight = Dict.Value("EntryWeight")
		  Else
		    Entry.Weight = Dict.Lookup("Weight", Entry.Weight)
		  End If
		  
		  If Dict.HasKey("MinQuality") Then
		    Dim Value As Auto = Dict.Value("MinQuality")
		    Dim Info As Xojo.Introspection.TypeInfo = Xojo.Introspection.GetType(Value)
		    If Info.FullName = "Text" Then
		      Entry.MinQuality = Beacon.TextToQuality(Value)
		    Else
		      Entry.MinQuality = Beacon.QualityForValue(Value, 1)
		    End If
		  End If
		  If Dict.HasKey("MaxQuality") Then
		    Dim Value As Auto = Dict.Value("MaxQuality")
		    Dim Info As Xojo.Introspection.TypeInfo = Xojo.Introspection.GetType(Value)
		    If Info.FullName = "Text" Then
		      Entry.MaxQuality = Beacon.TextToQuality(Value)
		    Else
		      Entry.MaxQuality = Beacon.QualityForValue(Value, 1)
		    End If
		  End If
		  
		  Entry.MinQuantity = Dict.Lookup("MinQuantity", Entry.MinQuantity)
		  Entry.MaxQuantity = Dict.Lookup("MaxQuantity", Entry.MaxQuantity)
		  If Dict.HasKey("ChanceToBeBlueprintOverride") Then
		    Entry.ChanceToBeBlueprint = Dict.Value("ChanceToBeBlueprintOverride")
		  Else
		    Entry.ChanceToBeBlueprint = Dict.Lookup("ChanceToBeBlueprint", Entry.ChanceToBeBlueprint)
		  End If
		  
		  If Dict.HasKey("ItemClassStrings") And Dict.HasKey("ItemsWeights") Then
		    Dim ClassStrings() As Auto = Dict.Value("ItemClassStrings")
		    Dim ClassWeights() As Auto = Dict.Value("ItemsWeights")
		    
		    If UBound(ClassWeights) < UBound(ClassStrings) Then
		      // Add more values
		      While UBound(ClassWeights) < UBound(ClassStrings)
		        ClassWeights.Append(1)
		      Wend
		    ElseIf UBound(ClassWeights) > UBound(ClassStrings) Then
		      // Just truncate
		      Redim ClassWeights(UBound(ClassStrings))
		    End If
		    
		    For I As Integer = 0 To UBound(ClassStrings)
		      Try
		        Entry.Append(New Beacon.ItemClass(ClassStrings(I), ClassWeights(I)))
		      Catch Err As TypeMismatchException
		        Continue
		      End Try
		    Next
		  ElseIf Dict.HasKey("Items") Then
		    Dim Children() As Auto = Dict.Value("Items")
		    For Each Child As Xojo.Core.Dictionary In Children
		      Entry.Append(Beacon.ItemClass.Import(Child))
		    Next
		  End If
		  
		  Return Entry
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IndexOf(Item As Beacon.ItemClass) As Integer
		  For I As Integer = 0 To UBound(Self.mItems)
		    If Self.mItems(I) = Item Then
		      Return I
		    End If
		  Next
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Insert(Index As Integer, Item As Beacon.ItemClass)
		  Self.mItems.Insert(Index, Item)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Join(Entries() As Beacon.SetEntry, Separator As Text, Multipliers As Beacon.Range) As Text
		  Dim Values() As Text
		  For Each Entry As Beacon.SetEntry In Entries
		    Values.Append(Entry.TextValue(Multipliers))
		  Next
		  Return Text.Join(Values, Separator)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Operator_Redim(Bound As Integer)
		  Redim Self.mItems(Bound)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Subscript(Index As Integer) As Beacon.ItemClass
		  Return Self.mItems(Index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Operator_Subscript(Index As Integer, Assigns Item As Beacon.ItemClass)
		  Self.mItems(Index) = Item
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Remove(Index As Integer)
		  Self.mItems.Remove(Index)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextValue(Multipliers As Beacon.Range) As Text
		  Dim Classes(), Weights() As Text
		  Redim Classes(UBound(Self.mItems))
		  Redim Weights(UBound(Self.mItems))
		  For I As Integer = 0 To UBound(Self.mItems)
		    Classes(I) = Self.mItems(I).ClassString
		    Weights(I) = Self.mItems(I).Weight.ToText
		  Next
		  
		  Dim MinQuality As Double = Beacon.ValueForQuality(Self.mMinQuality, Multipliers.Min)
		  Dim MaxQuality As Double = Beacon.ValueForQuality(Self.mMaxQuality, Multipliers.Max)
		  Dim InverseChance As Double = 1 - Self.mChanceToBeBlueprint
		  Dim Entries() As Text
		  
		  If InverseChance > 0 Then
		    // Usable item code
		    Dim EntryWeight As Double = Self.mWeight * InverseChance
		    Dim Values() As Text
		    Values.Append("EntryWeight=" + EntryWeight.ToText)
		    Values.Append("ItemClassStrings=(""" + Text.Join(Classes, """,""") + """)")
		    Values.Append("ItemsWeights=(" + Text.Join(Weights, ",") + ")")
		    Values.Append("MinQuantity=" + Self.mMinQuantity.ToText)
		    Values.Append("MaxQuantity=" + Self.mMaxQuantity.ToText)
		    Values.Append("MinQuality=" + MinQuality.ToText)
		    Values.Append("MaxQuality=" + MaxQuality.ToText)
		    Values.Append("bForceBlueprint=false")
		    Values.Append("ChanceToBeBlueprintOverride=0.0")
		    Entries.Append("(" + Text.Join(Values, ",") + ")")
		  End If
		  
		  If Self.mChanceToBeBlueprint > 0 Then
		    // Blueprint code
		    Dim EntryWeight As Double = Self.mWeight * Self.mChanceToBeBlueprint
		    Dim Values() As Text
		    Values.Append("EntryWeight=" + EntryWeight.ToText)
		    Values.Append("ItemClassStrings=(""" + Text.Join(Classes, """,""") + """)")
		    Values.Append("ItemsWeights=(" + Text.Join(Weights, ",") + ")")
		    Values.Append("MinQuantity=1")
		    Values.Append("MaxQuantity=1")
		    Values.Append("MinQuality=" + MinQuality.ToText)
		    Values.Append("MaxQuality=" + MaxQuality.ToText)
		    Values.Append("bForceBlueprint=true")
		    Values.Append("ChanceToBeBlueprintOverride=1.0")
		    Entries.Append("(" + Text.Join(Values, ",") + ")")
		  End If
		  
		  Return Text.Join(Entries, ",")
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mChanceToBeBlueprint
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Self.mChanceToBeBlueprint = Max(Min(Value, 1), 0)
			End Set
		#tag EndSetter
		ChanceToBeBlueprint As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mChanceToBeBlueprint >= 1.0
			End Get
		#tag EndGetter
		ForceBlueprint As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mMaxQuality
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Self.mMaxQuality = Value
			End Set
		#tag EndSetter
		MaxQuality As Beacon.Qualities
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mMaxQuantity
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Self.mMaxQuantity = Max(Value, 1)
			End Set
		#tag EndSetter
		MaxQuantity As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mChanceToBeBlueprint As Double = 0.1
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mMinQuality
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Self.mMinQuality = Value
			End Set
		#tag EndSetter
		MinQuality As Beacon.Qualities
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mMinQuantity
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Self.mMinQuantity = Max(Value, 1)
			End Set
		#tag EndSetter
		MinQuantity As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mItems() As Beacon.ItemClass
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMaxQuality As Beacon.Qualities
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMaxQuantity As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMinQuality As Beacon.Qualities
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMinQuantity As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mWeight As Double
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mWeight
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Self.mWeight = Max(Min(Value, 1), 0)
			End Set
		#tag EndSetter
		Weight As Double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ChanceToBeBlueprint"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ForceBlueprint"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
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
			Name="MaxQuality"
			Group="Behavior"
			Type="Ark.Qualities"
			EditorType="Enum"
			#tag EnumValues
				"0 - Primitive"
				"1 - Ramshackle"
				"2 - Apprentice"
				"3 - Journeyman"
				"4 - Mastercraft"
				"5 - Ascendant"
				"6 - AscendantPlus"
				"7 - AscendantPlusPlus"
				"8 - AscendantPlusPlusPlus"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxQuantity"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinQuality"
			Group="Behavior"
			Type="Ark.Qualities"
			EditorType="Enum"
			#tag EnumValues
				"0 - Primitive"
				"1 - Ramshackle"
				"2 - Apprentice"
				"3 - Journeyman"
				"4 - Mastercraft"
				"5 - Ascendant"
				"6 - AscendantPlus"
				"7 - AscendantPlusPlus"
				"8 - AscendantPlusPlusPlus"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinQuantity"
			Group="Behavior"
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
		#tag ViewProperty
			Name="Weight"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass