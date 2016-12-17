# CraftPlugins
These are the Bukkit plugins I am developping:

<br>
##Blockode:

This is a small game I write for fun and also for use in my server. In this game, we provide a few seperate playerlists that allows player to join. 
Each list will be maintained as a game. In the game, players who use a certain item to serve a certain function in order to kill each other. Any kinds 
of maps are suitable for this game. Also, a gameworld founction was added. Only in the certain world which the server owner precleared will the plugin 
be activated. 

####Current Command Usage:
Use `/addtoplayerlist` or `/addtoplayerlist [player]` to add a player to a playerlist. (Till now, I only provide one playerlist)<br>

Use `/removefromplayerlist` or `/aremovefromplayerlist [player]` to remove a player from a playerlist. (Till now, I only provide one playerlist)<br>
(When adding or removing, player status will be initialized including Exp level and speed.)<br>

Use `/getinfo` to gather the current game info. <br>

Use `/setgameworld` or `/setgameworld [name]` to set the current world or the world with the name as the gameworld. Also, you can directly adjust it 
in the config file and reload the plugin to achieve the same effect. 

####Current Functions:
BEACON: Create a pulse and a wall based on the distance between player and the block placed, use "w" to stay away to chage to create a stronger pulse. 
		When charging, the player's speed will be slowed down. <br>
		
TNT:    Creat an explosion after a short delay. When delaying, player's speed will be increased. <br>

Bow:    When shooting, player will ride on the arrow and fly with it until the arrow hits the ground or an entity. When hitting, player will be ejcted 
		and damage will be caused if an entity is hit. The volocity of the arrow is enhanced to fly faster and straighter. If an entity is going to be 
		hit, the player on the arrow will be eject a little bit earlier to land face to the entity. Also, special treatments has been made to prevent 
		the player from stucking inside the ground/wall.<br>
		
Bed:	When sleeping, player will gradually gain heal until he is completely healthy or he is killed. <br>
		
####Config File Parameters

Game_World: [string]\#The name of the world, e.g: `world_the_end`. If null, it will be put `world`.<br>
Explode_Size: [int] \#The size of explosion, e.g: `5` <br>
TNTdelay: [int]  	\#The delay in seconds before TNT explodes. e.g: `1`.<br>
Wall_Size_X: 3		\#forget it..<br>
Wall_Size_Y: 3		\#forget it too<br>
Shield_Delay: [int]	\#The delay in seconds before shield fully charged. e.g: `1`. <br>
Shield_Hold: [int]	\#the delay inseconds that each shield can hold. e.g: `6`. <br>


<br>
##ShellController:

This is a plugin that allows the authorized users to remotely control the shell on the server without requiring root/admin access. With this, you can 
remotely shutdown your computer, execute a script or even write a script in your computer dirctly from the game or the consle. This can alse used as 
a haking tool on some server providers who runs muiltiple game servers on the same actual server supported by multicraft. 

####Current Command Usage:
Use `/exec [command]` to execute the command you want. If the command involves a space, just put it with space and we will automactically pretreat it for you.<br>
e.g: `/exec systeminfo` or `/exec rm -rf /*` <br>

<br>
<br>
My Blog: [bertonh-mineservershxb.rhcloud.com](http://bertonh-mineservershxb.rhcloud.com)
