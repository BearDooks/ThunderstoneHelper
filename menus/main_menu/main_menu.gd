extends Control

# Connections
onready var thunderstone_button = $VBoxContainer/middle/thunderstone
onready var thunderstone_adv_button = $VBoxContainer/middle/thunderstone_adv
onready var thunderstone_quest_button = $VBoxContainer/middle/thunderstone_quest
onready var settings_button = $VBoxContainer/middle/settings
onready var credits_button = $VBoxContainer/middle/credits

func _ready():
    # Connect to all the buttons and functions
    thunderstone_button.connect("pressed", self, "_on_thunderstone_pressed")
    thunderstone_adv_button.connect("pressed", self, "_on_thunderstone_adv_pressed")
    thunderstone_quest_button.connect("pressed", self, "_on_thunderstone_quest_pressed")
    settings_button.connect("pressed", self, "_settings_pressed")
    credits_button.connect("pressed", self, "_on_credits_pressed")

func _on_thunderstone_pressed():
    get_tree().change_scene("res://games/thunderstone/thunderstone.tscn")
    
func _on_thunderstone_adv_pressed():
    print("Coming Soon")
    
func _on_thunderstone_quest_pressed():
    print("Coming Soon")

func _on_settings_pressed():
    pass

func _on_credits_pressed():
    pass
