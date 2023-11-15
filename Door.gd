extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_1_body_entered(body):
	var hold = self.find_child("CollisionShape2D")
	print(hold)
	hold.set_deferred("disabled",true)
	self.set_deferred("visible",false)


func _on_button_2_body_entered(body):
	var hold = self.find_child("CollisionShape2D")
	hold.set_deferred("disabled",true)
	self.set_deferred("visible",false)

func _on_button_1_body_exited(body):
	var hold = self.find_child("CollisionShape2D")
	hold.set_deferred("disabled",false)
	self.set_deferred("visible",true)
	
func _on_button_2_body_exited(body):
	var hold = self.find_child("CollisionShape2D")
	hold.set_deferred("disabled",false)
	self.set_deferred("visible",true)
