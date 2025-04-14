# Pokedot
A basic Framework for aiding the creation of pokemon styled games.

## Installation

Just slap in the Data.gd file and then make it an autoload. From there your good to go!

## Features

This framework offers alot! it can handle damage calaculations of any pokemon you feed into the framework.
It can even handle new types if you want to add some yourself , youll find its very easy!
The framework handles all type matchups and even accounts for immmunities.
This framework even takes status into account and you can simulate status like paralysis rolls alongside toxic and burn effects.
This framework also takes IV and EV's into account with a function that allows you to apply them onto a pokemon entities stats.

### Functions

```gdscript

# instantiating a new pokemon! example
var P1 = Data.PK.new(Data.Charmander, 100) # heres an example of a instantiated pokemon. The level is inputted alongside the species data.
#by default all IVs are 0 so are the EVS. That will have to be manually handlded
var P2 = Data.PK.new(Data.Geodude, 100)
	
P2.Generate_IVs() # Generate a random set of Iv's for the pokemon between 0-31. Useful for random pokemon. But you could alsways do this for trainers too!
	
P1.Generate_IVs()
	
P1.Apply_IE() # do this before every damage calc it sets up your pokemons IVs EVs and level into account. Its the final process of the initialization.
	
P2.Apply_IE()
	
	
# if you want to do an accuracy check before letting the move hit you can use this function.
	
P1.Recieve_status(Data.ThunderWave)
	
var E = P1.Get_Acc_Roll(Data.RockThrow)
	
if E == "Missed": # this is a simple way of checking if a move misses or not.
	print("Missed move")
if E == "Paralyzed":
	print("Paralyzed")
else:
	P1.Recieve(P2.Attack2(Data.RockThrow,P1.Get_Stats()))
	print("Hit")
	
	
	

#Theres this and many more such features you should be able to find within this framework.

#the most used for you might be.

Get_Health() # returns current health

Get_IV() # Returns a dictionary of the IVs

Update_IV() # takes a dictionary that aloows you to update the IV's . first you must get the iVS and then apply changes to then in a variable. and then you can update them.

Get_EV() #Takes a dictionary that alloows you to update

Get_Stats() #Returns the dictionary containing the stats of the pokemon, stats arnt editable directly.

Sim_Attack() Requires the attack to be placed in. This function allows you to analyze what would happen in a hypotehtical scernario by returning a list of data that describes what happend.
#[0,"Effective",0] #positon 0 = damage , position 1 = effectiveness , position 2 = health after



#This is the second and most liekly last update for this.. but i could add weather or items at some point.
	
```


### Contributing

Pull requests are welcome! this is my first github repo and this is for GODOT 3.0 
Perhaps a 4.0 port may be done but im sure the code should work between the two rather easily.

## License

[MIT](https://choosealicense.com/licenses/mit/)


