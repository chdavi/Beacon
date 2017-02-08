#tag Menu
Begin Menu MainMenuBar
   Begin MenuItem FileMenu
      SpecialMenu = 0
      Text = "#Language.MenuFile"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem FileNew
         SpecialMenu = 0
         Text = "#Language.MenuNewDocument"
         Index = -2147483648
         ShortcutKey = "N"
         Shortcut = "Cmd+N"
         MenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileOpen
         SpecialMenu = 0
         Text = "#Language.MenuOpen"
         Index = -2147483648
         ShortcutKey = "O"
         Shortcut = "Cmd+O"
         MenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileClose
         SpecialMenu = 0
         Text = "#Language.MenuClose"
         Index = -2147483648
         ShortcutKey = "W"
         Shortcut = "Cmd+W"
         MenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledSeparator
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileSave
         SpecialMenu = 0
         Text = "#Language.MenuSave"
         Index = -2147483648
         ShortcutKey = "S"
         Shortcut = "Cmd+S"
         MenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileSaveAs
         SpecialMenu = 0
         Text = "#Language.MenuSaveAs"
         Index = -2147483648
         ShortcutKey = "S"
         Shortcut = "Cmd+Shift+S"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledSeparator9
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileImport
         SpecialMenu = 0
         Text = "#Language.MenuImport"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem FileExport
         SpecialMenu = 0
         Text = "#Language.MenuExport"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledSeparator0
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin QuitMenuItem FileQuit
         SpecialMenu = 0
         Text = "#Language.MenuQuit"
         Index = -2147483648
         ShortcutKey = "Q"
         Shortcut = "Cmd+Q"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem EditMenu
      SpecialMenu = 0
      Text = "#Language.MenuEdit"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem EditUndo
         SpecialMenu = 0
         Text = "#Language.MenuUndo"
         Index = -2147483648
         ShortcutKey = "Z"
         Shortcut = "Cmd+Z"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditSeparator1
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCut
         SpecialMenu = 0
         Text = "#Language.MenuCut"
         Index = -2147483648
         ShortcutKey = "X"
         Shortcut = "Cmd+X"
         MenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem EditCopy
         SpecialMenu = 0
         Text = "#Language.MenuCopy"
         Index = -2147483648
         ShortcutKey = "C"
         Shortcut = "Cmd+C"
         MenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem EditPaste
         SpecialMenu = 0
         Text = "#Language.MenuPaste"
         Index = -2147483648
         ShortcutKey = "V"
         Shortcut = "Cmd+V"
         MenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem EditClear
         SpecialMenu = 0
         Text = "#Language.MenuClear"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem EditSeparator2
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditSelectAll
         SpecialMenu = 0
         Text = "#Language.MenuSelectAll"
         Index = -2147483648
         ShortcutKey = "A"
         Shortcut = "Cmd+A"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem DocumentMenu
      SpecialMenu = 0
      Text = "#Language.MenuDocument"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem DocumentAddBeacon
         SpecialMenu = 0
         Text = "#Language.MenuAddLootSource"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem DocumentDuplicateBeacon
         SpecialMenu = 0
         Text = "#Language.MenuDuplicateLootSource"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem DocumentRemoveBeacon
         SpecialMenu = 0
         Text = "#Language.MenuRemoveLootSource"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledSeparator1
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem DocumentAddItemSet
         SpecialMenu = 0
         Text = "#Language.MenuAddItemSet"
         Index = -2147483648
         AutoEnable = False
         SubMenu = True
         Visible = True
         Begin MenuItem AddItemSetEmpty
            SpecialMenu = 0
            Text = "#Language.MenuNewEmptySet"
            Index = -2147483648
            AutoEnable = False
            Visible = True
         End
      End
      Begin MenuItem DocumentRemoveItemSet
         SpecialMenu = 0
         Text = "#Language.MenuRemoveItemSet"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledSeparator2
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem DocumentPublishDocument
         SpecialMenu = 0
         Text = "#Language.MenuPublishDocument"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem DocumentUnpublishDocument
         SpecialMenu = 0
         Text = "#Language.MenuUnpublishDocument"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
   End
   Begin MenuItem WindowMenu
      SpecialMenu = 0
      Text = "#Language.MenuWindow"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem WindowMinimize
         SpecialMenu = 0
         Text = "#Language.MenuMinimize"
         Index = -2147483648
         ShortcutKey = "M"
         Shortcut = "Cmd+M"
         MenuModifier = True
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem WindowZoom
         SpecialMenu = 0
         Text = "#Language.MenuZoom"
         Index = -2147483648
         AutoEnable = False
         Visible = True
      End
      Begin MenuItem UntitledSeparator3
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem WindowPresetLibrary
         SpecialMenu = 0
         Text = "#PresetManagerWindow.PresetLibrary"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator4
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = False
      End
   End
   Begin MenuItem HelpMenu
      SpecialMenu = 0
      Text = "#Language.MenuHelp"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin ApplicationMenuItem HelpAboutBeacon
         SpecialMenu = 0
         Text = "#Language.MenuAboutBeacon"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin ApplicationMenuItem HelpCheckforUpdates
         SpecialMenu = 0
         Text = "#Language.MenuCheckForUpdates"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem HelpReportAProblem
         SpecialMenu = 0
         Text = "#Language.MenuReportAProblem"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem HelpMakeADonation
         SpecialMenu = 0
         Text = "#Language.MenuMakeADonation"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
End
#tag EndMenu
