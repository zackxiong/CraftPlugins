# CraftPlugins
These are the Bukkit plugins I am developping:

##Blockode:

This is a small game I write for fun and also for use in my server. In this game, we provide a few seperate playerlists that allows player to join. 
Each list will be maintained as a game. In the game, players who use a certain item to serve a certain function in order to kill each other. Any kinds 
of maps are suitable for this game. 

###Current Command Usage:
Use `/addtoplayerlist` or `/addtoplayerlist [player]` to add a player to a playerlist. (Till now, I only provide one playerlist)<br>

Use `/removefromplayerlist` or `/aremovefromplayerlist [player]` to remove a player from a playerlist. (Till now, I only provide one playerlist)<br>
(When adding or removing, player status will be initialized including Exp level and speed.)<br>

Use `/getinfo` to gather the current game info. <br>

###Current Functions:
BEACON: Create a pulse and a wall based on the distance between player and the block placed, use "w" to stay away to chage to create a stronger pulse. 
		When charging, the player's speed will be slowed down. <br>
		
TNT:    Creat an explosion after a short delay. When delaying, player's speed will be increased. <br>

Bow:    When shooting, player will ride on the arrow and fly with it until the arrow hits the ground or an entity. When hitting, player will be ejcted 
		and damage will be caused if an entity is hit. The volocity of the arrow is enhanced to fly faster and straighter. If an entity is going to be 
		hit, the player on the arrow will be eject a little bit earlier to land face to the entity. Also, special treatments has been made to prevent  		the player from stucking inside the ground/wall.
