extends Node2D

var ChunkScene = preload("res://Media/Scenes/chunk.tscn")

@export_range(100,999) var seed : int
@export var noisetex : NoiseTexture2D

@onready var Ground = $Ground

var height = 400
var width = 400
var chunks = [{"ID":1,"is_neighbours_created":false}]

var noise

func GenerateWorld(height:int,width:int):
	for x in width:
		for y in height:
			var CI = ChunkScene.instantiate()
			CI.position = Vector2(x*32,y*32)
			add_child(CI)

func GenerateChunk(height:int,width:int,chunk:TileMap):
	for x in width:
		for y in height:
			var val = noise.get_noise_2d(x,y)
			if val > 0:
				chunk.set_cell(0,Vector2(x,y),0,Vector2i(0,1))
			else:
				chunk.set_cell(0,Vector2(x,y),0,Vector2i(0,0))

func _ready():
	noise = noisetex.noise
	noise.seed = seed
	

func _process(delta):
	pass
