static func event_says_action_was_just_pressed(event, action):
  return event.is_action(action) && event.is_pressed() && !event.is_echo()

