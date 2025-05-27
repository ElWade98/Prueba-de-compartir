extends Node2D

const speed = 60
var direccion = 1
@onready var ray_cast_derecha: RayCast2D = $"RayCast derecha"
@onready var ray_cast_izquierda: RayCast2D = $"RayCast izquierda"
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta):
	if ray_cast_derecha.is_colliding():
		direccion = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_izquierda.is_colliding():
		direccion = 1
		animated_sprite_2d.flip_h = false
	position.x += direccion * speed * delta
