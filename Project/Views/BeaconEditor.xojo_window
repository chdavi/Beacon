#tag Window
Begin ContainerControl BeaconEditor
   AcceptFocus     =   False
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   464
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   True
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   0
   Transparent     =   True
   UseFocusRing    =   False
   Visible         =   True
   Width           =   598
   Begin BeaconListbox SetList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   False
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   22
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   False
      HeadingIndex    =   0
      Height          =   408
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   2
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   1
      ShowDropIndicator=   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   31
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   190
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin ControlCanvas Separators
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   True
      Enabled         =   True
      EraseBackground =   False
      Height          =   464
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      Left            =   190
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Transparent     =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   1
   End
   Begin SetEditor Editor
      AcceptFocus     =   False
      AcceptTabs      =   True
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      Enabled         =   False
      EraseBackground =   True
      HasBackColor    =   False
      Height          =   464
      HelpTag         =   ""
      InitialParent   =   ""
      Left            =   191
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   407
   End
   Begin FooterBar Footer
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   439
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   190
   End
   Begin ListHeader Header
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DisplayAsMenu   =   False
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   31
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      SegmentIndex    =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TintColor       =   &cEAEEF100
      Title           =   "Item Sets"
      Top             =   0
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   190
   End
   Begin Beacon.ImportThread Importer
      Index           =   -2147483648
      LockedInPosition=   False
      Priority        =   0
      Scope           =   0
      StackSize       =   ""
      State           =   ""
      TabPanelIndex   =   0
   End
End
#tag EndWindow

#tag WindowCode
	#tag MenuHandler
		Function DocumentRemoveItemSet() As Boolean Handles DocumentRemoveItemSet.Action
			Self.RemoveSelectedItemSets(True)
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h21
		Private Sub AddSet(Set As Beacon.ItemSet)
		  Dim Added As Boolean
		  
		  For Each Source As Beacon.LootSource In Self.mSources
		    If Source.IndexOf(Set) = -1 Then
		      Source.Append(New Beacon.ItemSet(Set))
		      Added = True
		    End If
		  Next
		  
		  If Added Then
		    SetList.AddRow(Set.Label)
		    SetList.RowTag(SetList.LastIndex) = Set
		    SetList.ListIndex = SetList.LastIndex
		    Self.mSorting = True
		    SetList.Sort
		    Self.mSorting = False
		    RaiseEvent Updated
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub BuildPresetMenu(Parent As MenuItem)
		  Dim Presets() As Beacon.Preset = Beacon.Data.Presets
		  Dim Groups As New Dictionary
		  Dim GroupNames() As Text
		  For Each Preset As Beacon.Preset In Presets
		    Dim Arr() As Beacon.Preset
		    If Groups.HasKey(Preset.Grouping) Then
		      Arr = Groups.Value(Preset.Grouping)
		    End If
		    Arr.Append(Preset)
		    Groups.Value(Preset.Grouping) = Arr
		    
		    If GroupNames.IndexOf(Preset.Grouping) = -1 Then
		      GroupNames.Append(Preset.Grouping)
		    End If
		  Next
		  GroupNames.Sort
		  
		  For I As Integer = Parent.Count - 1 DownTo 0
		    Parent.Remove(I)
		  Next
		  
		  Dim EmptySetItem As New MenuItem("New Empty Set", Nil)
		  AddHandler EmptySetItem.Action, WeakAddressOf Self.HandlePresetMenu
		  Parent.Append(EmptySetItem)
		  
		  For Each Group As Text In GroupNames
		    Parent.Append(New MenuItem(MenuItem.TextSeparator))
		    
		    Dim Header As New MenuItem(Group)
		    Header.Enabled = False
		    Parent.Append(Header)
		    
		    Dim Arr() As Beacon.Preset = Groups.Value(Group)
		    For Each Preset As Beacon.Preset In Arr
		      If Preset.ValidForMap(Self.CurrentMap) Then
		        Dim PresetItem As New MenuItem(Preset.Label, Preset)
		        AddHandler PresetItem.Action, WeakAddressOf Self.HandlePresetMenu
		        Parent.Append(PresetItem)
		      End If
		    Next
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CancelImport()
		  Importer.Stop
		  
		  If Self.ImportProgress <> Nil Then
		    Self.ImportProgress.Close
		    Self.ImportProgress = Nil
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableMenuItems()
		  Self.BuildPresetMenu(DocumentAddItemSet)
		  
		  #if false
		    AddItemSetEmpty.Enable
		    AddItemSetDesertClothClothing.Enable
		    AddItemSetPlatformSaddles.Enable
		    AddItemSetAdobeHousing.Enable
		    AddItemSetAdvancedFirearms.Enable
		    AddItemSetAdvancedFurniture.Enable
		    AddItemSetBasicFurniture.Enable
		    AddItemSetChitinArmor.Enable
		    AddItemSetClothClothing.Enable
		    AddItemSetFlakArmor.Enable
		    AddItemSetGhillieSuit.Enable
		    AddItemSetHideClothing.Enable
		    AddItemSetLargeSaddles.Enable
		    AddItemSetMediumSaddles.Enable
		    AddItemSetMetalHousing.Enable
		    AddItemSetMetalTools.Enable
		    AddItemSetRiotArmor.Enable
		    AddItemSetSimpleFirearms.Enable
		    AddItemSetSmallSaddles.Enable
		    AddItemSetStoneHousing.Enable
		    AddItemSetStoneTools.Enable
		    AddItemSetSupplies.Enable
		    AddItemSetThatchHousing.Enable
		    AddItemSetWoodHousing.Enable
		    AddItemSetFurArmor.Enable
		    AddItemSetGardening.Enable
		  #endif
		  If SetList.SelCount > 0 Then
		    DocumentRemoveItemSet.Enable
		  End If
		  If SetList.SelCount = 1 Then
		    Editor.EnableMenuItems
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function HandlePresetMenu(Sender As MenuItem) As Boolean
		  Dim SelectedPreset As Beacon.Preset = Sender.Tag
		  
		  If SelectedPreset = Nil Then
		    Self.AddSet(New Beacon.ItemSet)
		    Return True
		  End If
		  
		  Dim Added As Boolean
		  For Each Source As Beacon.LootSource In Self.mSources
		    Dim Set As Beacon.ItemSet = Beacon.ItemSet.FromPreset(SelectedPreset, Source, Self.CurrentMap)
		    If Source.IndexOf(Set) = -1 Then
		      Source.Append(Set)
		      Added = True
		    End If
		  Next
		  
		  If Added Then
		    Self.RebuildSetList()
		    Dim Found As Boolean
		    For I As Integer = 0 To SetList.ListCount - 1
		      Dim Set As Beacon.ItemSet = SetList.RowTag(I)
		      If Set.SourcePresetID = SelectedPreset.PresetID Then
		        Found = True
		        SetList.ListIndex = I
		        Exit
		      End If
		    Next
		    If Not Found Then
		      Self.ShowAlert("Preset added but not shown", "Because you have multiple loot sources selected, the preset was added to each source, but was configured differently for each. It is not common to all your selected sources, so it isn't currently listed.")
		    End If
		    RaiseEvent Updated
		  End If
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Import(Content As String, Source As String)
		  #Pragma Warning "This does not respect the document difficulty"
		  
		  Self.ImportProgress = New ImporterWindow
		  Self.ImportProgress.Source = Source
		  Self.ImportProgress.CancelAction = WeakAddressOf Self.CancelImport
		  Self.ImportProgress.ShowWithin(Self.TrueWindow)
		  Self.Importer.Run(Content.ToText)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RebuildSetList()
		  Dim SelectedSetNames() As String
		  For I As Integer = 0 To SetList.ListCount - 1
		    If SetList.Selected(I) Then
		      SelectedSetNames.Append(SetList.Cell(I, 0))
		    End If
		  Next
		  
		  Self.RebuildSetList(SelectedSetNames)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RebuildSetList(SelectedSetNames() As String)
		  Self.mUpdating = True
		  
		  // Find sets that are common to all sources
		  Dim Sets As New Dictionary
		  Dim Weights As New Dictionary
		  Dim MatchWeight As Integer = UBound(Self.mSources) + 1
		  
		  For Each Source As Beacon.LootSource In Self.mSources
		    For Each Set As Beacon.ItemSet In Source
		      Dim Hash As String = Set.Hash
		      Sets.Value(Hash) = Set
		      Weights.Value(Hash) = Weights.Lookup(Hash, 0).IntegerValue + 1
		    Next
		  Next
		  
		  // Now each common set will have a value of MatchWeight in Weights
		  Dim Hashes() As Variant = Weights.Keys
		  Dim CommonSets() As Beacon.ItemSet
		  For Each Hash As String In Hashes
		    If Weights.Value(Hash).IntegerValue = MatchWeight Then
		      CommonSets.Append(New Beacon.ItemSet(Sets.Value(Hash)))
		    End If
		  Next
		  
		  SetList.DeleteAllRows
		  For Each Set As Beacon.ItemSet In CommonSets
		    SetList.AddRow(Set.Label)
		    SetList.RowTag(SetList.LastIndex) = Set
		    SetList.Selected(SetList.LastIndex) = SelectedSetNames.IndexOf(Set.Label) > -1
		  Next
		  Self.mSorting = True
		  SetList.Sort
		  Self.mSorting = False
		  
		  If UBound(Self.mSources) > -1 Then
		    Dim DuplicatesState As CheckBox.CheckedStates = if(Self.mSources(0).SetsRandomWithoutReplacement, CheckBox.CheckedStates.Checked, CheckBox.CheckedStates.Unchecked)
		    Dim Label As Text = Self.mSources(0).Label
		    Dim MinSets As Integer = Self.mSources(0).MinItemSets
		    Dim MaxSets As Integer = Self.mSources(0).MaxItemSets
		    
		    For I As Integer = 1 To UBound(Self.mSources)
		      MinSets = Min(MinSets, Self.mSources(I).MinItemSets)
		      MaxSets = Max(MaxSets, Self.mSources(I).MaxItemSets)
		      
		      If Self.mSources(I).Label <> Label Then
		        Label = ""
		      End If
		      
		      Dim State As CheckBox.CheckedStates = if(Self.mSources(I).SetsRandomWithoutReplacement, CheckBox.CheckedStates.Checked, CheckBox.CheckedStates.Unchecked)
		      If State <> DuplicatesState Then
		        DuplicatesState = CheckBox.CheckedStates.Indeterminate
		      End If
		    Next
		  End If
		  
		  Self.mUpdating = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveSelectedItemSets(RequireConfirmation As Boolean)
		  If SetList.SelCount = 0 Then
		    Return
		  End If
		  
		  Dim Sets() As Beacon.ItemSet
		  For I As Integer = 0 To SetList.ListCount - 1
		    If SetList.Selected(I) Then
		      Sets.Append(SetList.RowTag(I))
		    End If
		  Next
		  
		  If RequireConfirmation Then
		    Dim Dialog As New MessageDialog
		    Dialog.Title = ""
		    If SetList.SelCount = 1 Then
		      Dialog.Message = "Are you sure you want to delete the item set """ + Sets(0).Label + """?"
		    Else
		      Dialog.Message = "Are you sure you want to delete these " + Str(SetList.SelCount, "-0") + " item sets?"
		    End If
		    Dialog.Explanation = "This action cannot be undone."
		    Dialog.ActionButton.Caption = "Delete"
		    Dialog.CancelButton.Visible = True
		    
		    Dim Choice As MessageDialogButton = Dialog.ShowModalWithin(Self.TrueWindow)
		    If Choice = Dialog.CancelButton Then
		      Return
		    End If
		  End If
		  
		  Dim Updated As Boolean
		  For Each Set As Beacon.ItemSet In Sets
		    For Each Source As Beacon.LootSource In Self.mSources
		      Dim Idx As Integer = Source.IndexOf(Set)
		      If Idx > -1 Then
		        Source.Remove(Idx)
		        Updated = True
		      End If
		    Next
		  Next
		  For I As Integer = SetList.ListCount - 1 DownTo 0
		    If SetList.Selected(I) Then
		      SetList.RemoveRow(I)
		    End If
		  Next
		  If Updated Then
		    RaiseEvent Updated
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Sources() As Beacon.LootSource()
		  // Clone the array, but not the items
		  Dim Results() As Beacon.LootSource
		  For Each Source As Beacon.LootSource In Self.mSources
		    Results.Append(Source)
		  Next
		  Return Results
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Sources(Assigns Values() As Beacon.LootSource)
		  Redim Self.mSources(UBound(Values))
		  For I As Integer = 0 To UBound(Self.mSources)
		    Self.mSources(I) = Values(I)
		  Next
		  Self.RebuildSetList()
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Updated()
	#tag EndHook


	#tag Property, Flags = &h0
		CurrentMap As Beacon.Map
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ImportProgress As ImporterWindow
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSorting As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSources() As Beacon.LootSource
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mUpdating As Boolean
	#tag EndProperty


	#tag Constant, Name = kClipboardType, Type = String, Dynamic = False, Default = \"com.thezaz.beacon.itemset", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events SetList
	#tag Event
		Sub Change()
		  If Self.mSorting = True Then
		    Return
		  End If
		  
		  Footer.Button("DeleteButton").Enabled = Me.SelCount > -1
		  
		  If Me.SelCount = 1 Then
		    Editor.Set = New Beacon.ItemSet(Me.RowTag(Me.ListIndex))
		    Editor.Enabled = True
		  Else
		    Editor.Enabled = False
		    Editor.Set = Nil
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function CanCopy() As Boolean
		  Return Me.SelCount > -1
		End Function
	#tag EndEvent
	#tag Event
		Function CanPaste(Board As Clipboard) As Boolean
		  Return Board.RawDataAvailable(Self.kClipboardType) Or (Board.TextAvailable And Left(Board.Text, 1) = "(")
		End Function
	#tag EndEvent
	#tag Event
		Sub PerformClear(Warn As Boolean)
		  Self.RemoveSelectedItemSets(Warn)
		End Sub
	#tag EndEvent
	#tag Event
		Sub PerformCopy(Board As Clipboard)
		  Dim Dicts() As Xojo.Core.Dictionary
		  Dim SumSetWeights As Double
		  For I As Integer = 0 To Me.ListCount - 1
		    Dim Set As Beacon.ItemSet = Me.RowTag(I)
		    SumSetWeights = SumSetWeights + Set.Weight
		  Next
		  For I As Integer = 0 To Me.ListCount - 1
		    If Not Me.Selected(I) Then
		      Continue
		    End If
		    
		    Dim Set As Beacon.ItemSet = Me.RowTag(I)
		    Dim Dict As Xojo.Core.Dictionary = Set.Export
		    If Dict <> Nil Then
		      Dicts.Append(Dict)
		    End If
		  Next
		  If UBound(Dicts) = -1 Then
		    Return
		  End If
		  
		  Dim Contents As Text
		  If UBound(Dicts) = 0 Then
		    Contents = Xojo.Data.GenerateJSON(Dicts(0))
		  Else
		    Contents = Xojo.Data.GenerateJSON(Dicts)
		  End If
		  
		  Board.AddRawData(Contents, Self.kClipboardType)
		End Sub
	#tag EndEvent
	#tag Event
		Sub PerformPaste(Board As Clipboard)
		  If UBound(Self.mSources) = -1 Then
		    Return
		  End If
		  
		  If Board.RawDataAvailable(Self.kClipboardType) Then
		    Dim Contents As String = DefineEncoding(Board.RawData(Self.kClipboardType), Encodings.UTF8)
		    Dim Parsed As Auto
		    Try
		      Parsed = Xojo.Data.ParseJSON(Contents.ToText)
		    Catch Err As Xojo.Data.InvalidJSONException
		      Beep
		      Return
		    End Try
		    
		    Dim Info As Xojo.Introspection.TypeInfo = Xojo.Introspection.GetType(Parsed)
		    Dim Dicts() As Xojo.Core.Dictionary
		    If Info.FullName = "Xojo.Core.Dictionary" Then
		      Dicts.Append(Parsed)
		    ElseIf Info.FullName = "Auto()" Then
		      Dim Values() As Auto = Parsed
		      For Each Dict As Xojo.Core.Dictionary In Values
		        Dicts.Append(Dict)
		      Next
		    Else
		      Beep
		      Return
		    End If
		    
		    Dim Updated As Boolean
		    Dim SetNames() As String
		    For Each Source As Beacon.LootSource In Self.mSources
		      For Each Dict As Xojo.Core.Dictionary In Dicts
		        Dim Set As Beacon.ItemSet = Beacon.ItemSet.ImportFromBeacon(Dict)
		        If Set <> Nil Then
		          Source.Append(Set)
		          Updated = True
		          If SetNames.IndexOf(Set.Label) = -1 Then
		            SetNames.Append(Set.Label)
		          End If
		        End If
		      Next
		    Next
		    
		    Self.RebuildSetList(SetNames)
		    If Updated Then
		      RaiseEvent Updated
		    End If
		  ElseIf Board.TextAvailable And Left(Board.Text, 1) = "(" Then
		    Dim Contents As String = Board.Text
		    If Left(Contents, 2) = "((" Then
		      // This may be multiple item sets from the dev kit, so wrap it up like a full loot source
		      // No additional wrapping necessary, but we need to make sure the next clause is not hit
		    ElseIf Left(Contents, 1) = "(" Then
		      // This may be a single item set from the dev kit, so wrap it up like a full loot source
		      Contents = "(" + Contents + ")"
		    End If
		    
		    Dim Lines() As String
		    For Each Source As Beacon.LootSource In Self.mSources
		      Lines.Append("ConfigOverrideSupplyCrateItems=(SupplyCrateClassString=""" + Source.ClassString + """,MinItemSets=1,MaxItemSets=3,NumItemSetsPower=1.000000,bSetsRandomWithoutReplacement=true,ItemSets=" + Contents + ")")
		    Next
		    Self.Import(Join(Lines, EndOfLine), "Clipboard")
		  End
		End Sub
	#tag EndEvent
	#tag Event
		Function CanDelete() As Boolean
		  Return Me.SelCount > -1
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  Dim Targets() As Beacon.ItemSet
		  If Me.SelCount = 0 Then
		    Dim Idx As Integer = Me.RowFromXY(X, Y)
		    If Idx = -1 Then
		      Return False
		    End If
		    Targets.Append(Me.RowTag(Idx))
		  Else
		    For I As Integer = 0 To Me.ListCount - 1
		      If Me.Selected(I) Then
		        Targets.Append(Me.RowTag(I))
		      End If
		    Next
		  End If
		  
		  If UBound(Targets) = -1 Then
		    Return False
		  End If
		  
		  Dim Presets(), Preset As Beacon.Preset
		  Dim PresetFound As Boolean
		  For Each Set As Beacon.ItemSet In Targets
		    If Set.SourcePresetID = "" Or PresetFound = True Then
		      Continue
		    End If
		    
		    If UBound(Presets) = -1 Then
		      Presets = Beacon.Data.Presets
		    End If
		    
		    For I As Integer = 0 To UBound(Presets)
		      If Presets(I).PresetID = Set.SourcePresetID Then
		        Preset = Presets(I)
		        PresetFound = True
		        Exit For I
		      End If
		    Next
		  Next
		  
		  Dim CreateItem As New MenuItem("Create Preset…", Targets)
		  CreateItem.Name = "createpreset"
		  CreateItem.Enabled = UBound(Targets) = 0
		  If PresetFound And CreateItem.Enabled Then
		    CreateItem.Text = "Update """ + Preset.Label + """ Preset…"
		  End If
		  Base.Append(CreateItem)
		  
		  Dim ReconfigureItem As New MenuItem("Rebuild From Preset", Targets)
		  ReconfigureItem.Name = "reconfigure"
		  ReconfigureItem.Enabled = PresetFound
		  If ReconfigureItem.Enabled Then
		    If UBound(Targets) = 0 Then
		      ReconfigureItem.Text = "Rebuild From """ + Preset.Label + """ Preset"
		    Else
		      ReconfigureItem.Text = "Rebuild From Presets"
		    End If
		  End If
		  Base.Append(ReconfigureItem)
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  If HitItem = Nil Then
		    Return False
		  End If
		  
		  Dim Targets() As Beacon.ItemSet = HitItem.Tag
		  
		  Select Case HitItem.Name
		  Case "createpreset"
		    If UBound(Targets) = 0 Then
		      PresetWindow.Present(Targets(0))
		    End If
		  Case "reconfigure"
		    Dim Presets() As Beacon.Preset = Beacon.Data.Presets
		    Dim Updated As Boolean
		    For Each Set As Beacon.ItemSet In Targets
		      For Each Preset As Beacon.Preset In Presets
		        If Set.SourcePresetID <> Preset.PresetID Then
		          Continue
		        End If
		        
		        For Each Source As Beacon.LootSource In Self.mSources
		          Dim OriginalHash As Text = Set.Hash
		          Dim NewSet As Beacon.ItemSet = New Beacon.ItemSet(Set)
		          NewSet.ReconfigureWithPreset(Preset, Source, Self.CurrentMap)
		          If NewSet.Hash = OriginalHash Then
		            Continue
		          End If
		          
		          Dim Idx As Integer = Source.IndexOf(Set)
		          If Idx > -1 Then
		            Source(Idx) = NewSet
		            Updated = True
		          End If
		        Next
		        
		        Continue For Set
		      Next
		    Next
		    
		    If Not Updated Then
		      If UBound(Targets) = 0 Then
		        Self.ShowAlert("No changes made", "This item set is already identical to the preset.")
		      Else
		        Self.ShowAlert("No changes made", "All item sets already match their preset.")
		      End If
		      Return True
		    End If
		    
		    Self.RebuildSetList()
		    RaiseEvent Updated
		    
		    If UBound(Targets) > 0 Then
		      // Editor will be disabled, so it won't be obvious something happened.
		      Self.ShowAlert("Rebuild complete", "All selected item sets have been rebuilt according to their preset.")
		    End If
		  End Select
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function CellTextPaint(G As Graphics, Row As Integer, Column As Integer, ByRef TextColor As Color, DrawSpace As Xojo.Core.Rect, VerticalPosition As Integer, IsHighlighted As Boolean) As Boolean
		  #Pragma Unused Column
		  #Pragma Unused DrawSpace
		  #Pragma Unused VerticalPosition
		  
		  Dim Set As Beacon.ItemSet = Me.RowTag(Row)
		  If Not Set.IsValid Then
		    TextColor = BeaconUI.TextColorForInvalidRow(IsHighlighted, Me.Selected(Row))
		    G.Bold = Not Set.IsValid
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(G As Graphics, Row As Integer, Column As Integer, BackgroundColor As Color, TextColor As Color, IsHighlighted As Boolean) As Boolean
		  #Pragma Unused BackgroundColor
		  #Pragma Unused TextColor
		  
		  If Column <> 0 Or Row >= Me.ListCount Then
		    Return False
		  End If
		  
		  Dim Set As Beacon.ItemSet = Me.RowTag(Row)
		  If Not Set.IsValid Then
		    G.ForeColor = BeaconUI.BackgroundColorForInvalidRow(G.ForeColor, IsHighlighted, Me.Selected(Row))
		    G.FillRect(0, 0, G.Width, G.Height)
		    Return True
		  End If
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Separators
	#tag Event
		Sub Paint(index as Integer, g As Graphics, areas() As REALbasic.Rect)
		  #Pragma Unused areas
		  
		  G.ForeColor = &cCCCCCC
		  G.FillRect(-1, -1, G.Width + 2, G.Height + 2)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Editor
	#tag Event
		Sub Updated()
		  // The set needs to be cloned into each loot source
		  
		  If SetList.SelCount <> 1 Then
		    Return
		  End If
		  
		  Dim SelIndex As Integer = SetList.ListIndex
		  Dim OriginalSet As Beacon.ItemSet = SetList.RowTag(SelIndex)
		  Dim NewSet As Beacon.ItemSet = Editor.Set
		  
		  For Each Source As Beacon.LootSource In Self.mSources
		    Dim Idx As Integer = Source.IndexOf(OriginalSet)
		    If Idx > -1 Then
		      Source(Idx) = New Beacon.ItemSet(NewSet)
		    End If
		  Next
		  
		  SetList.Cell(SelIndex, 0) = NewSet.Label
		  SetList.RowTag(SelIndex) = New Beacon.ItemSet(NewSet)
		  
		  Self.mSorting = True
		  SetList.Sort
		  Self.mSorting = False
		  
		  RaiseEvent Updated
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Footer
	#tag Event
		Sub Action(Button As FooterBarButton)
		  Select Case Button.Name
		  Case "AddButton"
		    Self.AddSet(New Beacon.ItemSet)
		  Case "DeleteButton"
		    Self.RemoveSelectedItemSets(True)
		  End Select
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Dim AddButton As New FooterBarButton("AddButton", IconAddWithMenu)
		  Dim DeleteButton As New FooterBarButton("DeleteButton", IconRemove)
		  
		  DeleteButton.Enabled = False
		  
		  Me.Append(AddButton)
		  Me.Append(DeleteButton)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseHold(Button As FooterBarButton) As Boolean
		  Select Case Button.Name
		  Case "AddButton"
		    Dim Base As New MenuItem
		    Self.BuildPresetMenu(Base)
		    
		    Dim Position As Xojo.Core.Point = Self.GlobalPosition
		    Dim Choice As MenuItem = Base.PopUp(Position.X + Me.Left + Button.Left, Position.Y + Me.Top + Button.Top + Button.Height)
		    If Choice = Nil Then
		      Return True
		    End If
		    
		    Call Self.HandlePresetMenu(Choice)
		    Return True
		  End Select
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Header
	#tag Event
		Sub Resize(NewSize As Integer)
		  Me.Height = NewSize
		  SetList.Top = NewSize
		  SetList.Height = Separators(2).Top - NewSize
		  Self.Refresh(False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Importer
	#tag Event
		Sub UpdateUI()
		  If Me.LootSourcesProcessed = Me.BeaconCount Then
		    If Self.ImportProgress <> Nil Then
		      Self.ImportProgress.Close
		      Self.ImportProgress = Nil
		    End If
		    
		    Dim SourceLootSources() As Beacon.LootSource = Me.LootSources
		    Me.Reset
		    
		    Dim Updated As Boolean
		    Dim SetNames() As String
		    For Each SourceLootSource As Beacon.LootSource In SourceLootSources
		      Dim DestinationLootSource As Beacon.LootSource
		      For I As Integer = 0 To UBound(Self.mSources)
		        If SourceLootSource.ClassString = Self.mSources(I).ClassString Then
		          DestinationLootSource = Self.mSources(I)
		          Exit For I
		        End If
		      Next
		      If DestinationLootSource <> Nil Then
		        For Each Set As Beacon.ItemSet In SourceLootSource
		          DestinationLootSource.Append(Set)
		          Updated = True
		          If SetNames.IndexOf(Set.Label) = -1 Then
		            SetNames.Append(Set.Label)
		          End If
		        Next
		      End If
		    Next
		    
		    Self.RebuildSetList(SetNames)
		    If Updated Then
		      RaiseEvent Updated
		    End If
		    Return
		  End If
		  
		  If Self.ImportProgress <> Nil Then
		    Self.ImportProgress.BeaconCount = Me.BeaconCount
		    Self.ImportProgress.LootSourcesProcessed = Me.LootSourcesProcessed
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="AcceptFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Appearance"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Group="Position"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
