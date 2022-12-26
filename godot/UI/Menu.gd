extends PanelContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var menu = $Panel/MenuButton.get_popup()
var button_dict = {
	'quit':0		
}

# Called when the node enters the scene tree for the first time.
func _ready():
	menu.connect("id_pressed", self, "_on_menubutton_pressed")
#

func _on_menubutton_pressed(id:int):
	if id == button_dict['quit']:
		get_tree().quit()
#func _process(delta):
#	if menu.id_pressed(0):
#		get_tree().quit()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
