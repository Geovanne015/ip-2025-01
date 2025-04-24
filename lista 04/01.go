package main

import "fmt"

func main() {
	var vetor [10]int
	encontrado := false

	fmt.Println("Digíte 10 números inteiros:")

	for i := 0; i < 10; i++ {
		fmt.Printf("Número[%d]: ", i+1)
		fmt.Scan(&vetor[i])
	}
	fmt.Println("números maiores que 50 e suas posições:")
	for num := range vetor {
		if vetor[num] > 50 {
			fmt.Printf("%d na posição %d\n", vetor[num], num)
			encontrado = true
		}
	}
	if !encontrado {
		fmt.Println("Não foram encontrados números maiores que 50.")
	}
}
