extends Node2D

# Connections
onready var random = $random
onready var thunderstone_base_check = $thunderstone_base
onready var thunderstone_wrath_check = $thunderstone_wrath
onready var thunderstone_doom_check = $thunderstone_doom
onready var thunderstone_dragon_check = $thunderstone_dragon
onready var thunderstone_thorn_check = $thunderstone_thorn
onready var thunderstone_heart_check = $thunderstone_heart

#################
# Cards Section #
#################

# Basic Cards
const basic_cards : Array = ['Torches', 'Iron Rations', 'Daggers', 'Militia']

# Thunderstone Base Game
const thunderstone_hero : Array = ['Amazon', 'Chalice', 'Dwarf', 'Elf', 'Feayn', 'Lorigg', 'Outlands', 'Redblade', 'Regian', 'Selurin', 'Thyrian']
const thunderstone_monster : Array = ['Abyssal', 'Doomknight * Humanoid', 'Dragon', 'Enchanted', 'Humanoid', 'Ooze', 'Undead * Doom', 'Undead * Spirit']
const thunderstone_village : Array = ['Arcane Energies', 'Banish', 'Barkeep', 'Battle Fury', 'Feast', 'Fireball', 'Flaming Sword', 'Goodberries', 'Hatchet', 'Lantern', 'Lightstone Gem', 'Magical Aura', 'Pawnbroker', 'Polearm', 'Short Sword', 'Spear', 'Town Guard', 'Trainer', 'Warhammer']
const thunderstone_stone : Array = ['Stone of Mystery']
const thunderstone_feature : Array = []
const thunderstone_guardian : Array = []
const thunderstone_setting : Array = []

# Wrath of the Elements
const thunderstone_wrath_hero : Array = ['Blind', 'Diin', 'Divine', 'Gangland', 'Gohlen', 'Runespawn', 'Toryn']
const thunderstone_wrath_monster : Array = ['Elemental * Nature', 'Elemental * Pain', 'Golem', 'Horde']
const thunderstone_wrath_village : Array = ['Ambrosia', 'Amulet of Power', 'Blacksmith', 'Claymore', 'Creeping Death', 'Cursed Mace', 'Foresight Elixir', 'Illusory Blade', 'Magi Staff', 'Magic Missle', 'Sage', 'Short Bow', 'Tavern Brawl', 'Tax Collector']
const thunderstone_wrath_stone : Array = ['Stone of Agony']
const thunderstone_wrath_feature : Array = ['Trap * Dire', ' Trap * Death']
const thunderstone_wrath_guardian : Array = []
const thunderstone_wrath_setting : Array = []

# Doomgate Legion
const thunderstone_doom_hero : Array = ['Deep', 'Drunari', 'Sidhe', 'Slynn', 'Tempest', 'Tholis', 'Verdan']
const thunderstone_doom_monster : Array = ['Abyssal * Thunderspawn', 'Cultist * Humanoid', 'Evil Druid * Humanoid', 'The Swarm', 'Undead * Stormwraith']
const thunderstone_doom_village : Array = ['Blessed Hammer', 'Border Guard', 'Cyclone', 'Divine Staff', 'Doomgate Squire', 'Flask of Oil', 'Fortune Teller', 'Glowberries', 'Greed Blade', 'Pious Chaplain', 'Soul Jar', 'Spirit Blast', 'Spirit Hunter']
const thunderstone_doom_stone : Array = ['Stone of Avarice']
const thunderstone_doom_feature : Array = ['Guardian', 'Amulet Treasures', "Ulbrick's Treasures"]
const thunderstone_doom_guardian : Array = ['Unholy Guardian']
const thunderstone_doom_setting : Array = []

# Dragon Spire
const thunderstone_dragon_hero : Array = ['Belzur', 'Cabal', 'Chulian', 'Evoker', 'Flame', 'Gorinth', 'Half-Orc', 'Phalanx', 'Stoneguard', 'Terakian', 'Veteran']
const thunderstone_dragon_monster : Array = ['Bandit * Humanoid', 'Dark Enchanted', 'Elemental * Fire Giant', 'Hydra Dragon', 'Orc * Humanoid', 'Undead * Lich', 'Undead * Plague']
const thunderstone_dragon_village : Array = ['Bluefire Staff', 'Burnt Offering', 'Chieftain’s Drum', 'Frost Bolt', 'Frost Giant Axe', 'Guardian Blade', 'Guide', 'Quartermaster', 'Polymorph', 'Recurve Bow', 'Scout', 'Silverstorm', 'Skullbreaker', 'Soul Gem', 'Spoiled Food', 'Thunder Ring', 'Toryn Gauntlet', 'Trader']
const thunderstone_dragon_stone : Array = ['Stone of Terror', 'Stone of Scorn']
const thunderstone_dragon_feature : Array = ['Figurine Treasure', 'Guardian', 'Pick Two', 'Setting', 'Trap * Draconic']
const thunderstone_dragon_guardian : Array = ['Guardian of Night', 'Guardian of Torment']
const thunderstone_dragon_setting : Array = ['Barrowsdale', 'Doomgate', 'Dragonspire', 'Dreadwatch', 'Feayn Swamp', 'Grimhold', 'Regian Cove']

# Thornwood Siege
const thunderstone_thorn_hero : Array = ['Krell', 'Lurker', 'Magehunter', 'Nightblade', 'Thornwood', 'Veris', 'Woodfolk']
const thunderstone_thorn_monster : Array = ['Abyssal * Malformed', 'Centaur', 'Raider * Humanoid', 'Siege', 'Verminfolk * Animal']
const thunderstone_thorn_village : Array = ['Cursed Bow', 'Drill Sergeant', 'Elite Militia', 'Guiding Light', 'Highland Officer', 'Insight Blade', 'Plagesmiter', 'Power Word: Kill', 'Scroll of Chaos', 'Stalking Spell', "Thieves’ Blade", 'Time Bend', 'Unicorn Steaks', 'Village Mob']
const thunderstone_thorn_stone : Array = ['Stone of Blight']
const thunderstone_thorn_feature : Array = ['Pick Two', 'Guardian']
const thunderstone_thorn_guardian : Array = ['Guardian of Virulence']
const thunderstone_thorn_setting : Array = []

# Heart of Doom
const thunderstone_heart_hero : Array = ['Bluefire', 'Canon', 'Dark', 'Highland', 'Isri', 'Jondul', 'Nyth']
const thunderstone_heart_monster : Array = ['Abyssal * Darkspawn', 'Basilisk * Animal', 'Doppelganger * Humanoid', 'Dryad', 'Lizardfolk * Humanoid', 'Spider * Animal', 'Undead * Spectral']
const thunderstone_heart_village : Array = ['Bag of Holding', "Belzur's Blessing", 'Chalice Mace', 'Dredging Net', 'Grognard', 'Jondful Bow', 'Magma Hammer', 'Ritual of Cleansing', 'Short Spear', 'Soulfire', 'Swamp Provisions', 'Village Thief', 'War Hero']
const thunderstone_heart_stone : Array = ['Stone of Fate']
const thunderstone_heart_feature : Array = ["Sorcerer's Treastures", 'Guardian', 'Setting']
const thunderstone_heart_guardian : Array = ['Heart of Doom', 'The Last Doomknight', 'Mournwater Witch']
const thunderstone_heart_setting : Array = ['Last Refuge', 'Mournwater Swamp', 'Rite of Banishing']

######################
# Functions  Section #
######################

func _ready():
	randomize() # needed to make this all random
	random.connect("pressed", self, "_randomize_cards")

# Function called when the user has selected all versions of the game they want to play with
func _randomize_cards():
	# Setup the arrays we will use to randomize the cards
	var hero_cards : Array = []
	var monster_cards : Array = []
	var village_cards : Array = []
	var thunderstone_cards : Array = []
	var feature_cards : Array = []
	var guardian_cards : Array = []
	var setting_cards : Array = []

	# Add all cards to the arrays from selected games
	if thunderstone_base_check.pressed:
		for item in thunderstone_hero:
			hero_cards.append(item)
		for item in thunderstone_monster:
			monster_cards.append(item)
		for item in thunderstone_village:
			village_cards.append(item)
		for item in thunderstone_stone:
			thunderstone_cards.append(item)
		for item in thunderstone_feature:
			feature_cards.append(item)
		for item in thunderstone_guardian:
			guardian_cards.append(item)
		for item in thunderstone_setting:
			setting_cards.append(item)

	if thunderstone_wrath_check.pressed:
		for item in thunderstone_wrath_hero:
			hero_cards.append(item)
		for item in thunderstone_wrath_monster:
			monster_cards.append(item)
		for item in thunderstone_wrath_village:
			village_cards.append(item)
		for item in thunderstone_wrath_stone:
			thunderstone_cards.append(item)
		for item in thunderstone_wrath_feature:
			feature_cards.append(item)
		for item in thunderstone_wrath_guardian:
			guardian_cards.append(item)
		for item in thunderstone_wrath_setting:
			setting_cards.append(item)

	if thunderstone_doom_check.pressed:
		for item in thunderstone_doom_hero:
			hero_cards.append(item)
		for item in thunderstone_doom_monster:
			monster_cards.append(item)
		for item in thunderstone_doom_village:
			village_cards.append(item)
		for item in thunderstone_doom_stone:
			thunderstone_cards.append(item)
		for item in thunderstone_doom_feature:
			feature_cards.append(item)
		for item in thunderstone_doom_guardian:
			guardian_cards.append(item)
		for item in thunderstone_doom_setting:
			setting_cards.append(item)

	if thunderstone_dragon_check.pressed:
		for item in thunderstone_dragon_hero:
			hero_cards.append(item)
		for item in thunderstone_dragon_monster:
			monster_cards.append(item)
		for item in thunderstone_dragon_village:
			village_cards.append(item)
		for item in thunderstone_dragon_stone:
			thunderstone_cards.append(item)
		for item in thunderstone_dragon_feature:
			feature_cards.append(item)
		for item in thunderstone_dragon_guardian:
			guardian_cards.append(item)
		for item in thunderstone_dragon_setting:
			setting_cards.append(item)

	if thunderstone_thorn_check.pressed:
		for item in thunderstone_thorn_hero:
			hero_cards.append(item)
		for item in thunderstone_thorn_monster:
			monster_cards.append(item)
		for item in thunderstone_thorn_village:
			village_cards.append(item)
		for item in thunderstone_thorn_stone:
			thunderstone_cards.append(item)
		for item in thunderstone_thorn_feature:
			feature_cards.append(item)
		for item in thunderstone_thorn_guardian:
			guardian_cards.append(item)
		for item in thunderstone_thorn_setting:
			setting_cards.append(item)

	if thunderstone_heart_check.pressed:
		for item in thunderstone_heart_hero:
			hero_cards.append(item)
		for item in thunderstone_heart_monster:
			monster_cards.append(item)
		for item in thunderstone_heart_village:
			village_cards.append(item)
		for item in thunderstone_heart_stone:
			thunderstone_cards.append(item)
		for item in thunderstone_heart_feature:
			feature_cards.append(item)
		for item in thunderstone_heart_guardian:
			guardian_cards.append(item)
		for item in thunderstone_heart_setting:
			setting_cards.append(item)

	# Suffle all the decks before drawing
	hero_cards.shuffle()
	monster_cards.shuffle()
	village_cards.shuffle()
	thunderstone_cards.shuffle()
	feature_cards.shuffle()
	guardian_cards.shuffle()
	setting_cards.shuffle()

	# Print Basic Cards
	print("Basic Cards:")
	for item in basic_cards:
		print(item)
	print("")
	
	# Print Village Cards
	print("Village Cards:")
	for item in range(12):
		print(village_cards[item])
	print("")
	
	# Print Monster Cards
	print("Monster Cards:")
	for item in range(3):
		print(monster_cards[item])
	print("")
	
	# Print Thunderstone Card
	print("Thunderstone Card:")
	print(thunderstone_cards[0])
