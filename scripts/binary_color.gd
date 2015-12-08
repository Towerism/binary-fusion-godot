extends Node

export(bool) var first_frame_is_white = true

var sprite = null

const WHITE = 0
const BLACK = 1

var color = WHITE setget set_color

func _ready():
  sprite = get_child(0)

func toggle_color():
  if (color == WHITE):
    set_color(BLACK)
  else:
    set_color(WHITE)

func set_color(new_color):
  color = new_color
  sprite.set_frame(new_color)
