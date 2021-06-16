SetWindowSize (1280,720,0)
SetVirtualResolution(1280,720)

DeleteAllImages()
DeleteAllSprites()

#include "menu.agc"
//Variaveis de incremento
Score as integer
tempo as integer


//Variaveis de posiçao
x as integer
y as integer
playerx as integer
playery as integer
tabuleirox as integer
tabuleiroy as integer

//Variaveis de teste
a as integer
teste as integer
coldown as integer
music as integer
gameover as integer
cont as integer

// Variaveis de criação
torre as integer [13]
peao as integer [12]
cavalo as integer [15]
bispo as integer [14]


LoadMusic(20,"trilha sonora menu.mp3")
PlayMusic (20)

LoadImage (12,"menu.jpg")
CreateSprite(12,12)

Loadimage(24,"som ativo.png")
createsprite(24,24)

clique = LoadSoundOGG("botao.ogg")
a=0
Score = 0
teste = 0
do
	tempo = GetSeconds()
	
	if GetRawMouseLeftPressed()
		if teste = 1
			DeleteSprite(33)
			deletesprite(34)
			teste = 0
		endif
	endif
	
	/*if tempo = 5
		DeleteSprite(34)
	endif
	*/ 
	if teste=0
		Gosub menu
	endif
	sync()
loop
