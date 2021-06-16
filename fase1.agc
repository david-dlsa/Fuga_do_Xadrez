fase1:
//	torre as integer [13]
	torre1x = 569
	torre2x = 653
	torre1y = -245
	torre2y = -965
	torre3y = -1685
	torre4y = -1865
	torre5y = -2045
	torre6y = -2495
	torre7y = -3035
	torre8y = -3845
	torre9y = -4475
	torre10y = -5015
	torre11y = -5285
	torre12y = -7355
	torre13y = -8615
	
	
//	peao as integer [12]
	peao1x = 485
	peao2x = 733
	peao1y = -65
	peao2y = -605
	peao3y = -1235
	peao4y = -2315
	peao5y = -2945
	peao6y = -4115
	peao7y = -4745
	peao8y = -6365
	peao9y = -7175
	peao10y = -7535
	peao11y = -7985
	peao12y = -8525
	

	
//	cavalo as integer [15]
	cavalo1x = 392
	cavalo2x = 812
	cavalo1y = -515 
	cavalo2y = -1415
	cavalo3y = -2405
	cavalo4y = -2765
	cavalo5y = -3215  
	cavalo6y = -3395
	cavalo7y = -3575
	cavalo8y = -3755
	cavalo9y = -4925
	cavalo10y = -5285
	cavalo11y = -6185
	cavalo12y = -6455
	cavalo13y = -6635
	cavalo14y = -7265
	cavalo15y = -8165
	
	
//	bispo as integer [14]
	bispo1x = 392
	bispo2x = 812
	bispo1y = -965
	bispo2y = -1775
	bispo3y = -3935
	bispo4y = -4475
	bispo5y = -4565
	bispo6y = -5735
	bispo7y = -5915
	bispo8y = -6095
	bispo9y = -6275
	bispo10y = -6995
	bispo11y = -7175
	bispo12y = -7895
	bispo13y = -7985
	bispo14y = -8525
	
	playerx=644										// posição inicial o rei (Peça principal) 
	playery=655
	
	tabuleirox = 0									// posição inicial do tabuleiro
	tabuleiroy = 0
	
	
	for i=1 to 13
		torre[i] = CreateSprite(LoadImage("torre.png"))
	next i
	for i=1 to 12
		peao[i] = CreateSprite(LoadImage("peao.png"))
	next i
	for i=1 to 15
		cavalo[i] = CreateSprite(LoadImage("cavalo.png"))
	next i
	for i=1 to 14
		bispo[i] = CreateSprite(LoadImage("bispo.png"))
	next i
	
	
	
	
return
