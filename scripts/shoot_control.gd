extends Node2D

const Input_helper = preload("helpers/input_helper.gd")
const Player_bullet = preload("res://entities/player_bullet.xml")

func _ready():
  set_process_input(true)

func _input(event):
  if (Input_helper.event_says_action_was_just_pressed(event, "shoot")):
    var bullet = create_bullet()
    sync_bullet_color(bullet)

func create_bullet():
  var bullet = Player_bullet.instance()
  bullet.set_pos(get_global_pos())
  get_node("/root").add_child(bullet)
  return bullet
 

func sync_bullet_color(bullet):
  var binary_color = get_node("../binary_color")
  var bullet_binary_color = bullet.get_node("binary_color")
  bullet_binary_color.color = binary_color.color