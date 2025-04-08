extends Node2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_cast_2d_right: RayCast2D = $RayCast2DRight
@onready var ray_cast_2d_left: RayCast2D = $RayCast2DLeft

const SPEED: int = 25

var direction: int = 1

func _process(delta: float) -> void:

	if (ray_cast_2d_right.is_colliding()):
		animated_sprite_2d.flip_h = true
		direction = -1

	if (ray_cast_2d_left.is_colliding()):
		animated_sprite_2d.flip_h = false
		direction = 1
		
	position.x += delta * direction * SPEED
