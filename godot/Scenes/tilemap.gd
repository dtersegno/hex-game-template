extends TileMap

var shape:Vector2 = Vector2(12,36)
var cell_width = 45
var cell_height = 64
func _ready():
	pass
	#wipe()
	
func wipe(x = 0, rect_shape = shape, y = 0, to_tile = 2):
	for row in range(rect_shape[0]):
		for col in range(rect_shape[1]):
			set_cell(row, col, to_tile)
	
########################
# Convert from iso grid
# to square grid index
########################
# the isometric grid uses the left corner as 0,0
func square_to_iso(square_x, square_y):
	var iso_x = round((0.5)*square_x) + square_y
	var iso_y = round((0.5)*square_x) - square_y
	return Vector2(iso_x, iso_y)

########################
# isometric cell getters
########################

func get_cell_n(x:int, y:int):
	pass
	
func get_cell_s(x:int, y:int):
	pass

func get_cell_ne(x:int, y:int):
	pass
	
func get_cell_nw(x:int, y:int):
	pass
	
func get_cell_se(x:int, y:int):
	pass
	
func get_cell_sw(x:int, y:int):
	pass
