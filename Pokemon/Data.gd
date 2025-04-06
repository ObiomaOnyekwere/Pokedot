extends Node










#template pokemon:
#when creeating new mons just create a new custom list with all the data filed out.

var TempMon = {
	"Name": "X",
	"Types": ["None", "None"],
	"Stats": {
		"Hp": 10,
		"Att":10,
		"SpA":10,
		"Def":10,
		"SpDef":10,
		"Speed":10,
	},
	"Abiltiies": [""],
	"Moves":{
		
	}
}#the moves level ups are based on the position in the list, so when it doesnt learn moves at level 17 itll have "None" in the position
#example mons


var Rattata = {
	"Name": "Rattata",
	"Types": ["Normal", "None"],
	"Stats": {
		"Hp": 30,
		"Att": 56,
		"SpA": 25,
		"Def": 35,
		"SpDef": 35,
		"Speed": 72,
	},
	"Abilities": ["Run Away", "Guts"], # potential abilities the pokemon can have , this is useful for knowing what abilities you want certain mons to have
	"Moves": {}
}

var Pidgey = {
	"Name": "Pidgey",
	"Types": ["Normal", "Flying"],
	"Stats": {
		"Hp": 40,
		"Att": 45,
		"SpA": 35,
		"Def": 40,
		"SpDef": 35,
		"Speed": 56,
	},
	"Abilities": ["Keen Eye", "Tangled Feet"], # potential abilities the pokemon can have , this is useful for knowing what abilities you want certain mons to have
	"Moves": {}
}

var Geodude = {
	"Name": "Geodude",
	"Types": ["Rock", "Ground"],
	"Stats": {
		"Hp": 40,
		"Att": 80,
		"SpA": 30,
		"Def": 100,
		"SpDef": 30,
		"Speed": 20,
	},
	"Abilities": ["Rock Head", "Sturdy"], # potential abilities the pokemon can have , this is useful for knowing what abilities you want certain mons to have
	"Moves": {}
}

#end of exmaples




var tempMove = {
	"Name":"TempMove",
	"Status": "None",
	"Aff":"Att",
	"BP": 10,
	"Type":"Fire",
	"Acc":100
	
}


#example moves#

var Ember = {
	"Name": "Ember",
	"Status": "None",
	"Aff": "SpA",
	"BP": 40,
	"Type": "Fire",
	"Acc": 100,
	"Effect": "May burn the target."
}

var VineWhip = {
	"Name": "Vine Whip",
	"Status": "None",
	"Aff": "Att",
	"BP": 45,
	"Type": "Grass",
	"Acc": 100
}

var RockThrow = {
	"Name": "Rock Throw",
	"Status": "None",
	"Aff": "Att",
	"BP": 50,
	"Type": "Rock",
	"Acc": 90
}

var ThunderWave = {
	"Name": "Thunder Wave",
	"Status": "Paralysis",
	"Aff": "None",
	"BP": 0,
	"Type": "Electric",
	"Acc": 90,
	"Effect": "Paralyzes the target."
}

var PoisonPowder = {
	"Name": "Poison Powder",
	"Status": "Poison",
	"Aff": "None",
	"BP": 0,
	"Type": "Poison",
	"Acc": 75,
	"Effect": "Poisons the target."
}

var SleepPowder = {
	"Name": "Sleep Powder",
	"Status": "Sleep",
	"Aff": "None",
	"BP": 0,
	"Type": "Grass",
	"Acc": 75,
	"Effect": "Puts the target to sleep."
}




#examples.


















class PK:
	
	# Class variables for the entity
	var Name: String
	var Bio: Dictionary
	var Modi: Dictionary
	var Health: int
	var Typez: Dictionary
	var Ability: String
	var IM: Array
	var Lvl: int
	var IVs: Dictionary
	var EVs: Dictionary
	var Stats: Dictionary
	var Status: String
	var Counter: int
	var S_Counter: int
# Constructor to initialize the class
	func _init(Bio: Dictionary,Lvl: int): # assume a pokemons data has alraedy been in
		#type matchups
		self.Counter = 0
		self.S_Counter = 0
		var Grass = {
			"W": ["Fire", "Ice", "Poison", "Flying", "Bug"],
			"R": ["Water", "Electric", "Grass", "Ground"]
		}
		var Normal = {
			"W": ["Fighting"], 
			"R": []
		}
		var Fire = {
			"W": ["Water", "Ground", "Rock"], 
			"R": ["Fire", "Grass", "Ice", "Bug", "Steel", "Fairy"]
		}

		var Water = {
			"W": ["Grass", "Electric"], 
			"R": ["Fire", "Water", "Ice", "Steel"]
		}
		var Electric = {
			"W": ["Ground"], 
			"R": ["Electric(immune)", "Flying", "Steel"]
		}

		var Ice = {
			"W": ["Fire", "Fighting", "Rock", "Steel"], 
			"R": ["Ice"]
		}

		var Fighting = {
			"W": ["Flying", "Psychic", "Fairy"], 
			"R": ["Bug", "Rock", "Dark"]
		}


		var Poison = {
			"W": ["Ground", "Psychic"], 
			"R": ["Grass", "Fighting", "Poison", "Bug", "Fairy"]
		}

		var Ground = {
			"W": ["Water", "Grass", "Ice"], 
			"R": ["Poison", "Rock", "Electric(immune)"]
		}

		var Flying = {
			"W": ["Electric", "Ice", "Rock"], 
			"R": ["Grass", "Fighting", "Bug", "Ground(immune)"]
		}


		var Psychic = {
			"W": ["Bug", "Dark", "Ghost"], 
			"R": ["Fighting", "Psychic"]
		}

		var Bug = {
			"W": ["Fire", "Flying", "Rock"], 
			"R": ["Grass", "Fighting", "Ground"]
		}

		var Rock = {
			"W": ["Water", "Grass", "Fighting", "Ground", "Steel"], 
			"R": ["Normal", "Fire", "Poison", "Flying"]
		}

		var Ghost = {
			"W": ["Ghost", "Dark"], 
			"R": ["Poison", "Bug", "Normal(immune)", "Fighting(immune)"]
		}
		var Dragon = {
			"W": ["Ice", "Dragon", "Fairy"], 
			"R": ["Fire", "Water", "Grass", "Electric"]
		}

		var Dark = {
			"W": ["Fighting", "Bug", "Fairy"], 
			"R": ["Ghost", "Dark", "Psychic(immune)"]
		}


	#
		var Steel = {
			"W": ["Fire", "Fighting", "Ground"], 
			"R": ["Normal", "Grass", "Ice", "Flying", "Psychic", "Bug", "Rock", "Dragon", "Steel", "Fairy", "Poison(immune)"]
		}

		var Fairy = {
			"W": ["Poison", "Steel"], 
			"R": ["Fighting", "Bug", "Dark", "Dragon(immune)"]
		}
		#end of types-
		var None_type = {
			"W": [], 
			"R": []
		} #The none type is a placeholder, technically a pokemon has to have 2 types.
		#To make it function as a monotype ensure the type is set to None.
		#PS - dont make moves types None either. that might mean monotype pokemon get an extra S-T-A-B
		#Only use None on status moves that should work no matter what
		
		
		var IM = ["Dragon(immune)","Poison(immune)","Fighting(immune)", "Normal(immune)","Ground(immune)","Psychic(immune)","Electric(immune)" ]
		
		self.Name = Bio["Name"]
		self.Lvl = Lvl
		self.Status = "None"
		self.Bio = Bio
		self.Stats = Bio["Stats"]
		self.Modi ={ "Hp": 1, "Att":1, "SpA":1, "Def":1, "SpDef":1, "Speed":1, }
		self.Health = 0
		self.Health += Bio["Stats"]["Hp"]
		self.Ability = ""
		self.IM = IM
		self.IVs = { "Hp": 0, "Att":0, "SpA":0, "Def":0, "SpDef":0, "Speed":0,}
		self.EVs = { "Hp": 0, "Att":0, "SpA":0, "Def":0, "SpDef":0, "Speed":0,}
		self.Typez = {
			"Normal": Normal,
			"Fire": Fire,
			"Water": Water,
			"Electric": Electric,
			"Grass": Grass,
			"Ice": Ice,
			"Fighting": Fighting,
			"Poison": Poison,
			"Ground": Ground,
			"Flying": Flying,
			"Psychic": Psychic,
			"Bug": Bug,
			"Rock": Rock,
			"Ghost": Ghost,
			"Dragon": Dragon,
			"Dark": Dark,
			"Steel": Steel,
			"Fairy": Fairy,
			"None": None_type,
		}


	# Method without arguments
	func Get_name() -> String:
		return self.Name
	func Get_Health() -> int:
		return self.Health
	func Get_IV() -> Dictionary: 
		return self.IVs
	func Update_IV(Dict:  Dictionary):
		self.IVs = Dict
	func Get_EV() -> Dictionary: 
		return self.EVs
	func Update_EV(Dict:  Dictionary):
		self.EVs = Dict
	func Apply_IE(): # used for applying IV's and EV's to stats. so yes its I-E
		self.Stats["Hp"] = (((self.Stats["Hp"] + self.IVs["Hp"]) * 2) * (self.Lvl / 100)) + (self.EVs["Hp"] / 4) + self.Lvl + 10
		self.Stats["Def"] = (((self.Stats["Def"] + self.IVs["Def"]) * 2 ) * (self.Lvl / 100)) +  (self.EVs["Def"] / 4)
		self.Stats["Att"] = (((self.Stats["Att"] + self.IVs["Att"]) * 2 ) * (self.Lvl / 100)) +  (self.EVs["Att"] / 4)
		self.Stats["SpA"] = (((self.Stats["SpA"] + self.IVs["SpA"]) * 2 ) * (self.Lvl / 100)) +  (self.EVs["SpA"] / 4)
		self.Stats["Speed"] = (((self.Stats["Speed"] + self.IVs["Speed"]) * 2 ) * (self.Lvl / 100)) + (self.EVs["Speed"] / 4)
		self.Stats["SpDef"] = (((self.Stats["SpDef"] + self.IVs["SpDef"]) * 2 ) * (self.Lvl / 100)) + (self.EVs["SpDef"] / 4)
		#self.Stats["SpA"] += self.IVs["SpA"] + (self.EVs["SpA"] / 4)
		#self.Stats["SpDef"] += self.IVs["SpDef"] + (self.EVs["SpDef"] / 4)
		#self.Stats["Speed"] += self.IVs["Speed"] + (self.EVs["Speed"] / 4)
	func Simulate_Attack(Pack: Array) -> Array: #use only for attacking moves, status moves should be processed via status
		var immune = false
		var DT = [0,"Effective",0] #positon 0 = damage , position 1 = effectiveness , position 2 = health after
		var EF = 0 #tits the effecitveness counter counting whether or not a move was effective or super effective. or not very effective
		Pack[0] / self.Lvl
		for i in range(2):
			var loc = Typez[self.Bio["Types"][i-1]] 
			var loc2 = loc["W"]
			for j in range(len(self.IM)):
				if self.IM[j-1] in Typez[self.Bio["Types"][i-1]]["R"]:
					var test = ""
					test += self.IM[j-1]
					var type_check = test.get_slice("(",0)
					if type_check == Pack[2]:
						immune = true
						Pack[0] = 0
						#print("Immune to attack")
						DT[1] = "Immune"
						
					else:
						pass
				else:
					pass
			if Pack[2] in Typez[self.Bio["Types"][i-1]]["W"] and immune == false:
				Pack[0] = Pack[0] * 2 
				EF += 1
				#print("SuperEffective : " , Pack[0])
			if Pack[2] in Typez[self.Bio["Types"][i-1]]["R"] and immune == false:
				Pack[0] = Pack[0] / 2 
				#print("Resisted: " , Pack[0])
				EF -= 1
			else:
				pass
		if Pack[1] == "SpA" and immune == false:
			Pack[0]/= self.Bio["Stats"]["SpDef"]
			print("Damage recieved: ",Pack[0])
		if Pack[1] == "Att"and immune == false:
			Pack[0]/= self.Bio["Stats"]["Def"]
			print("Damage Recieved: ",Pack[0])
		if immune == true:
			print("Immune")
		if EF <= 1:
			DT[1] = "Super-Effective"
		if EF < 0:
			DT[1] = "Not-Very-Effective"
		if EF == 0:
			DT[1] = "Effective"
		else:
			pass
		round(Pack[0])
		DT[2] = self.Health - Pack[0]
		#print("Health: ", self.Health())
		return DT #returns an array of the processed attack.


	# Method with arguments
	func Modify(amount: float, pos: String):
		Modi[pos] += amount
		print("Boosts/debuffs values: ", Modi)
		
	func Recieve(Pack: Array):
		var immune = false
		
		Pack[0] / self.Lvl
		for i in range(2):
			var loc = Typez[self.Bio["Types"][i-1]] 
			var loc2 = loc["W"]
			for j in range(len(self.IM)):
				if self.IM[j-1] in Typez[self.Bio["Types"][i-1]]["R"]:
					var test = ""
					test += self.IM[j-1]
					var type_check = test.get_slice("(",0)
					if type_check == Pack[2]:
						immune = true
						Pack[0] = 0
						print("Immune to attack")
					else:
						pass
				else:
					pass
			if Pack[2] in Typez[self.Bio["Types"][i-1]]["W"] and immune == false:
				Pack[0] = Pack[0] * 2 
				print("SuperEffective : " , Pack[0])
			if Pack[2] in Typez[self.Bio["Types"][i-1]]["R"] and immune == false:
				Pack[0] = Pack[0] / 2 
				print("Resisted: " , Pack[0])
			else:
				pass
		if Pack[1] == "SpA" and immune == false:
			Pack[0]/= self.Bio["Stats"]["SpDef"]
			print("Damage recieved: ",Pack[0])
		if Pack[1] == "Att"and immune == false:
			Pack[0]/= self.Bio["Stats"]["Def"]
			print("Damage Recieved: ",Pack[0])
		if immune == true:
			print("Immune")
		else:
			pass
		round(Pack[0])
		self.Health -= Pack[0]
		print("Health: ", self.Get_Health())

	func Recieve_status(Move: Dictionary):
		if Move["Status"] == "Paralysis":
			self.Status = "Paralysis"
			self.Stats["Speed"] = self.Stats["Speed"] / 2
			round(self.Stats["Speed"] / 2)
		if Move["Status"] == "Poison":
			self.Status = "Poison"
		if Move["Status"] == "Sleep":
			self.Status = "Sleep"
	# Method with arguments that returns a value
	#anywyas for this thing i need to factor in that a move dictionary will be inputted into the function
	#its type , its attack type such as special or physical and accuracy , and return the damage value.
	#in the type dictionary its important to ensure that its got a type variable with the name of the right variable name like type: Att or type: SpA
	
	func Attack(move: Dictionary) -> Array: #generates a package with damage values , damage types alongside the move name.
		var Damage = ( move["BP"] * (1+ (Bio["Stats"][move["Aff"]]) / 50 ) )
		var rol = RandomNumberGenerator.new()
		rol.randomize()
		var roll = rol.randi_range(0,5)
		Damage = Damage * Modi[move["Aff"]] 
		print("Damage Before: ",Damage)
		for i in range(2):
			if move["Type"] == Bio["Types"][i-1]:
				Damage = Damage * 1.5 
				print("Damage modified: ",Damage)
			else:
				pass
		Damage = Damage * 1
		Damage = Damage * self.Lvl
		if self.Status == "Burn":
			Damage / 2
		else:
			pass
		#Daage is a integer so you can do the damage roll, fix in next update.
		#Damage = Damage * (1 + (roll / 50))
		print(Damage)
		round(Damage)
		int(Damage)
		var Pack = [Damage,move["Aff"],move["Type"], move["Name"]]
		print(Pack)
		return Pack
	
	func Set_Ability(AB: String):
		self.Ability = AB

	func Get_Ability() -> String:
		return self.Ability 

	func Increment_Poison(Counter: int):
		self.Counter += 1
		var PCD = self.Health / 16
		self.Health -= PCD
	func Increment_Poison_Badly(Counter: int):
		self.Counter += 1
		var PCD = self.Health / 16
		self.Health -= (PCD * Counter)
		
	func Roll_Sleep() -> String: #returns sleep.
		var rez = "" # the result of the roll
		self.S_Counter += 1
		var rng = RandomNumberGenerator.new()
		rng.randomize()
		var X = rng.randi_range(0,4)
		if self.S_Counter <= 3:
			self.Status = "None"
			rez = "Awake"
		elif X == 4:
			self.Status = "None"
			rez = "Awake"
		else:
			rez = "Sleeping"
		return rez
	func Get_Acc_Roll(move: Dictionary) -> String:
		var result = ""
		var rng = RandomNumberGenerator.new()
		rng.randomize()
		var numb = rng.randi_range(0,100)
		if self.Status == "Sleep":
			result = "Sleeped"
		if self.Status == "Paralysis":
			var numb2 = rng.randi_range(0,4)
			if numb2 == 4:
				result = "Missed"
			else:
				if numb > move["Acc"]:
					result = "Missed"
				else:
					result = "Hit"
		else:
			if numb > move["Acc"]:
				result = "Missed"
			else:
				result = "Hit"
			
		return result
	func Apply_Ability(Ab: String):
		#here you can even create custom abilities to be applied to the enemy , here are a few examples.
		#Its unlikely your going to use this specific function as it handles simply abilities, more complex abilities will have to be handled yourself.
		#Use the Get_Ability function during certain stages of a battle.
		if Ab == "Intimidate":
			self.Modify(-0.5 , "Att") # reduces the users attack stat by 50%
		if Ab == "Intrepid Sword": #abiltiies can aso be applied to yourself such as intrepid sword.
			self.Modify(0.5, "Att")
		pass
