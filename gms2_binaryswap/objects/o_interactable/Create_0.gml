activated = false // if interactable is activated
usable = true // checks if interactable can be used
reusable = true // checks if interactable is reuseable

enum interactable {
	none,
	lever,
	button,
	pressure
}

startingState = interactable.none
state = startingState