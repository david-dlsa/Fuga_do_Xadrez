start:

	ResetTimer()
/*
	time as integer
	Score as integer
	cont as integer
	
	playerx as float
	playery as float
*/
		
	#include "loader.agc"
	#include "move.agc"
	//#include "tabuleiro.agc"
	//#include "pecas.agc"
	#include "colisao.agc"
	//#include "condicao.agc"
	#include "fase1.agc"
	#include "score.agc"
	#include "gameover.agc"
	#include "win.agc"
	
	gosub loader
	//gosub tabuleiro
	gosub fase1

	

do

tempo = GetSeconds()
x = GetRawMouseX()
y = GetRawMouseY()

if GetRawMouseLeftPressed()
	if x>= 1190 and x<=1260 and y>=37 and y<=63 and music=0   // musica
		playsound(clique)
		DeleteSprite(24)
		PauseMusic()
		loadsprite(25,"som mutado.png")
		CreateSprite(25)
		music=1
		elseif x>= 1190 and x<=1260 and y>=37 and y<=63 and music=1   // musica
			playsound(clique)
			DeleteSprite(25)
			ResumeMusic()
			loadsprite(24,"som ativo.png")
			CreateSprite(24)
			music=0	
	endif
endif
	
	print("Score :")
	print(Score)

	time = GetSeconds()
	
	if time = 1
		torre1y = torre1y + 90								// Movimentação das peças
		torre2y = torre2y + 90
		torre3y = torre3y + 90
		torre4y = torre4y + 90
		torre5y = torre5y + 90
		torre6y = torre6y + 90
		torre7y = torre7y + 90							
		torre8y = torre8y + 90
		torre9y = torre9y + 90
		torre10y = torre10y + 90
		torre11y = torre11y + 90
		torre12y = torre12y + 90
		torre13y = torre13y + 90
		
		peao1y = peao1y + 90
		peao2y = peao2y + 90
		peao3y = peao3y + 90
		peao4y = peao4y + 90
		peao5y = peao5y + 90
		peao6y = peao6y + 90
		peao7y = peao7y + 90
		peao8y = peao8y + 90
		peao9y = peao9y + 90
		peao10y = peao10y + 90
		peao11y = peao11y + 90
		peao12y = peao12y + 90
			
		cavalo1y = cavalo1y + 90
		cavalo2y = cavalo2y + 90
		cavalo3y = cavalo3y + 90
		cavalo4y = cavalo4y + 90
		cavalo5y = cavalo5y + 90
		cavalo6y = cavalo6y + 90
		cavalo7y = cavalo7y + 90
		cavalo8y = cavalo8y + 90
		cavalo9y = cavalo9y + 90
		cavalo10y = cavalo10y + 90
		cavalo11y = cavalo11y + 90
		cavalo12y = cavalo12y + 90
		cavalo13y = cavalo13y + 90
		cavalo14y = cavalo14y + 90
		cavalo15y = cavalo15y + 90
		
		bispo1y = bispo1y + 90
		bispo2y = bispo2y + 90
		bispo3y = bispo3y + 90
		bispo4y = bispo4y + 90
		bispo5y = bispo5y + 90
		bispo6y = bispo6y + 90
		bispo7y = bispo7y + 90
		bispo8y = bispo8y + 90
		bispo9y = bispo9y + 90
		bispo10y = bispo10y + 90
		bispo11y = bispo11y + 90
		bispo12y = bispo12y + 90
		bispo13y = bispo13y + 90
		bispo14y = bispo14y + 90
		
		tabuleiroy = tabuleiroy - 90						// Movimentação tabuleiro
	endif
	
	if tabuleiroy < -90										// Respawn do Tabuleiro
		tabuleiroy = 0
	endif

	if time = 1 //and gameover = 0
		ResetTimer()										// Zerar o contador base para a movimentaçao do jogo
	endif
	
	SetSpritePosition(torre[1],torre1x,torre1y)
	SetSpritePosition(torre[2],torre1x,torre2y)
	SetSpritePosition(torre[3],torre2x,torre3y)
	SetSpritePosition(torre[4],torre1x,torre4y)
	SetSpritePosition(torre[5],torre2x,torre5y)
	SetSpritePosition(torre[6],torre2x,torre6y)
	SetSpritePosition(torre[7],torre1x,torre7y)
	SetSpritePosition(torre[8],torre1x,torre8y)
	SetSpritePosition(torre[9],torre2x,torre9y)
	SetSpritePosition(torre[10],torre1x,torre10y)
	SetSpritePosition(torre[11],torre2x,torre11y)
	SetSpritePosition(torre[12],torre2x,torre12y)
	SetSpritePosition(torre[13],torre2x,torre13y)
	
	SetSpritePosition(peao[1],peao2x,peao1y)
	SetSpritePosition(peao[2],peao2x,peao2y)
	SetSpritePosition(peao[3],peao1x,peao3y)
	SetSpritePosition(peao[4],peao1x,peao4y)
	SetSpritePosition(peao[5],peao2x,peao5y)
	SetSpritePosition(peao[6],peao2x,peao6y)
	SetSpritePosition(peao[7],peao1x,peao7y)
	SetSpritePosition(peao[8],peao1x,peao8y)
	SetSpritePosition(peao[9],peao1x,peao9y)
	SetSpritePosition(peao[10],peao2x,peao10y)
	SetSpritePosition(peao[11],peao2x,peao11y)
	SetSpritePosition(peao[12],peao1x,peao12y)
	
	SetSpritePosition(cavalo[1],cavalo2x,cavalo1y)
	SetSpritePosition(cavalo[2],cavalo2x,cavalo2y)
	SetSpritePosition(cavalo[3],cavalo1x,cavalo3y)
	SetSpritePosition(cavalo[4],cavalo1x,cavalo4y)
	SetSpritePosition(cavalo[5],cavalo1x,cavalo5y)
	SetSpritePosition(cavalo[6],cavalo2x,cavalo6y)
	SetSpritePosition(cavalo[7],cavalo1x,cavalo7y)
	SetSpritePosition(cavalo[8],cavalo2x,cavalo8y)
	SetSpritePosition(cavalo[9],cavalo2x,cavalo9y)
	SetSpritePosition(cavalo[10],cavalo2x,cavalo10y)
	SetSpritePosition(cavalo[11],cavalo2x,cavalo11y)
	SetSpritePosition(cavalo[12],cavalo1x,cavalo12y)
	SetSpritePosition(cavalo[13],cavalo2x,cavalo13y)
	SetSpritePosition(cavalo[14],cavalo1x,cavalo14y)
	SetSpritePosition(cavalo[15],cavalo1x,cavalo15y)
	
	SetSpritePosition(bispo[1],bispo1x,bispo1y)
	SetSpritePosition(bispo[2],bispo2x,bispo2y)
	SetSpritePosition(bispo[3],bispo1x,bispo3y)
	SetSpritePosition(bispo[4],bispo2x,bispo4y)
	SetSpritePosition(bispo[5],bispo2x,bispo5y)
	SetSpritePosition(bispo[6],bispo2x,bispo6y)
	SetSpritePosition(bispo[7],bispo1x,bispo7y)
	SetSpritePosition(bispo[8],bispo2x,bispo8y)
	SetSpritePosition(bispo[9],bispo1x,bispo9y)
	SetSpritePosition(bispo[10],bispo2x,bispo10y)
	SetSpritePosition(bispo[11],bispo1x,bispo11y)
	SetSpritePosition(bispo[12],bispo2x,bispo12y)
	SetSpritePosition(bispo[13],bispo2x,bispo13y)
	SetSpritePosition(bispo[14],bispo1x,bispo14y)
	
	SetSpritePosition(3,tabuleirox,tabuleiroy)
	
	if(cavalo4y = -65)
		SetSpriteVisible(31,1)
	endif
	
	if(bispo6y = -65)
		SetSpriteVisible(32,1)
	endif
	
	if(GetSpriteY(torre[13]) > 700)
		LoadImage(41,"you win.jpg")
		CreateSprite(41,41)
		loadmusic(26,"musicayouwin.mp3")
		PlayMusic(26)
		gosub win
	endif
	
	if gameover = 1
		DeleteMusic(21)
		gosub gameover
	endif

	gosub move
	gosub colisao
	gosub score
	
	sync()
loop
return
