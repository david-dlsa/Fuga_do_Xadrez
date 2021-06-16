gameover:

//LoadImage(40, "game over.jpg")
//CreateSprite(40,40)
	
	if GetRawMouseLeftPressed() and gameover=1
		if x>=760 and x<=1156 and y>=478 and y<=575  //menu
			Score = 0
			gameover = 0
			playsound(clique)
			DeleteAllSprites()
			DeleteAllImages()
			deletemusic(27)
			
			
			
			//menu\\
			#include "menu.agc"

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

		endif
	endif

return
