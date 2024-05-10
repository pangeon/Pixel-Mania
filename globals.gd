extends Node

func _ready() -> void:
	print("-- GLOBALS --")
	print("CANVAS_HEIGHT: ", CANVAS_HEIGHT)
	print("CANVAS_WIDTH: ", CANVAS_WIDTH)
	print("CANVAS_PADDING: ", CANVAS_PADDING)
	print("LINE_WIDTH: ", LINE_WIDTH)
	print("PLAYER_SIZE: ", PLAYER_SIZE)
	print("PLAYER_SPEED: ", PLAYER_SPEED)
	print("BG_COLOR: ", BG_COLOR)
	print("BORDER_COLOR: ", BORDER_COLOR)
	print("GAME_AREA_X: ", GAME_AREA_X)
	print("GAME_AREA_Y: ", GAME_AREA_Y)
	print("PLAYER_AREA: ", PLAYER_AREA)
	print("PLAYER_START: ", PLAYER_START)
	print("-------------")

const CANVAS_HEIGHT: float = 372.0
const CANVAS_WIDTH: float = 372.0
const CANVAS_PADDING: float = 42.0
const LINE_WIDTH: float = 6.0
const PLAYER_SIZE: float = 18.0
const PLAYER_SPEED: float = 100

const BG_COLOR: Color = Color(0x040C06FF)
const BORDER_COLOR: Color = Color(0x305D42FF)

const GAME_AREA_X: float = CANVAS_PADDING + LINE_WIDTH # 42+6=48
const GAME_AREA_Y: float = CANVAS_WIDTH - (GAME_AREA_X+PLAYER_SIZE) # 372-(48+18) = 372-66 = 306
const PLAYER_AREA: float = CANVAS_HEIGHT - 2*(CANVAS_PADDING+LINE_WIDTH) # 372-2*(42+8) = 372-96 = 276
const PLAYER_START: Vector2 = Vector2(GAME_AREA_X + LINE_WIDTH/2, GAME_AREA_Y - LINE_WIDTH/3) # (48+3, 306-3)=(51, 303)

const LEVEL_1: String = "res://scenes/levels/start_level.tscn"
const LEVEL_2: String = "res://scenes/levels/level_2.tscn"
const LEVEL_3: String = "res://scenes/levels/level_3.tscn"
const LEVEL_4: String = "res://scenes/levels/level_4.tscn"
const LEVEL_5: String = "res://scenes/levels/level_5.tscn"


