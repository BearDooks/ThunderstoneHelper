extends Control

# Connections
onready var random = $VBoxContainer/random
onready var thunderstone_base_check = $VBoxContainer/thunderstone_base
onready var thunderstone_wrath_check = $VBoxContainer/thunderstone_wrath
onready var thunderstone_doom_check = $VBoxContainer/thunderstone_doom
onready var thunderstone_dragon_check = $VBoxContainer/thunderstone_dragon
onready var thunderstone_thorn_check = $VBoxContainer/thunderstone_thorn
onready var thunderstone_heart_check = $VBoxContainer/thunderstone_heart

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

# Wrath of the Elements
const thunderstone_wrath_hero : Array = ['Blind', 'Diin', 'Divine', 'Gangland', 'Gohlen', 'Runespawn', 'Toryn']
const thunderstone_wrath_monster : Array = ['Elemental * Nature', 'Elemental * Pain', 'Golem', 'Horde', 'Dungeon Feature']
const thunderstone_wrath_village : Array = ['Ambrosia', 'Amulet of Power', 'Blacksmith', 'Claymore', 'Creeping Death', 'Cused Mace', 'Foresight Elixir', 'Illusory Blade', 'Magi Staff', 'Magic Missle', 'Sage', 'Short Bow', 'Tavern Brawl', 'Tax Collector']
const thunderstone_wrath_stone : Array = ['Stone of Agony']
const thunderstone_wrath_feature : Array = ['Trap * Dire', ' Trap * Death']

# Doomgate Legion
const thunderstone_doom_hero : Array = ['Deep', 'Drunari', 'Sidhe', 'Slynn', 'Tempest', 'Tholis', 'Verdan']
const thunderstone_doom_monster : Array = ['Abyssal * Thunderspawn', 'Cultist * Humanoid', 'Evil Druid * Humanoid', 'The Swarm', 'Undead * Stormwraith', 'Dungeon Feature']
const thunderstone_doom_village : Array = ['Blessed Hammer', 'Border Guard', 'Cyclone', 'Divine Staff', 'Doomgate Squire', 'Flask of Oil', 'Fortune Teller', 'Glowberries', 'Greed Blade', 'Pious Chaplain', 'Soul Jar', 'Spirit Blast', 'Spirit Hunter']
const thunderstone_doom_stone : Array = ['Stone of Avarice']
const thunderstone_doom_feature : Array = ['Guardian', 'Amulet Treasures', "Ulbrick's Treasures"]
const thunderstone_doom_guardian : Array = ['Unholy Guardian']

# Dragon Spire
const thunderstone_dragon_hero : Array = ['Belzur', 'Cabal', 'Chulian', 'Evoker', 'Flame', 'Gorinth', 'Half-Orc', 'Phalanx', 'Stoneguard', 'Terakian', 'Veteran']
const thunderstone_dragon_monster : Array = ['Bandit * Humanoid', 'Dark Enchanted', 'Elemental * Fire Giant', 'Hydra Dragon', 'Orc * Humanoid', 'Undead * Lich', 'Undead * Plague', 'Pick Two', 'Setting', 'Dungeon Feature']
const thunderstone_dragon_village : Array = ['Bluefire Staff', 'Burnt Offering', 'Chieftain’s Drum', 'Frost Bolt', 'Frost Giant Axe', 'Guardian Blade', 'Guide', 'Quartermaster', 'Polymorph', 'Recurve Bow', 'Scout', 'Silverstorm', 'Skullbreaker', 'Soul Gem', 'Spoiled Food', 'Thunder Ring', 'Toryn Gauntlet', 'Trader']
const thunderstone_dragon_stone : Array = ['Stone of Terror', 'Stone of Scorn']
const thunderstone_dragon_feature : Array = ['Figurine Treasure', 'Guardian', 'Trap * Draconic']
const thunderstone_dragon_guardian : Array = ['Guardian of Night', 'Guardian of Torment']
const thunderstone_dragon_setting : Array = ['Barrowsdale', 'Doomgate', 'Dragonspire', 'Dreadwatch', 'Feayn Swamp', 'Grimhold', 'Regian Cove']

# Thornwood Siege
const thunderstone_thorn_hero : Array = ['Krell', 'Lurker', 'Magehunter', 'Nightblade', 'Thornwood', 'Veris', 'Woodfolk']
const thunderstone_thorn_monster : Array = ['Abyssal * Malformed', 'Centaur', 'Raider * Humanoid', 'Siege', 'Verminfolk * Animal', 'Pick Two', 'Dungeon Feature']
const thunderstone_thorn_village : Array = ['Cursed Bow', 'Drill Sergeant', 'Elite Militia', 'Guiding Light', 'Highland Officer', 'Insight Blade', 'Plagesmiter', 'Power Word: Kill', 'Scroll of Chaos', 'Stalking Spell', "Thieves’ Blade", 'Time Bend', 'Unicorn Steaks', 'Village Mob']
const thunderstone_thorn_stone : Array = ['Stone of Blight']
const thunderstone_thorn_feature : Array = ['Guardian']
const thunderstone_thorn_guardian : Array = ['Guardian of Virulence']

# Heart of Doom
const thunderstone_heart_hero : Array = ['Bluefire', 'Canon', 'Dark', 'Highland', 'Isri', 'Jondul', 'Nyth']
const thunderstone_heart_monster : Array = ['Abyssal * Darkspawn', 'Basilisk * Animal', 'Doppelganger * Humanoid', 'Dryad', 'Lizardfolk * Humanoid', 'Spider * Animal', 'Undead * Spectral', 'Dungeon Feature', 'Setting']
const thunderstone_heart_village : Array = ['Bag of Holding', "Belzur's Blessing", 'Chalice Mace', 'Dredging Net', 'Grognard', 'Jondful Bow', 'Magma Hammer', 'Ritual of Cleansing', 'Short Spear', 'Soulfire', 'Swamp Provisions', 'Village Thief', 'War Hero']
const thunderstone_heart_stone : Array = ['Stone of Fate']
const thunderstone_heart_feature : Array = ["Sorcerer's Treastures", 'Guardian']
const thunderstone_heart_guardian : Array = ['Heart of Doom', 'The Last Doomknight', 'Mournwater Witch']
const thunderstone_heart_setting : Array = ['Last Refuge', 'Mournwater Swamp', 'Rite of Banishing']

##################
# Arrays Section #
##################

var hero_cards : Array = []
var monster_cards : Array = []
var village_cards : Array = []
var thunderstone_cards : Array = []
var feature_cards : Array = []
var guardian_cards : Array = []
var setting_cards : Array = []

func _ready():
    randomize() # needed to make this all random
    random.connect("pressed", self, "_randomize_cards")

# Function called when the user has selected all versions of the game they want to play with
func _randomize_cards():
    # Clear all arrays to keep things clean
    hero_cards.clear()
    monster_cards.clear()
    village_cards.clear()
    thunderstone_cards.clear()
    feature_cards.clear()
    guardian_cards.clear()
    setting_cards.clear()

    # Add all cards to the arrays from selected games
    # Note that feature cards will be shuffled into the monster deck
    if thunderstone_base_check.pressed:
        hero_cards.append_array(thunderstone_hero)
        monster_cards.append_array(thunderstone_monster)
        village_cards.append_array(thunderstone_village)
        thunderstone_cards.append_array(thunderstone_stone)

    if thunderstone_wrath_check.pressed:
        hero_cards.append_array(thunderstone_wrath_hero)
        monster_cards.append_array(thunderstone_wrath_monster)
        village_cards.append_array(thunderstone_wrath_village)
        thunderstone_cards.append_array(thunderstone_wrath_stone)
        feature_cards.append_array(thunderstone_wrath_feature)

    if thunderstone_doom_check.pressed:
        hero_cards.append_array(thunderstone_doom_hero)
        monster_cards.append_array(thunderstone_doom_monster)
        village_cards.append_array(thunderstone_doom_village)
        thunderstone_cards.append_array(thunderstone_doom_stone)
        feature_cards.append_array(thunderstone_doom_feature)
        guardian_cards.append_array(thunderstone_doom_guardian)

    if thunderstone_dragon_check.pressed:
        hero_cards.append_array(thunderstone_dragon_hero)
        monster_cards.append_array(thunderstone_dragon_monster)
        village_cards.append_array(thunderstone_dragon_village)
        thunderstone_cards.append_array(thunderstone_dragon_stone)
        feature_cards.append_array(thunderstone_dragon_feature)
        guardian_cards.append_array(thunderstone_dragon_guardian)
        setting_cards.append_array(thunderstone_dragon_setting)

    if thunderstone_thorn_check.pressed:
        hero_cards.append_array(thunderstone_thorn_hero)
        monster_cards.append_array(thunderstone_thorn_monster)
        village_cards.append_array(thunderstone_thorn_village)
        thunderstone_cards.append_array(thunderstone_thorn_stone)
        feature_cards.append_array(thunderstone_thorn_feature)
        guardian_cards.append_array(thunderstone_thorn_guardian)

    if thunderstone_heart_check.pressed:
        hero_cards.append_array(thunderstone_heart_hero)
        monster_cards.append_array(thunderstone_heart_monster)
        village_cards.append_array(thunderstone_heart_village)
        thunderstone_cards.append_array(thunderstone_heart_stone)
        feature_cards.append_array(thunderstone_heart_feature)
        guardian_cards.append_array(thunderstone_heart_guardian)
        setting_cards.append_array(thunderstone_heart_setting)

    # Suffle all the decks before drawing
    hero_cards.shuffle()
    monster_cards.shuffle()
    village_cards.shuffle()
    thunderstone_cards.shuffle()
    feature_cards.shuffle()
    guardian_cards.shuffle()
    setting_cards.shuffle()

    # Print Basic Cards
    # These cards will always be in the village
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
    var drawn_monster_count = 0 # Needed to track monsters v. features that are drawn
    var drawn_setting_count = 0 # Needed to ensure only one setting is pulled
    print("Monster Cards:")
    while drawn_monster_count < 3:
        if monster_cards and monster_cards.size() > 0:
            match monster_cards[0]:
                "Dungeon Feature":
                    _draw_feature_card(1)
                "Pick Two":
                    _draw_feature_card(2)
                "Setting":
                    if drawn_setting_count == 0:
                        print("Setting drawn")
                        monster_cards.remove(0) # need to remove this card to avoid an infinite loop
                    else:
                        print("Setting already drawn!")
                        monster_cards.remove(0) # need to remove this card to avoid an infinite loop
                _:
                    print(monster_cards.pop_front())
                    drawn_monster_count += 1
    print("")

    # Print Thunderstone Card
    print("Thunderstone Card:")
    if thunderstone_cards and thunderstone_cards.size() > 0:
        print(thunderstone_cards[0])

# Function used to draw a randomf eature card and place it in the monster deck
func _draw_feature_card(amount):
    for x in range(amount):
        if feature_cards and feature_cards.size() > 0:
            match feature_cards[0]:
                "Trap * Dire":
                    print(feature_cards.pop_front())
                "Trap * Death":
                    print(feature_cards.pop_front())
                "Trap * Draconic":
                    print(feature_cards.pop_front())
                "Guardian":
                    print(guardian_cards.pop_front())
                    feature_cards.remove(0)
                "Amulet Treasures":
                    print(feature_cards.pop_front())
                "Ulbrick's Treasures":
                    print(feature_cards.pop_front())
                "Sorcerer's Treasures":
                    print(feature_cards.pop_front())
                "Figurine Treasure":
                    print(feature_cards.pop_front())
            monster_cards.remove(0) # need to remove this card to avoid an infinite loop
        else:
            # You somehow ran out of feature cards
            monster_cards.remove(0) # need to remove this card to avoid an infinite loop
