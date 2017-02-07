#tag Window
Begin BeaconWindow AboutWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   286
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   286
   MinimizeButton  =   False
   MinWidth        =   360
   Placement       =   2
   Resizeable      =   False
   Title           =   ""
   Visible         =   True
   Width           =   360
   Begin ControlCanvas IconCanvas
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   True
      Enabled         =   True
      EraseBackground =   False
      Height          =   64
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   148
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   20
      Transparent     =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   64
   End
   Begin Label NameLabel
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      Text            =   "Beacon"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   96
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   320
   End
   Begin Label VersionLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      Text            =   "Version X"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   128
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   320
   End
   Begin Label CopyrightLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      Text            =   "#Copyright"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   214
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   320
   End
   Begin Label LinkLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      Text            =   "https://thezaz.com/beacon"
      TextAlign       =   1
      TextColor       =   &c0000FF00
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   246
      Transparent     =   True
      Underline       =   True
      Visible         =   True
      Width           =   320
   End
   Begin Label SyncLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      Text            =   "Engrams Updated Y"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   160
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   320
   End
   Begin UITweaks.ResizedPushButton UpdateEngramsButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#UpdateEngrams"
      Default         =   False
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   127
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   184
      Underline       =   False
      Visible         =   True
      Width           =   107
   End
   Begin ProgressWheel UpdateEngramsSpinner
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   172
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   -50
      Visible         =   True
      Width           =   16
   End
   Begin Xojo.Net.HTTPSocket UpdateEngramsSocket
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   2
      TabPanelIndex   =   0
      ValidateCertificates=   False
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Self.Update()
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Update()
		  Dim LastSync As Xojo.Core.Date = App.LocalData.LastSync
		  If LastSync = Nil Then
		    SyncLabel.Text = Self.NoEngramsAvailable
		  Else
		    SyncLabel.Text = Language.Format(Self.EngramsUpdated, LastSync.ToText(Xojo.Core.Locale.Current, Xojo.Core.Date.FormatStyles.Long, Xojo.Core.Date.FormatStyles.Short))
		  End If
		  
		  VersionLabel.Text = Language.Format(Self.VersionString, App.ShortVersion, Str(App.NonReleaseVersion, "-0"))
		End Sub
	#tag EndMethod


	#tag Constant, Name = ChecksumFailed, Type = String, Dynamic = True, Default = \"Checksum verification failed. Expected hash %%1%% but computed %%2%% instead.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Checksum verification failed. Expected hash %%1%% but computed %%2%% instead."
	#tag EndConstant

	#tag Constant, Name = Copyright, Type = String, Dynamic = True, Default = \"\xC2\xA9 2016 Thom McGrath\x2C All Rights Reserved.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"\xC2\xA9 2016 Thom McGrath\x2C All Rights Reserved."
	#tag EndConstant

	#tag Constant, Name = EngramsUpdated, Type = String, Dynamic = True, Default = \"Engrams Updated %%1%% UTC", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Engrams Updated %%1%% UTC"
	#tag EndConstant

	#tag Constant, Name = NoEngramsAvailable, Type = String, Dynamic = True, Default = \"No engram data available", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"No engram data available"
	#tag EndConstant

	#tag Constant, Name = UnableToContactServer, Type = String, Dynamic = True, Default = \"Unable to contact server. Reason: \"\"%%1%%\"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Unable to contact server. Reason: \"\"%%1%%\""
	#tag EndConstant

	#tag Constant, Name = UnexpectedHTTPResponse, Type = String, Dynamic = True, Default = \"Server replied with HTTP %%1%%.", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Server replied with HTTP %%1%%."
	#tag EndConstant

	#tag Constant, Name = UpdateEngrams, Type = String, Dynamic = True, Default = \"Update Engrams", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Update Engrams"
	#tag EndConstant

	#tag Constant, Name = VersionString, Type = String, Dynamic = True, Default = \"Version %%1%% (Build %%2%%)", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Version %%1%% (Build %%2%%)"
	#tag EndConstant


#tag EndWindowCode

#tag Events IconCanvas
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #Pragma Unused areas
		  
		  G.DrawPicture(IconApp, 0, 0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LinkLabel
	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor = System.Cursors.FingerPointer
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #Pragma Unused X
		  #Pragma Unused Y
		  
		  Me.TextColor = &cFF0000
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  If X >= 0 And X <= Me.Width And Y >= 0 And Y <= Me.Height Then
		    Me.TextColor = &cFF0000
		    Me.MouseCursor = System.Cursors.FingerPointer
		  Else
		    Me.TextColor = &c0000FF
		    Me.MouseCursor = System.Cursors.StandardPointer
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  If X >= 0 And X <= Me.Width And Y >= 0 And Y <= Me.Height Then
		    ShowURL(Me.Text)
		    Me.TextColor = &c0000FF
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UpdateEngramsButton
	#tag Event
		Sub Action()
		  Dim Top As Integer = UpdateEngramsButton.Top
		  UpdateEngramsButton.Top = -100
		  UpdateEngramsSpinner.Top = Top + ((UpdateEngramsButton.Height - UpdateEngramsSpinner.Height) / 2)
		  
		  Dim URL As Text = App.LocalData.ClassesURL
		  UpdateEngramsSocket.ValidateCertificates = True
		  UpdateEngramsSocket.Send("GET", URL)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UpdateEngramsSocket
	#tag Event
		Sub Error(err as RuntimeException)
		  Dim Top As Integer = UpdateEngramsSpinner.Top
		  UpdateEngramsSpinner.Top = -100
		  UpdateEngramsButton.Top = Top + ((UpdateEngramsButton.Height - UpdateEngramsSpinner.Height) / 2)
		  
		  Dim Dialog As New MessageDialog
		  Dialog.Title = ""
		  Dialog.Message = App.UnableToImportEngrams
		  Dialog.Explanation = Language.Format(Self.UnableToContactServer, Err.Reason)
		  Call Dialog.ShowModal
		End Sub
	#tag EndEvent
	#tag Event
		Sub PageReceived(URL as Text, HTTPStatus as Integer, Content as xojo.Core.MemoryBlock)
		  Dim Top As Integer = UpdateEngramsSpinner.Top
		  UpdateEngramsSpinner.Top = -100
		  UpdateEngramsButton.Top = Top + ((UpdateEngramsButton.Height - UpdateEngramsSpinner.Height) / 2)
		  
		  If HTTPStatus <> 200 Then
		    Dim Dialog As New MessageDialog
		    Dialog.Title = ""
		    Dialog.Message = App.UnableToImportEngrams
		    Dialog.Explanation = Language.Format(Self.UnexpectedHTTPResponse, Str(HTTPStatus, "-0"))
		    Call Dialog.ShowModal
		    Return
		  End If
		  
		  Dim TextContent As Text = Xojo.Core.TextEncoding.UTF8.ConvertDataToText(Content)
		  Dim ExpectedHash As Text = Me.ResponseHeader("Content-MD5")
		  Dim ComputedHash As Text = EncodeHex(Crypto.MD5(TextContent)).ToText
		  
		  If ComputedHash <> ExpectedHash Then
		    Dim Dialog As New MessageDialog
		    Dialog.Title = ""
		    Dialog.Message = App.UnableToImportEngrams
		    Dialog.Explanation = Language.Format(Self.ChecksumFailed, ExpectedHash, ComputedHash)
		    Call Dialog.ShowModal
		    Return
		  End If
		  
		  If App.LocalData.Import(TextContent) Then
		    Self.Update()
		    
		    Dim LastSync As Xojo.Core.Date = App.LocalData.LastSync
		    Dim Dialog As New MessageDialog
		    Dialog.Title = ""
		    Dialog.Message = App.EngramsUpdatedMessage
		    Dialog.Explanation = Language.Format(App.EngramsUpdatedExplanation, LastSync.ToText(Xojo.Core.Locale.Current, Xojo.Core.Date.FormatStyles.Long, Xojo.Core.Date.FormatStyles.Short))
		    Call Dialog.ShowModal
		  Else
		    Dim Dialog As New MessageDialog
		    Dialog.Title = ""
		    Dialog.Message = App.UnableToImportEngrams
		    Dialog.Explanation = App.UnableToImportExplanation
		    Call Dialog.ShowModal
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
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
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
