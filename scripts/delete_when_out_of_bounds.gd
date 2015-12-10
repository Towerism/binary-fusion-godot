extends Node2D

var entity = null
var screen_size = Vector2(0, 0)

func _ready():
  entity = get_parent()
  init_screen_width_and_height()
  set_process(true)

func init_screen_width_and_height():
  var viewport = get_node("/root")
  screen_size = viewport.get_rect().size

func _process(delta):
  var entity_pos = entity.get_pos()
  if (entity_pos.x < 0 || entity_pos.y < 0 || entity_pos.x > screen_size.width || entity_pos.y > screen_size.height):
    entity.queue_free()
