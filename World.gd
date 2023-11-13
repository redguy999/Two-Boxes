extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("hello world!") # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var simultaneous_scene = preload("level_2.tscn").instantiate()

func nextLevel():
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
	get_tree().root.add_child(simultaneous_scene)
	get_tree().change_scene_to_file("level_2.tscn")
	get_tree().change_scene_to_packed(simultaneous_scene)
	#TODO: change this so it will cycle through the levels.
func _on_area_2d_body_entered(body):
	print("Test")
	if(body.name=="SquareB"):
		call_deferred("nextLevel")#load next level 
