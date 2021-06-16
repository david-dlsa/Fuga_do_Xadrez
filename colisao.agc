colisao:
	//#include "gameover.agc"
	
	LoadImage(40, "game over.jpg")
	
	for i=1 to 13
		if GetSpriteY(1)-GetSpriteY(torre[i]) = 0
			if GetSpritex(1) - GetSpritex(torre[i]) = -9 //653 
				gameover = 1
				DeleteMusic(21)
				DeleteAllSprites()
				CreateSprite(40,40)
				loadmusic(27,"musicagameover.mp3")
				PlayMusic(27)
				//gosub gameover
				elseif GetSpritex(1) - GetSpritex(torre[i]) = 9
					gameover = 1
					DeleteMusic(21)
					DeleteAllSprites()
					CreateSprite(40,40)
					loadmusic(27,"musicagameover.mp3")
					PlayMusic(27)
					//gosub gameover
			endif
		endif
	next i
	
	for i=1 to 12
		if GetSpriteY(1)-GetSpriteY(peao[i]) = 90
			if GetSpritex(1) - GetSpritex(peao[i]) = 75
				gameover = 1
				DeleteMusic(21)
				DeleteAllSprites()
				CreateSprite(40,40)
				loadmusic(27,"musicagameover.mp3")
				PlayMusic(27)
				gosub gameover
				elseif GetSpritex(1) - GetSpritex(peao[i]) = -89
					gameover = 1
					DeleteMusic(21)
					DeleteAllSprites()
					CreateSprite(40,40)
					loadmusic(27,"musicagameover.mp3")
					PlayMusic(27)
					//gosub gameover
			endif
		endif
	next i
	
	for i=1 to 15
		if GetSpriteY(1)-GetSpriteY(cavalo[i]) = 90
			if playerx-GetSpriteX(cavalo[i]) = 168
				gameover = 1
				DeleteMusic(21)
				DeleteAllSprites()
				CreateSprite(40,40)
				loadmusic(27,"musicagameover.mp3")
				PlayMusic(27)
				//gosub gameover
				elseif playerx-GetSpriteX(cavalo[i]) = -168
					gameover = 1
					DeleteMusic(21)
					DeleteAllSprites()
					CreateSprite(40,40)
					loadmusic(27,"musicagameover.mp3")
					PlayMusic(27)
					//gosub gameover
			endif
		endif
	next i
	
	for i=1 to 14
		if GetSpriteY(1)-GetSpriteY(bispo[i]) = 270
			if playerx-GetSpriteX(bispo[i]) = -252
				gameover = 1
				DeleteMusic(21)
				DeleteAllSprites()
				CreateSprite(40,40)
				loadmusic(27,"musicagameover.mp3")
				PlayMusic(27)
				//gosub gameover
				elseif playerx-GetSpriteX(bispo[i]) = 252
					gameover = 1
					DeleteMusic(21)
					DeleteAllSprites()
					CreateSprite(40,40)
					loadmusic(27,"musicagameover.mp3")
					PlayMusic(27)
					//gosub gameover
			endif
		endif
	next i

return
