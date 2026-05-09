extends Node3D

@onready var sphere = $MeshInstance3D

var panoramas = [
	preload("res://images/Galeria_Owalna/CAM_20260428120911_0002_D_CAME.JPG"),
	preload("res://images/Galeria_Owalna/CAM_20260428121245_0004_D_CAME.JPG"),
	preload("res://images/pokoj_marmurowy/CAM_20260504092949_0014_D_CAME.JPG"),
	preload("res://images/Przedpokoj_sali_wielkiej/CAM_20260428122918_0008_D_CAME.JPG")
]

var current_index = 0


func go_to_panorama(i):
	current_index = i
	sphere.get_active_material(0).albedo_texture = panoramas[current_index]

func next_panorama():
	current_index += 1
	if current_index >= panoramas.size():
		current_index = 0

	sphere.get_active_material(0).albedo_texture = panoramas[current_index]

func previous_panorama():
	print(current_index)
	current_index -= 1
	if current_index < 0:
		current_index = panoramas.size()-1
	sphere.get_active_material(0).albedo_texture = panoramas[current_index]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
