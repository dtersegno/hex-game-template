extends Node2D


export var walkspeed = 512 #px/sec
var runspeed = 2*walkspeed

# 
onready var sprite = $AnimatedSprite
onready var colorrect = $ColorRect
onready var movetween = $MoveTween


func _ready():
	pass # Replace with function body.

func _process(delta):
	process_move_input()
		
func process_move_input():
	var pos_x = self.position[0]
	var pos_y = self.position[1]
	var test_distance = 64
	
	if Input.is_action_pressed("ui_down"):
		walk_to(pos_x, pos_y + test_distance)
	if Input.is_action_pressed("ui_up"):
		walk_to(pos_x, pos_y - test_distance)
	if Input.is_action_pressed("ui_left"):
		walk_to(pos_x - test_distance, pos_y )
	if Input.is_action_pressed("ui_right"):
		walk_to(pos_x + test_distance, pos_y)

func walk_to(x, y):
	if not movetween.is_active():
		var current_position = self.position
		var end_position = Vector2(x,y)
		var distance_to_travel = (end_position - current_position).length()
		var move_time = distance_to_travel/self.walkspeed
		movetween.interpolate_property(
			self,
			'position',
			current_position,
			end_position,
			move_time,
			Tween.TRANS_LINEAR,
			Tween.EASE_IN_OUT
		)
		movetween.start()
	
func sniff():
	pass
