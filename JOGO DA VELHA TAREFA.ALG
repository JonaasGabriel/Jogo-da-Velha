Algoritmo "Jogo Da Velha Tarefa"
// Disciplina   : [Algoritmos]
// Professor   : Francisco Vichi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/05/2022
Var
   // Seção de Declarações das variáveis
   jogo : vetor [1..3,1..3] de caractere
   linha, coluna, cont: inteiro
   x : caractere
   l, opcao : inteiro
   parimpar : inteiro
   vez : inteiro
   vencedor : logico
   qq: caractere

funcao verificarvencedor(): logico
var
   venceu: logico
inicio
   venceu <- falso
   para linha de 1 ate 3 faca
      se ((jogo[linha,1]= jogo[linha,2])e(jogo[linha,2]= jogo[linha,3]))entao
         venceu <- verdadeiro
      fimse
   fimpara

   para linha de 1 ate 3 faca
      se ((jogo[1,linha]= jogo[2,linha])e(jogo[2,linha]= jogo[3,linha]))entao
         venceu <- verdadeiro
      fimse
   fimpara


   se ((jogo[1,1]= jogo[2,2])e(jogo[2,2]= jogo[3,3]))entao
      venceu <- verdadeiro
   fimse



   se (jogo[1,3]= jogo[2,2])e(jogo[2,2]= jogo[3,1])entao
      venceu <- verdadeiro
   fimse


   retorne  venceu
fimfuncao

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   para linha <- 1 ate 3 faca
      para coluna <- 1 ate 3 faca
         cont <- cont +1
         jogo [linha,coluna] <- numpcarac(cont)
      fimpara
   fimpara

   escreval ("=====================")
   escreval ("   JOGO DA VELHA   ")
   escreval ("+-----+-----+-----+")
   para linha <- 1 ate 3 faca
      para coluna <- 1 ate 3 faca
         escreva ("!")
         escreva (jogo[linha,coluna]:5)
      fimpara
      escreva ("!")
      escreval ()
      escreval ("+-----+-----+-----+")
   fimpara
   escreval ("=====================")

   x <- "X"
   vencedor <- falso
   vez <-0
   parimpar <- 1
   repita
      ESCREVAL (" Digite um número para ",x," : ")
      leia(opcao)
      se (opcao >0) e (opcao <10) entao

         se (opcao >0) e (opcao <4) entao
            l<-1
            se (jogo[l,opcao]= "X" ) ou (jogo[l,opcao] = "0") entao
               escreval (" Esse número já está preenchido")
               escreval (" Enter para continuar : ")
               leia (qq)
            senao
               jogo[l,opcao] <- x
               vencedor <- verificarvencedor()
               vez <- vez+1
               se (vencedor = falso) entao
                  se (parimpar %2 <> 0) entao
                     x <- "0"
                  senao
                     x <- "X"
                  fimse
                  parimpar <- parimpar +1
               fimse
            fimse

         senao
            se (opcao >3) e (opcao <7) entao
               l <-2
               se (jogo[l,opcao-3] = "X") ou (jogo[l,opcao-3] = "0" )entao
                  escreval (" Esse número já está preenchido")
                  escreval (" Enter para continuar : ")
                  leia (qq)
               senao
                  jogo [l,opcao -3] <-x
                  vencedor <- verificarvencedor()
                  vez <- vez+1
                  se (vencedor = falso) entao
                     se (parimpar %2 <> 0) entao
                        x <- "0"
                     senao
                        x <- "X"
                     fimse
                     parimpar <- parimpar +1
                  fimse
               fimse

            senao
               l <- 3
               se (jogo[l,opcao-6] = "X") ou (jogo[l,opcao-6] = "0") entao
                  escreval (" Esse número já está preenchido")
                  escreval (" Enter para continuar : ")
                  leia (qq)
               senao
                  jogo [l,opcao-6] <-x
                  vencedor <- verificarvencedor()
                  vez <- vez+1
                  se (vencedor = falso) entao
                     se (parimpar %2 <> 0) entao
                        x <- "0"
                     senao
                        x <- "X"
                     fimse
                     parimpar <- parimpar +1
                  fimse
               fimse
            fimse
         fimse
      senao
         escreva ("Opção Inválida")
         escreval (" Enter para continuar : ")
         leia (qq)
      fimse
      limpatela
      escreval ("=====================")
      escreval ("   JOGO DA VELHA   ")
      escreval ("+-----+-----+-----+")
      para linha <- 1 ate 3 faca
         para coluna <- 1 ate 3 faca
            escreva ("!")
            escreva (jogo[linha,coluna]:5)
         fimpara
         escreva ("!")
         escreval ()
         escreval ("+-----+-----+-----+")
      fimpara
      escreval ("=====================")
   ate (vencedor = verdadeiro ) ou (vez=9)
   se (vencedor = verdadeiro)  entao
      escreval(" O jogador ",x," foi o vencedor !!!")
   senao
      escreval (" Deu Velha !!! ")
   fimse


Fimalgoritmo