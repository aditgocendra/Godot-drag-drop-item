extends Area2D

var previous_mouse_position = Vector2()
var is_dragging = false

func _process(delta: float) -> void:
	if (is_dragging):
		set_position(get_viewport().get_mouse_position())



func _on_ItemDragable_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	
		if	event.get_action_strength("ui_touch"):
			is_dragging = true
		elif event.is_action_released("ui_touch"):
			is_dragging = false

