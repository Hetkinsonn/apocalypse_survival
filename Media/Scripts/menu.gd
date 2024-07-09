extends Control

var game_scene = preload("res://Media/Scenes/game.tscn")

var first_in = false
var second_in = false

func _ready():
	$Main_Menu.visible = true
	$Play_Menu.visible = false

func _input(event):
	if first_in == true and second_in == false and Input.is_action_just_pressed("lbm"):
		$Main_Menu.visible = true
		$Play_Menu.visible = false

func _process(delta):
	$Label.position = get_global_mouse_position()

func _on_play_pressed():
	$Main_Menu.visible = false
	$Play_Menu.visible = true

func _on_settings_pressed():
	pass # Replace with function body.

func _on_quit_pressed():
	get_tree().quit()

func _on_continue_pressed():
	pass # Replace with function body.

func _on_new_pressed():
	get_tree().change_scene_to_file("res://Media/Scenes/game.tscn")

func _on_load_pressed():
	pass # Replace with function body.

#------------------------------#

func _on_first_area_mouse_entered():
	first_in = true

func _on_second_area_mouse_entered():
	second_in = true

func _on_first_area_mouse_exited():
	first_in = false

func _on_second_area_mouse_exited():
	second_in = false






