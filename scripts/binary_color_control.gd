extends Node2D

const Input_helper = preload("helpers/input_helper.gd")

var binary_color = null

func _ready():
  binary_color = get_child(0)
  set_process_input(true)

func _input(event):
  if(Input_helper.event_says_action_was_just_pressed(event, "toggle_color")):
    binary_color.toggle_color()
