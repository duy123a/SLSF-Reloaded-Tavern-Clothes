Scriptname Restia_WhoreClothesEquip extends ObjectReference

Event OnEquipped(Actor akActor)

	if akActor == Game.GetPlayer()		
		Restia_WhoreFameGain.IncreaseWhoreFame()	
	endIf

endEvent

Event OnUnequipped(Actor akActor)
	
	if akActor == Game.GetPlayer()		
		Restia_WhoreFameGain.StopWhoreFameGain()
	endIf

endEvent