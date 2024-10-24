Scriptname Restia_WhoreClothesEquip extends ObjectReference

Actor Property PlayerRef Auto 

Event OnEquipped(Actor akActor)

	If akActor == PlayerRef
		Int EventHandle = ModEvent.Create("SLSF_Reloaded_SetWhoreFlag")
		If (EventHandle)
			ModEvent.PushString(EventHandle, "Restia_WhoreClothesEquip")
			ModEvent.PushBool(EventHandle, True)
			ModEvent.Send(EventHandle)
		EndIf
	EndIf

EndEvent

Event OnUnequipped(Actor akActor)
	
	If akActor == PlayerRef
		Int EventHandle = ModEvent.Create("SLSF_Reloaded_SetWhoreFlag")
		If (EventHandle)
			ModEvent.PushString(EventHandle, "Restia_WhoreClothesEquip")
			ModEvent.PushBool(EventHandle, False)
			ModEvent.Send(EventHandle)
		EndIf
	EndIf

EndEvent