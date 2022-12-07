extends PanelContainer


onready var dropTween = $Tween
var position_withdrawn = Vector2(128,-64)
var position_extended = Vector2(128,16)
var is_extended = false



func _ready():
	pass # Replace with function body.

func toggle(time):
	if is_extended:
		raise_up(time)
	else:
		drop(time)
	is_extended = !is_extended

func drop(time):
	while dropTween.is_active():
		yield(dropTween, 'tween_all_completed')
	dropTween.interpolate_property(
		self,
		"rect_position",
		position_withdrawn,
		position_extended,
		time,
		Tween.TRANS_BOUNCE,
		Tween.EASE_OUT
	)
	dropTween.start()
	
func raise_up(time):
	while dropTween.is_active():
		yield(dropTween, 'tween_all_completed')
	dropTween.interpolate_property(
		self,
		"rect_position",
		position_extended,
		position_withdrawn,
		time,
		Tween.TRANS_QUAD,
		Tween.EASE_IN
	)
	dropTween.start()
