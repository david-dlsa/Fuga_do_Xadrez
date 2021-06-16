score:
	
	for i=1 to 13
		if GetSpriteY(torre[i]) > 700
			DeleteSprite(torre[i])
			Score = Score + 10
		endif
	next i
	
	for i=1 to 12
		if GetSpriteY(peao[i]) > 700
			DeleteSprite(peao[i])
			Score = Score + 10
		endif
	next i
	
	for i=1 to 15
		if GetSpriteY(cavalo[i]) > 700
			DeleteSprite(cavalo[i])
			Score = Score + 10
		endif
	next i
	
	for i=1 to 14
		if GetSpriteY(bispo[i]) > 700
			DeleteSprite(bispo[i])
			Score = Score + 10
		endif
	next i







return
