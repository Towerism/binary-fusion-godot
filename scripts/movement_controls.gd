extends Node

export(Vector2) var velocity = Vector2(0, 0) 

var parent = null
var movement = Vector2(0, 0)

func _ready():
  parent = get_parent()
  set_process(true)

func _process(delta):
  poll_movement_actions(delta)
  apply_movement_to_parent()
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

func apply_movement_to_parent():
  parent.translate(movement) 

func reset_movement():
  movement.x = 0
  movement.y = 0
