programa
{
	inclua biblioteca Util
	--> U
	cadeia resposta
	funcao inicio()
	{
		limpa()
		escreva("Olá!... \n")
		U.aguarde(1000)
		escreva("Este programa é capaz de acertar qualquer numero que voce pensar entre 0 e 100, em no maximo 7 tentativas, vamos jogar? \n")
		U.aguarde(2000)
		escreva("Digite 'S' para sim ou 'N' para não: ")
		leia(resposta)
		se(resposta == "S")
		{
			escreva("Legal!! \n")
			U.aguarde(1000)
			escreva("Vamos começar!...")
			pesquisa_binaria()
		}
		senao se(resposta == "N")
		{
			limpa()
			escreva("Tudo bem..Quando quiser jogar estarei aqui.")
			U.aguarde(1000)
			limpa()
			U.aguarde(1000)
			escreva("Até mais!")
			U.aguarde(1000)
		}
		senao
		{
			escreva("Resposta inválida tente novamente...")
			inicio()
		}
		
	}
	
	funcao pesquisa_binaria()
	{
		inteiro min = 0, max = 100, chute
		
		limpa()
		chute = (max + min)/2
		escreva("O numero que você pensou é: ", chute,"? \n")
		U.aguarde(1000)
		escreva("Digite 'S' para sim ou 'N' para não: ")
		leia(resposta)
		enquanto(resposta != "S")
		{
			escreva("O numero é maior ou menor? \nDigite > para maior ou < para menor: ")
			leia(resposta)
			se(resposta == "<")
			{
				max = chute
				chute = (max + min)/2
				escreva("O numero que você pensou é: ", chute,"? \n")
				escreva("Digite 'S' para sim ou 'N' para não: ")
				leia(resposta)
			}
			senao se(resposta == ">")
			{
				min = chute
				chute = (max + min)/2
				escreva("O numero que você pensou é: ", chute,"? \n")
				escreva("Digite 'S' para sim ou 'N' para não: ")
				leia(resposta)
			}
				
		
		}
		se(resposta == "S")
		{
			limpa()
			escreva("====================== \n")
			U.aguarde(500)
			escreva("|    O JOGO VENCE    |\n")
			U.aguarde(500)
			escreva("====================== \n")
			U.aguarde(500)
		}

	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1606; 
 * @DOBRAMENTO-CODIGO = [5];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */