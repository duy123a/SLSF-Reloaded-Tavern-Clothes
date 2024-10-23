Scriptname Restia_WhoreFameGain extends Quest Hidden

; Declare GlobalVariable for fame tracking
GlobalVariable SLSFR_CurrentWhoreFame
Bool property bChecked = False Auto Hidden

; Initialize the quest when it starts
event OnInit()
    Utility.Wait(5.0)  ; Wait for 5 seconds before setting variables
    setVars()
endEvent

Function setVars()
    bChecked = isPluginFound("SLSF Reloaded.esp")
    If bChecked
        ; Try to retrieve the GlobalVariable from the plugin
        SLSFR_CurrentWhoreFame = Game.GetFormFromFile(0x00080d, "SLSF Reloaded.esp") as GlobalVariable
    EndIf
endFunction

Bool function isPluginFound(string pluginName) Global
    {Checks if the plugin is installed. Works for LE and SE}
    If SKSE.GetVersion() < 2
        return (Game.GetModByName(pluginName) != 255)  ; LE version
    EndIf
    return Game.IsPluginInstalled(pluginName)  ; SE version
endFunction

Function IncreaseWhoreFame() Global
	If bChecked
        int handle = ModEvent.Create("SLSF_Reloaded_SendManualFameGain")
		if (handle)
				ModEvent.PushString(handle, "Whore")
				ModEvent.PushString(handle, "Current")
				ModEvent.PushInt(handle, 20)
				ModEvent.PushInt(handle, 100)
				ModEvent.Send(handle)
		endIf
	EndIf
EndFunction
			
Function StopWhoreFameGain() Global
    If bChecked

	EndIf
EndFunction