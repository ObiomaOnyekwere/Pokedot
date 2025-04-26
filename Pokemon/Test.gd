extends Node2D



func _ready():
	var P1 = Data.PK.new(Data.Charmander, 100) # heres an example of a instantiated pokemon. The level is inputted alongside the species data.
	#by default all IVs are 0 so are the EVS. That will have to be manually handlded
	var P2 = Data.PK.new(Data.Geodude, 100)
	
	P2.Generate_IVs()
	
	P1.Generate_IVs()
	
	P1.Apply_IE() # do this before every damage calc it sets up your pokemons IVs and level into account.
	
	P2.Apply_IE()
	
	
	# if you want to do an accuracy check before letting the move hit you can use this function.
	
	P1.Recieve_status(Data.ThunderWave)
	
	var E = P1.Get_Acc_Roll(Data.RockThrow)
	
	if E == "Missed":
		print("Missed move")
	if E == "Paralyzed":
		print("Paralyzed")
	else:
		P1.Recieve(P2.Attack(Data.RockThrow,P1.Get_Stats()))
		#P2.Recieve(P1.Attack(Data.Bubble))
		print("Hit")
	
	
	
