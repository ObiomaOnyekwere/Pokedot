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
var P1 = Data.PK.new(Data.Geodude, 100) # here you can see the species and level initiated.
#to finish the initiation so that IVS and set EV's take effec please use the next function.
P1.Apply_IE()

var P2 = Data.PK.new(Data.Pidgey, 100)

P2.Apply_IE()


P1.Attack(Data.RockThrow) # generates the damage output for a move, this can then be supplied into a secondary function by the reciveer.

P2.Recieve(P1.Attack(Data.RockThrow)) # thus the pidgey has just recieved the rockthrow.

#lets say a move isnt 100% accourate well.

#you can get values for if a move should miss using this function

var E = P2.Get_Acc_Roll(Data.RockThrow)

#using the return value of Hit or miss you can handle whether or not a moves hit should register.

#heres an example.

var E = P1.Get_Acc_Roll(Data.RockThrow)
	
if E == "Missed":
  print("Missed move")
else:
  P1.Recieve(P2.Attack(Data.RockThrow))
  print("Hit")

#Theres this and many more such features you should be able to find within this framework.

#i may update the github as time goes on if i add anything more fancy of note.
	
```


### Contributing

Pull requests are welcome! this is my first github repo and this is for GODOT 3.0 
Perhaps a 4.0 port may be done but im sure the code should work between the two rather easily.

## License

[MIT](https://choosealicense.com/licenses/mit/)


