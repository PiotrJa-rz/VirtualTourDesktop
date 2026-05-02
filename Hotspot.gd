extends Area3D

@onready var label = get_parent().get_node("Label3D")
@onready var mesh = get_parent()
var expanded = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.text = "Wiecej Informacji"
	mesh.scale = Vector3(0.1,0.3,0.3)
	label.set_position(label.get_position() + Vector3(0,0.25,0))
	

func _input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		expanded = !expanded

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if expanded:
		mesh.scale = Vector3(1,1,1)
		label.text = "Lorem Ipsum dolor sit amet"
	else:
		mesh.scale = Vector3(0.1,0.3,0.3)
		label.text = "Wiecej Informacji"
	
	
