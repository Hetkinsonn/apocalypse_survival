extends CharacterBody2D

@onready var Game
@onready var Detector = $Detector

var speed = 500
var is_on = true

func _ready():
	Game = get_parent()

func _process(delta):
	print(Detector.get_collider())

func _physics_process(delta):
	var direction = Input.get_vector("a","d","w","s")
	velocity = direction * speed
	move_and_slide()
