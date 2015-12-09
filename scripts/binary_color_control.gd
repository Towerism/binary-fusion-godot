extends Node2D

var binary_color = null

func _ready():
  binary_color = get_child(0)
  set_process_input(true)

func _input(event):
  if(event_says_action_was_just_pressed(event, "toggle_color")):
    binary_color.toggle_color()
 
func event_says_action_was_just_pressed(event, action):
  return event.is_action(action) && event.is_pressed() && !event.is_echo() 