extends CharacterBody2D

var speed = 2000

func _ready():
	pass

func _process(delta):
	pass

func _physics_process(delta):
	var direction = Input.get_vector("a","d","w","s")
	velocity = direction * speed
	move_and_slide()
