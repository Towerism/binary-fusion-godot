extends Node2D

export(Vector2) var velocity = Vector2(0, 0)

var entity = null

func _ready():
  entity = get_parent()
  set_process(true) 

func _process(delta):
  entity.translate(velocity * delta)