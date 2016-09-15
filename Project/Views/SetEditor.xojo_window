#tag Window
Begin ContainerControl SetEditor
   AcceptFocus     =   False
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   428
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
   Width           =   560
   Begin Listbox EntryList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   False
      ColumnCount     =   6
      ColumnsResizable=   False
      ColumnWidths    =   "*,80,80,80,80,80"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   22
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   213
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Description	Min Quantity	Max Quantity	Min Quality	Max Quality	Chance"
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   2
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   1
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   190
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   560
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin TextField LabelField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   112
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   428
   End
   Begin Label LabelLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      Text            =   "Label:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin TextField MinItemsField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   112
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   "###"
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   54
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin TextField MaxItemsField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   112
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   "###"
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   88
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Slider WeightSlider
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   112
      LineStep        =   5
      LiveScroll      =   True
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Maximum         =   100
      Minimum         =   0
      PageStep        =   25
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   122
      Value           =   100
      Visible         =   True
      Width           =   139
   End
   Begin Label WeightField
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   263
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      Text            =   "100"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   122
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Label MinItemsLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      Text            =   "Min Items:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   54
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label MaxItemsLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      Text            =   "Max Items:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   88
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label WeightLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      Text            =   "Weight:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   122
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin CheckBox DuplicatesCheck
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "No Duplicates"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   112
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      State           =   1
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   157
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   251
   End
   Begin GraphicButton AddButton
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   24
      HelpTag         =   ""
      IconDisabled    =   0
      IconNormal      =   0
      IconPressed     =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   404
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   30
   End
   Begin FooterBar FooterBar1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   93
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   404
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   467
   End
   Begin GraphicButton EditButton
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   False
      EraseBackground =   True
      Height          =   24
      HelpTag         =   ""
      IconDisabled    =   0
      IconNormal      =   0
      IconPressed     =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   31
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   404
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   30
   End
   Begin ControlCanvas Separators
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   True
      Enabled         =   True
      EraseBackground =   False
      Height          =   1
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   189
      Transparent     =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   560
   End
   Begin ControlCanvas Separators
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   True
      Enabled         =   True
      EraseBackground =   False
      Height          =   1
      HelpTag         =   ""
      Index           =   1
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   403
      Transparent     =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   560
   End
   Begin GraphicButton DeleteButton
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   False
      EraseBackground =   True
      Height          =   24
      HelpTag         =   ""
      IconDisabled    =   0
      IconNormal      =   0
      IconPressed     =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   62
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   404
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   30
   End
   Begin ControlCanvas Separators
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   True
      Enabled         =   True
      EraseBackground =   False
      Height          =   24
      HelpTag         =   ""
      Index           =   2
      InitialParent   =   ""
      Left            =   30
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   404
      Transparent     =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   1
   End
   Begin ControlCanvas Separators
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   True
      Enabled         =   True
      EraseBackground =   False
      Height          =   24
      HelpTag         =   ""
      Index           =   3
      InitialParent   =   ""
      Left            =   61
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   404
      Transparent     =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   1
   End
   Begin ControlCanvas Separators
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   True
      Enabled         =   True
      EraseBackground =   False
      Height          =   24
      HelpTag         =   ""
      Index           =   4
      InitialParent   =   ""
      Left            =   92
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   404
      Transparent     =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   1
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Function Describe(Entry As Ark.SetEntry) As String
		  If UBound(Entry) = -1 Then
		    Return "No Items"
		  ElseIf UBound(Entry) = 0 Then
		    Return App.DataSource.NameOfEngram(Entry(0).ClassString)
		  Else
		    Dim TotalWeight As Double
		    For I As Integer = 0 To UBound(Entry)
		      TotalWeight = TotalWeight + Entry(I).Weight
		    Next
		    
		    Dim Labels() As String
		    For I As Integer = 0 To UBound(Entry)
		      Labels.Append(App.DataSource.NameOfEngram(Entry(I).ClassString) + ":" + Str(Entry(I).Weight / TotalWeight, "0%"))
		    Next
		    Return Join(Labels, ", ")
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableMenuItems()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateEntryList()
		  EntryList.DeleteAllRows
		  If Self.mSet <> Nil Then
		    For I As Integer = 0 To UBound(Self.mSet)
		      Dim Entry As Ark.SetEntry = Self.mSet(I)
		      EntryList.AddRow(Self.Describe(Entry), Str(Entry.MinQuantity), Str(Entry.MaxQuantity), Str(Entry.MinQuality), Str(Entry.MaxQuality), Str(Self.mSet.RelativeWeight(I), "0%"))
		      EntryList.RowTag(EntryList.LastIndex) = Entry
		    Next
		  End If
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Updated()
	#tag EndHook


	#tag Property, Flags = &h21
		Private mSet As Ark.ItemSet
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mUpdating As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mSet
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Self.mSet = Value
			  
			  Self.mUpdating = True
			  If Self.mSet <> Nil Then
			    LabelField.Text = Self.mSet.Label
			    MinItemsField.Text = Str(Self.mSet.MinNumItems, "-0")
			    MaxItemsField.Text = Str(Self.mSet.MaxNumItems, "-0")
			    WeightSlider.Value = Self.mSet.Weight * 100
			    DuplicatesCheck.Value = Self.mSet.ItemsRandomWithoutReplacement
			  Else
			    LabelField.Text = ""
			    MinItemsField.Text = ""
			    MaxItemsField.Text = ""
			    WeightSlider.Value = 100
			    DuplicatesCheck.Value = True
			  End If
			  Self.UpdateEntryList()
			  Self.mUpdating = False
			End Set
		#tag EndSetter
		Set As Ark.ItemSet
	#tag EndComputedProperty


#tag EndWindowCode

#tag Events EntryList
	#tag Event
		Sub Change()
		  EditButton.Enabled = Me.SelCount > 0
		  DeleteButton.Enabled = Me.SelCount > 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LabelField
	#tag Event
		Sub TextChange()
		  If Self.mUpdating Then
		    Return
		  End If
		  
		  Self.mSet.Label = Me.Text.ToText
		  RaiseEvent Updated
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MinItemsField
	#tag Event
		Sub TextChange()
		  If Self.mUpdating Then
		    Return
		  End If
		  
		  Self.mSet.MinNumItems = Val(Me.Text)
		  RaiseEvent Updated
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MaxItemsField
	#tag Event
		Sub TextChange()
		  If Self.mUpdating Then
		    Return
		  End If
		  
		  Self.mSet.MaxNumItems = Val(Me.Text)
		  RaiseEvent Updated
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events WeightSlider
	#tag Event
		Sub ValueChanged()
		  WeightField.Text = Str(Me.Value, "-0")
		  
		  If Self.mUpdating Then
		    Return
		  End If
		  
		  Self.mSet.Weight = Me.Value / 100
		  RaiseEvent Updated
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DuplicatesCheck
	#tag Event
		Sub Action()
		  If Self.mUpdating Then
		    Return
		  End If
		  
		  Self.mSet.ItemsRandomWithoutReplacement = Me.Value
		  RaiseEvent Updated
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AddButton
	#tag Event
		Sub Open()
		  Me.IconNormal = IconAddNormal
		  Me.IconPressed = IconAddPressed
		  Me.IconDisabled = IconAddDisabled
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  Dim Entries() As Ark.SetEntry = EntryEditor.Present(Self)
		  If Entries = Nil Then
		    Return
		  End If
		  
		  For Each Entry As Ark.SetEntry In Entries
		    Self.mSet.Append(Entry)
		  Next
		  
		  Self.UpdateEntryList()
		  RaiseEvent Updated
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditButton
	#tag Event
		Sub Open()
		  Me.IconNormal = IconEditNormal
		  Me.IconPressed = IconEditPressed
		  Me.IconDisabled = IconEditDisabled
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  Dim Sources() As Ark.SetEntry
		  For I As Integer = 0 To EntryList.ListCount - 1
		    If Not EntryList.Selected(I) Then
		      Continue
		    End If
		    
		    Sources.Append(EntryList.RowTag(I))
		  Next
		  
		  Dim Entries() As Ark.SetEntry = EntryEditor.Present(Self, Sources)
		  If Entries = Nil Then
		    Return
		  End If
		  
		  For I As Integer = 0 To UBound(Entries)
		    Dim Source As Ark.SetEntry = Sources(I)
		    Dim Idx As Integer = Self.mSet.IndexOf(Source)
		    Self.mSet(Idx) = Entries(I)
		  Next
		  
		  Self.UpdateEntryList()
		  RaiseEvent Updated
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Separators
	#tag Event
		Sub Paint(index as Integer, g As Graphics, areas() As REALbasic.Rect)
		  #Pragma Unused areas
		  
		  G.ForeColor = &cCCCCCC
		  G.FillRect(0, 0, G.Width, G.Height)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeleteButton
	#tag Event
		Sub Open()
		  Me.IconNormal = IconRemoveNormal
		  Me.IconPressed = IconRemovePressed
		  Me.IconDisabled = IconRemoveDisabled
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  Dim Changed As Boolean
		  
		  For I As Integer = EntryList.ListCount - 1 DownTo 0
		    If Not EntryList.Selected(I) Then
		      Continue
		    End If
		    
		    Dim Entry As Ark.SetEntry = EntryList.RowTag(I)
		    Dim Idx As Integer = Self.mSet.IndexOf(Entry)
		    Self.mSet.Remove(Idx)
		    Changed = True
		  Next
		  
		  If Changed Then
		    Self.UpdateEntryList()
		    RaiseEvent Updated
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