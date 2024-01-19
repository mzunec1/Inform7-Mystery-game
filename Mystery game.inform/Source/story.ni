"Mystery game" by Mateja Zunec

Release along with a website.
Release along with an interpreter.

Use scoring. 

The maximum score is 20.

Every turn:
	if score is 0:
		end the story saying "Game over!";

Section - Defining rooms, doors and descriptions
 
Hallway is a room.  
The description of Hallway is "You entered the house. The hallway runs from south to north. In the north wall is the closet.  In west wall is a Old wooden door. A long hallway painted with gray walls. There are pictures on the walls."

Kitchen is a room. 
The description of Kitchen is "It's so quiet here, like there's no one, but there's someone. There was big brown table in the middle. The man is standing near table. The smell of chocolate cake is in the air."

Living room is a room. 
The description of Living room is "The living room is dark and feels cold. A woman stands in the middle of the room and looks through you. It seems she didn't even notice you coming into the room." 

Work room is a room. 
The description of Work room is "You enter the room. It is painted green and unlike the previous room, it is somehow calm."

Bedroom is a room.
The description of Bedroom is "A dark bedroom. Moonlight comes through the window, but it's too dark to see anything. "

Section - Actions

The player is in the Hallway.

Talking to is an action applying to one visible thing. Understand "talk to [someone]" or “converse with [someone]” as talking to.

Understand "give [things] to [someone]" as giving it to.	

Understand "cake" and "piece of cake" as the piece of cake.

Understand "lamp" and "wall lamp" as the wall lamp.

Understand "the light-switch" and "light" and "lights" and "switch" as the light-switch.

Understand "turn on" as switching on.

Understand "turn off" as switching off.

Part - Hallway

The Old wooden door is a door. The Old wooden door is east of the Hallway and west of the Kitchen.
The description of Old wooden door is "Brown wooden door with a message: No entry!"
The Old wooden door is lockable and locked. The old key unlocks the Old wooden door.

Red locker is a thing in the Hallway. It is an openable container. It is closed. 

The rusty key is in Red locker. 

Instead of opening Red locker:
	increase the score by 5;
	say "You found rusty key!";
	now the player carries rusty key;

Before opening the Old wooden door:
	if the Old wooden door is closed and the Old wooden door is locked:
		if the player carries the old key:
			if the player is in the Hallway:
				say "(first unlocking the Old wooden door with the old key, then opening the door)[paragraph break]";
				now the Old wooden door is unlocked;
				now the Old wooden door is open.
The player carries the old key.

Instead of opening the Old wooden door:
	if player is in the Hallway:
		increase the score by 5;
		say "Courage is profitable, 5 points for you.";
		now the Old wooden door is locked;
		now the Old wooden door is closed;
		now the player is in Kitchen;

Instead of entering the Old wooden door:
	if player is in the Kitchen:
		say "There is no return anymore! Ask Jimmy for the help";
		now the player is in Kitchen;
		
Part - Kitchen

The Black door is open door. The Black door is north of the Kitchen and south of the Living Room. The description of Black door is "A creaking sound is heard behind the black door. Maybe someone is in there."	

The brown table is in the Kitchen.  The plate is the thing on the table. 
Jimmy is a man in the kitchen. 

Instead of talking to Jimmy:
	say "[one of]'My name is Lucy. How do I get out of the house? I am scared' .[paragraph break]Hi Lucy, my name is Jimmy. You must find third key. The golden one. That's all I can tell you. - he replies seriously and left the room.[stopping]There is something on the table. Check it!".

The plural of piece of cake is pieces of cake. The piece of cake is a kind of thing. The pieces of cake is always edible. Five pieces of cake are on the plate.

Toxicity is a kind of value. The toxicities are safe and poisonous. A pieces of cake has a toxicity. A pieces of cake is usually safe. 

After eating a poisonous piece of cake:
	decrease the score by 5;
	say "Delicious chocolate cake, but poisoned!"
	
After eating a safe piece of cake:
	say "Delicious chocolate cake, but you still don't have the third key!"

When play begins:
	now a random piece of cake is poisonous.
	
Part - Living room
	
Zara is a person in Living room. 
The Green door is door. The Green door is west of the Living Room and east of the Work Room. The Green door is closed.

Instead of talking to Zara:
	say "[one of]'Can you hear me? Where is third key?'- Lucy asks.[paragraph break] 'If you want third key, you must gave me the other key.' - she replies and standing motionless. [paragraph break] 'But I have to have all the keys for her to leave the house.' -Lucy replies. [paragraph break] 'That is not true. If you give me the old key, I will give you the answers.' - said Zara.' [stopping]".

Instead of giving a old key to Zara:
	decrease the score by 5;
	say "It is a trap! Zara won't help you.";
	now Zara carries old key;
			
The bookshell is thing in Living room. It is openable container. It is open. The description is "Bookshell is old. The boards are full of dust."

The book is thing in the bookshell. It is openable container. It is closed. 

Instead of opening the book:
	increase the score by 10;
	say "The book hides a secret message: 'Dreams are sweet, but reality is bitter. Finding the key is a real pain. Find the chest first!'"

After opening the Green door:
	now the player is in Work room;

Part - Work room

The desk is the thing in the Work room.  
The showcase is the thing in the Work room. It is an openable container. It is closed.
The armchair is the thing in the Work room.

The chest is the thing in the showcase.  It is an openable container.
The chest is closed and locked.
The golden key unlocks the chest.
	
The Light door is door. The Light door is south of the Work Room and north of the  Bedroom. The Light door is closed.

After opening the Light door:
	now the player is in  Bedroom;
	
Part - Bedroom

The bed is thing in the Bedroom. The golden key can be found. The golden key is not found.

Instead of looking under the bed:
	if the golden key is found:
		say "There is nothing under there, just a lot of dust.";
	otherwise:
		now the golden key is found;
		now the player carries the golden key;
		say "Something glow... Oh, it is golden key!";
	
Instead of unlocking the chest with the golden key:
	if the chest is locked and the chest is closed:
		if player carries the golden key:
			say "Unlocking! ";
			now the chest is unlocked;
	otherwise:
		say "You need golden key!";

Instead of opening the chest:
	if the chest is unlocked and the chest is closed:
		if player is in the Bedroom:
			end the story saying "Congratulations! You won! ";
	otherwise:
		say " It's locked.The third key unlocks, but you can take it with you.";
	
The light-switch is a thing in the Bedroom. The light-switch is scenery.
Wall lamp is a thing in the Bedroom. The Bedroom is dark. The wall lamp is not lit.

Instead of switching on the light-switch:
	now the wall lamp is lit;
	say "You turn on the lights."

Instead of switching off the light-switch:
	now the wall lamp is not lit;
	say "You turn off the lights."

Rule for printing the announcement of darkness:
	if the player is in the Bedroom and the wall lamp is not lit:
		say "Turn on lights." instead;

Instead of switching off the wall lamp:
	try switching off the light-switch.

After deciding the scope of the player when the player is in the Bedroom:
	place the light-switch in scope.

Darkness count is a number that varies. Darkness count is 0.

Rule for printing the description of a dark room:
	if the player is in the Bedroom and the darkness count is greater than 0:
		say "The room is pitch dark, but as you grope around in the darkness, your fingers touch a switch on the wall.";
	otherwise:
		increase the darkness count by 1;
		say "It is too dark, and you can't see a thing."
		

	