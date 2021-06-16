move:

cont = cont + 1
LoadSoundOGG(22,"somrei2.ogg")

if GetRawKeyPressed(37) and cont >= 20
	playerx = 560
	cont = 0
	Score = Score - 5
	Playsound(22)
endif

if GetRawKeyPressed(39) and cont >= 20
	playerx = 644
	cont = 0
	Score = Score - 5
	Playsound(22)
endif

SetSpritePosition(1,playerx,playery)

return
