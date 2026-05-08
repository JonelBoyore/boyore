extends RigidBody2D

@export var min_speed = 150 # Minimum speed range
@export var max_speed = 250 # Maximum speed range

func _ready() -> void:
	add_to_group("mobs")
	var mob_types = $AnimatedSprite2D.sprite_frames.get_animation_names()
	$AnimatedSprite2D.animation = mob_types[randi() % mob_types.size()]
	$AnimatedSprite2D.play()

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
