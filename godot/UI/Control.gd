extends Control

onready var TitlePanel = $Title
onready var upArrowButton = $Display/VBoxContainer/DisplayPanel/VBoxContainer/upArrowButton
onready var downArrowButton = $Display/VBoxContainer/DisplayPanel/VBoxContainer/downArrowButton
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _process(delta):
	if Input.is_action_just_pressed('ui_accept'):
		TitlePanel.toggle(.5)
		print('Toggling title panel')
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
