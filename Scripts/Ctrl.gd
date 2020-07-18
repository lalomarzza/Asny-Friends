extends Control
export var min_scale = 0.1
export var max_scale = 3.0
export var one_finger_rot_x = true
export var one_finger_rot_y = true
export var two_fingers_rot_z = true
export var two_fingers_zoom = true
var base_state
var curr_state
var target_node
var base_xform
func _ready():
	base_state = {}
	curr_state = {}
	target_node = Base.Bas
func _gui_input(event):
	var finger_count_changed = false
	var finger_count = base_state.size()
	if finger_count == 0:
		Base.Run(-5)
		if event is InputEventScreenTouch:
			if event.pressed:
				base_state = {
					event.index: event.position
				}
	elif finger_count == 1:
		if event is InputEventScreenTouch:
			if event.pressed:
				base_state = {
					curr_state.keys()[0]: curr_state.values()[0],
					event.index: event.position,
				}
			else:
				if base_state.has(event.index):
					base_state.clear()
		elif event is InputEventScreenDrag:
			if curr_state.has(event.index):
				var unit_drag = _px2unit(base_state[base_state.keys()[0]] - event.position)
				if one_finger_rot_x:
#					target_node.rotate(Vector3(0, 1, 0), deg2rad(180.0 * unit_drag.x))
					if unit_drag.x >= 0:
						Base.left(Base.get_process_delta_time(),Base.Bas)
					else:
						Base.right(Base.get_process_delta_time(),Base.Bas)
				if one_finger_rot_y:
#					print(unit_drag.y)
					if unit_drag.y >= 0.05 :
						Base.Run(-15)
				curr_state[event.index] = event.position
				base_state[event.index] = event.position
				base_xform = target_node.get_transform()
	if base_state.size() != finger_count:
		curr_state = {}
		for idx in base_state.keys():
			curr_state[idx] = base_state[idx]
		base_xform = target_node.get_transform()
func _px2unit(v):
	var shortest = min(get_size().x, get_size().y)
	return v * (1.0 / shortest)
