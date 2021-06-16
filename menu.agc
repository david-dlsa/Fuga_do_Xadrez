menu:

x = GetRawMouseX()
y = GetRawMouseY()

coldown = coldown + 1



if GetRawMouseLeftPressed() and coldown>=5 and teste = 0
	
	coldown=0
	if x>=52 and x<=452 and y>=470 and y<=566//jogar
		#include "start.agc"
		playsound(clique)
		DeleteMusic(20)
		DeleteAllSprites()
		DeleteAllImages()
		gosub start
			elseif x>=52 and x<=452 and y>=600 and y<=696 and teste = 0//Instruçoes
				teste = teste + 1
				playsound(clique)
				LoadImage(33, "instruçoes.jpg")
				CreateSprite(33,33)
				SetSpriteVisible(32,0)
				ResetTimer()
					
				elseif x>= 788 and x<=1183 and y>=470 and y<=566 and teste = 0 // Creditos
					teste = teste + 1
					playsound(clique)
					LoadImage(34, "creditos.jpg")
					CreateSprite(34,34)
					SetSpriteVisible(32,0)
					ResetTimer()
				
					elseif x>= 788 and x<=1183 and y>=600 and y<=696 and teste = 0 // sair
						playsound(clique)
						teste = teste + 1
						end
						
					elseif x>= 1110 and x<=1300 and y>=17 and y<=83 and music=0   // musica
						playsound(clique)
						DeleteSprite(24)
						DeleteImage(24)
						PauseMusic()
						loadsprite(25,"som mutado.png")
						CreateSprite(25)
						music=1
					elseif x>= 1110 and x<=1300 and y>=17 and y<=83 and music=1   // musica
						playsound(clique)
						DeleteSprite(25)
						ResumeMusic()
						loadsprite(24,"som ativo.png")
						CreateSprite(24)
						music=0	
			endif
	endif

return
