extends Node

signal startgame
signal gameover 

var canplay = false
var guncam = null
var gamecam = null
var result = -1

var scorelevel = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
var unlockedlevel = [1,0,0,0]
var availablelevel = [0,0,0,0]


var enemies = 0
func _ready():

	
	#load_levels
	pass # Replace with function body.

func endround():
	emit_signal("gameover")
	
	pass

func killzombie():
	enemies-=1
	if enemies <= 0 :
		result = 1
		endround()

func startgame():
	emit_signal("startgame")
