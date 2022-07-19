extends KinematicBody2D
var end = 0
func _physics_process(delta):
	$Sprite/Label.text = str(end)
func _ready():
	$Sprite/Label.text = str(end)
	add_to_group("jogador")
	pass
