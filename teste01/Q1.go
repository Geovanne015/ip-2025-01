package main

import "fmt"

func main() {
	var num float64
	fmt.Print("Digite um número: ")
	fmt.Scanln(&num)

	if num > 0 {
		fmt.Println("O número é positivo")
	} else if num < 0 {
		fmt.Println("O número é negativo")
	} else {
		fmt.Println("O número é nulo")
	}
}
