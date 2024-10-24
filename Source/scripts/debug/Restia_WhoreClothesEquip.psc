Scriptname Restia_WhoreClothesEquip extends ObjectReference

Actor Property PlayerRef Auto 

Event OnEquipped(Actor akActor)
	Debug.Notification("OnEquipped Event Fired")
	If akActor == PlayerRef
		Debug.Notification("Player Equipped the Item")
		Int EventHandle = ModEvent.Create("SLSF_Reloaded_SetWhoreFlag")
		If (EventHandle)
			ModEvent.PushString(EventHandle, "Restia_WhoreClothesEquip")
			ModEvent.PushBool(EventHandle, True)
			ModEvent.Send(EventHandle)
		EndIf
	EndIf

EndEvent

Event OnUnequipped(Actor akActor)
	Debug.Notification("OnUnequipped Event Fired")
	If akActor == PlayerRef
		Debug.Notification("Player Unequipped the Item")
		Int EventHandle = ModEvent.Create("SLSF_Reloaded_SetWhoreFlag")
		If (EventHandle)
			ModEvent.PushString(EventHandle, "Restia_WhoreClothesEquip")
			ModEvent.PushBool(EventHandle, False)
			ModEvent.Send(EventHandle)
		EndIf
	EndIf

EndEvent