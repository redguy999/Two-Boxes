extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	levelNum=(get_tree().current_scene.scene_file_path.to_int())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#var simultaneous_scene = preload("level_2.tscn").instantiate()
var levelOrder=["level_1","level_2","level_3"]
var levelNum

func nextLevel():
	if(get_tree().current_scene.scene_file_path=="Level_3"):
		pass#Go to Win Screen or something, just make sure line after this doesn't run once implmented.
		#Alternatively you just have the win screen be the last level in levelOrder
	get_tree().change_scene_to_file(levelOrder[levelNum]+".tscn")
	
func _on_area_2d_body_entered(body):
	if(body.name=="SquareB"):
		call_deferred("nextLevel")#load next level 
