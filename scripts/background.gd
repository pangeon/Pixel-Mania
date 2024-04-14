extends Node2D

func _draw() -> void:
	
	# CANVAS AREA - true, -1.0 because is filled rect
	draw_rect(
		Rect2(0, 0, Globals.CANVAS_WIDTH, Globals.CANVAS_HEIGHT), 
		Globals.BG_COLOR, true, -1.0) #(0, 0), (372, 372) 
	
	# GAME AREA - false,  because is empty rect, Globals.LINE_WIDTH = 6
	draw_rect(
		Rect2(Globals.GAME_AREA_X, Globals.GAME_AREA_X, Globals.PLAYER_AREA, Globals.PLAYER_AREA), 
		Globals.BORDER_COLOR, false, Globals.LINE_WIDTH) #(48,48), (276,276)

func _process(_delta: float) -> void:
	queue_redraw()

