package main

import "fmt"

func main() {
	var vetor1 [10]int
	fmt.Println("Digite 10 números inteiros para o primeiro vetor:")
	for i := 0; i < 10; i++ {
		fmt.Printf("Número[%d]: ", i+1)
		fmt.Scan(&vetor1[i])
	}

	var vetor2 [5]int
	fmt.Println("\nDigite 5 números inteiros para o segundo vetor:")
	for i := 0; i < 5; i++ {
		fmt.Printf("Número[%d]: ", i+1)
		fmt.Scan(&vetor2[i])
	}

	var sVetor2 int
	for _, num := range vetor2 {
		sVetor2 += num
	}

	var vetorPar []int
	var vetorImpar []int

	for _, num := range vetor1 {
		if num%2 == 0 {
			vetorPar = append(vetorPar, num+sVetor2)
		} else {
			vetorImpar = append(vetorImpar, num+sVetor2)
		}
	}

	fmt.Println("\nPrimeiro vetor:", vetor1)
	fmt.Println("Segundo vetor:", vetor2)
	fmt.Println("\nPrimeiro vetor resultante:", vetorPar)
	fmt.Println("Segundo vetor resultante :", vetorImpar)
}
