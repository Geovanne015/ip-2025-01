algoritmo "ListaExercicios1a20"
var
    opcao: inteiro
inicio
    repita
        escreval("========== MENU DE EXERCÍCIOS ==========")
        escreval(" 1. Aprovado/Reprovado")
        escreval(" 2. Arrecadação de Jogos")
        escreval(" 3. Composição Inteira")
        escreval(" 4. Consumo de Energia")
        escreval(" 5. Conta de Água")
        escreval(" 6. Conversão de Temperatura")
        escreval(" 7. Conversões Métricas")
        escreval(" 8. Custo da Lata de Cerveja")
        escreval(" 9. Delta de Bhaskara")
        escreval("10. Determinante Matriz 2x2")
        escreval("11. Divisível por 3 e 5")
        escreval("12. Locadora de Charretes")
        escreval("13. Conversão Nota-Conceito")
        escreval("14. Volume Pirâmide Hexagonal")
        escreval("15. Quadrado de Pares")
        escreval("16. Reajuste Salarial")
        escreval("17. Série de Pares")
        escreval("18. Soma Progressão Aritmética")
        escreval("19. Somatório Simples")
        escreval("20. Tempo em Segundos")
        escreval(" 0. Sair")
        escreval("========================================")
        escreva("Escolha uma opção (1-20): ")
        leia(opcao)
        
        escolha opcao
            caso 1: // Aprovado/Reprovado
                var n1, n2, n3, media: real
                escreva("Digite as 3 notas (separadas por espaço): ")
                leia(n1, n2, n3)
                media <- (n1 + n2 + n3) / 3
                escreval("MEDIA = ", media:2:2)
                se media >= 6 entao
                    escreval("APROVADO")
                senao
                    escreval("REPROVADO")
                fimse
            
            caso 2: // Arrecadação de Jogos
                var casos, i, publico: inteiro
                var pop, ger, arq, cad, renda: real
                escreva("Número de jogos: ")
                leia(casos)
                para i de 1 ate casos faca
                    escreva("Público e % (popular geral arquibancada cadeiras): ")
                    leia(publico, pop, ger, arq, cad)
                    renda <- (publico*pop/100)*1 + (publico*ger/100)*5 + (publico*arq/100)*10 + (publico*cad/100)*20
                    escreval("A RENDA DO JOGO N.", i, " E = ", renda:2:2)
                fimpara
            
            caso 3: // Composição Inteira
                var n1, n2, n3: inteiro
                escreva("Digite 3 dígitos (1 por linha): ")
                leia(n1)
                leia(n2)
                leia(n3)
                se (n1 > 9) ou (n2 > 9) ou (n3 > 9) entao
                    escreval("DIGITO INVALIDO")
                senao
                    escreval(n1, n2, n3, ", ", (n1*100 + n2*10 + n3)^2)
                fimse
            
            caso 4: // Consumo de Energia
                var salario, kw, custo, total, desc: real
                escreva("Digite salário mínimo e kW consumidos: ")
                leia(salario, kw)
                custo <- (0.7 * salario) / 100
                total <- kw * custo
                desc <- total * 0.9
                escreval("Custo por kW: R$ ", custo:2:2)
                escreval("Custo do consumo: R$ ", total:2:2)
                escreval("Custo com desconto: R$ ", desc:2:2)
            
            caso 5: // Conta de Água
                var conta: inteiro
                var consumo: real
                var tipo: caractere
                escreva("Digite conta, consumo e tipo (R/C/I): ")
                leia(conta, consumo, tipo)
                escolha tipo
                    caso "R": valor <- 5 + 0.05 * consumo
                    caso "C": 
                        se consumo <= 80 entao
                            valor <- 500
                        senao
                            valor <- 500 + 0.25 * (consumo - 80)
                        fimse
                    caso "I":
                        se consumo <= 100 entao
                            valor <- 800
                        senao
                            valor <- 800 + 0.04 * (consumo - 100)
                        fimse
                fimescolha
                escreval("CONTA = ", conta)
                escreval("VALOR DA CONTA = ", valor:2:2)
            
            caso 6: // Conversão de Temperatura
                var n, i: inteiro
                var f, c: real
                escreva("Quantas temperaturas? ")
                leia(n)
                para i de 1 ate n faca
                    escreva("Temperatura ", i, " em Fahrenheit: ")
                    leia(f)
                    c <- (5 * (f - 32)) / 9
                    escreval(f:2:2, " FAHRENHEIT EQUIVALE A ", c:2:2, " CELSIUS")
                fimpara
            
            caso 7: // Conversões Métricas
                var f, polegadas, c, mm: real
                escreva("Temperatura em Fahrenheit: ")
                leia(f)
                escreva("Chuva em polegadas: ")
                leia(polegadas)
                c <- (5 * f - 160) / 9
                mm <- polegadas * 25.4
                escreval("O VALOR EM CELSIUS = ", c:2:2)
                escreval("A QUANTIDADE DE CHUVA E = ", mm:2:2)
            
            caso 8: // Custo da Lata
                var raio, altura, area, custo: real
                escreva("Raio (m): ")
                leia(raio)
                escreva("Altura (m): ")
                leia(altura)
                area <- 2 * 3.14159 * raio * (raio + altura)
                custo <- area * 100
                escreval("O VALOR DO CUSTO E = ", custo:2:2)
            
            caso 9: // Delta de Bhaskara
                var a, b, c, delta: real
                escreva("Coeficientes A B C: ")
                leia(a, b, c)
                delta <- b^2 - 4 * a * c
                escreval("O VALOR DE DELTA E = ", delta:2:2)
            
            caso 10: // Determinante Matriz
                var a, b, c, d, det: real
                escreva("Elementos a b c d: ")
                leia(a, b, c, d)
                det <- a * d - b * c
                escreval("O VALOR DO DETERMINANTE E = ", det:2:2)
            
            caso 11: // Divisível por 3 e 5
                var num: inteiro
                escreva("Digite um número: ")
                leia(num)
                se (num % 3 = 0) e (num % 5 = 0) entao
                    escreval("O NUMERO E DIVISIVEL")
                senao
                    escreval("O NUMERO NAO E DIVISIVEL")
                fimse
            
            caso 12: // Locadora de Charretes
                var horas, valor: inteiro
                escreva("Horas de uso: ")
                leia(horas)
                valor <- (horas \ 3) * 10 + (horas % 3) * 5
                escreval("O VALOR A PAGAR E = ", valor:2:2)
            
            caso 13: // Conversão Nota-Conceito
                var nota: real
                var conceito: caractere
                escreva("Digite a nota: ")
                leia(nota)
                escolha nota
                    caso 9.0 ate 10.0: conceito <- "A"
                    caso 7.5 ate 8.9: conceito <- "B"
                    caso 6.0 ate 7.4: conceito <- "C"
                    outrocaso: conceito <- "D"
                fimescolha
                escreval("NOTA = ", nota:1:1, " CONCEITO = ", conceito)
            
            caso 14: // Volume Pirâmide Hexagonal
                var h, a, areaBase, volume: real
                escreva("Altura e aresta (separados por espaço): ")
                leia(h, a)
                areaBase <- (3 * a^2 * raizq(3)) / 2
                volume <- (areaBase * h) / 3
                escreval("O VOLUME DA PIRAMIDE E = ", volume:2:2, " METROS CUBICOS")
            
            caso 15: // Quadrado de Pares
                var n, i: inteiro
                escreva("Digite N (5 < N < 2000): ")
                leia(n)
                para i de 1 ate n faca
                    se i % 2 = 0 entao
                        escreval(i, "^2 = ", i^2)
                    fimse
                fimpara
            
            caso 16: // Reajuste Salarial
                var salario: real
                escreva("Digite o salário: ")
                leia(salario)
                se salario <= 300 entao
                    salario <- salario * 1.5
                senao
                    salario <- salario * 1.3
                fimse
                escreval("SALARIO COM REAJUSTE = ", salario:2:2)
            
            caso 17: // Série de Pares
                var x, y, i: inteiro
                escreva("Digite x e y: ")
                leia(x, y)
                se x % 2 = 0 entao
                    para i de 0 ate y-1 faca
                        escreva(x + 2*i, " ")
                    fimpara
                    escreval("")
                senao
                    escreval("O PRIMEIRO NUMERO NAO E PAR")
                fimse
            
            caso 18: // Soma Progressão Aritmética
                var a1, r, n, soma, i: inteiro
                escreva("Digite a1, r e n: ")
                leia(a1, r, n)
                soma <- 0
                para i de 0 ate n-1 faca
                    soma <- soma + a1 + i*r
                fimpara
                escreval(soma)
            
            caso 19: // Somatório Simples
                var n, k: inteiro
                var S: real
                escreva("Digite N (>1): ")
                leia(n)
                se n <= 1 entao
                    escreval("Numero invalido!")
                senao
                    S <- 0
                    para k de 1 ate n faca
                        S <- S + 1/k
                    fimpara
                    escreval(S:6:6)
                fimse
            
            caso 20: // Tempo em Segundos
                var horas, minutos, segundos, total: inteiro
                escreva("Horas: ")
                leia(horas)
                escreva("Minutos: ")
                leia(minutos)
                escreva("Segundos: ")
                leia(segundos)
                total <- horas*3600 + minutos*60 + segundos
                escreval("O TEMPO EM SEGUNDOS E = ", total)
            
            caso 0:
                escreval("Programa encerrado!")
            outrocaso:
                escreval("Opção inválida! Digite 1-20")
        fimescolha
        
        se opcao <> 0 entao
            escreval("Pressione ENTER para continuar...")
            leia() // Pausa
        fimse
    ate opcao = 0
fimalgoritmo
