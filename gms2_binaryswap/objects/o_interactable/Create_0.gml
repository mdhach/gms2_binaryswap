activated = false // if interactable is activated

enum interactable {
	none,
	lever,
	button,
	pressure
}

startingState = interactable.none
state = startingState