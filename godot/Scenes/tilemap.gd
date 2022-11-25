extends TileMap

var shape:Vector2 = Vector2(12,36)

func _ready():
	pass
	#wipe()
	
func wipe(x = 0, rect_shape = shape, y = 0, to_tile = 2):
	for row in range(rect_shape[0]):
		for col in range(rect_shape[1]):
			set_cell(row, col, to_tile)
	
	
	
########################
# isometric cell getters
########################
func get_cell_northeast(x:int, y:int):
	pass
	
func get_cell_northwest(x:int, y:int):
	pass
	
func get_cell_southeast(x:int, y:int):
	pass
	
func get_cell_southwest(x:int, y:int):
	pass
