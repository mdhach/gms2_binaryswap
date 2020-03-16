activated = false // if interactable is activated
playerOnly = false // if only player can use
reuseTime = 120 // time before object can be used again
reuseCount = 0 // times object can be used
showUse = false // whether or not to show the hovering "E" button

enum interactable {
	none,
	lever,
	pressure,
	platform
}

startingState = interactable.none
state = startingState