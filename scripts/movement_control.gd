extends Node2D

export(Vector2) var velocity = Vector2(0, 0) 

var entity = null
var movement = Vector2(0, 0)

func _ready():
  entity = get_parent()
  set_process(true)

func _process(delta):
  poll_movement_actions(delta)
  apply_movement_to_entity()
  reset_movement()

func poll_movement_actions(delta):
  if (Input.is_action_pressed("move_up")):
    movement.y -= velocity.y * delta
  if (Input.is_action_pressed("move_down")):
    movement.y += velocity.y * delta
  if (Input.is_action_pressed("move_left")):
    movement.x -= velocity.x * delta
  if (Input.is_action_pressed("move_right")):
    movement.x += velocity.x * delta

func apply_movement_to_entity():
  entity.translate(movement)

func reset_movement():
  movement.x = 0
  movement.y = 0
