extends Node

const CANVAS_HEIGHT: float = 372.0
const CANVAS_WIDTH: float = 372.0
const CANVAS_PADDING: float = 42.0
const LINE_WIDTH: float = 6.0
const PLAYER_SIZE: float = 18.0
const PLAYER_SPEED: float = 200

const BG_COLOR: Color = Color(0x040C06FF)
const BORDER_COLOR: Color = Color(0x305D42FF)

const GAME_AREA_X: float = CANVAS_PADDING + LINE_WIDTH
const GAME_AREA_Y: float = CANVAS_WIDTH - (GAME_AREA_X+PLAYER_SIZE)
const PLAYER_AREA: float = CANVAS_HEIGHT - 2*(CANVAS_PADDING+LINE_WIDTH)
const PLAYER_START: Vector2 = Vector2(CANVAS_PADDING+LINE_WIDTH, CANVAS_HEIGHT-CANVAS_PADDING-LINE_WIDTH)



