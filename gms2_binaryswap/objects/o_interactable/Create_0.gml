activated = false // if interactable is activated
playerOnly = false

enum interactable {
	none,
	lever,
	button,
	pressure
}

startingState = interactable.none
state = startingState