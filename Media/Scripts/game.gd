extends Node2D

@export_range(100,999) var seed : int
@export var noisetex : NoiseTexture2D

@onready var Ground = $Ground

var height = 400
var width = 400

var noise

func _ready():
	noise = noisetex.noise
	noise.seed = seed
	for x in width:
		for y in height:
			var val = noise.get_noise_2d(x,y)
			if val > 0:
				Ground.set_cell(0,Vector2(x,y),0,Vector2i(0,1))
			else:
				Ground.set_cell(0,Vector2(x,y),0,Vector2i(0,0))

func _process(delta):
	pass
