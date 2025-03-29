package main

import "fmt"

func main() {
    var num float64 
    fmt.Print("Digite um número: ")
    fmt.Scanln(&num)
    
    if num >= 20 && num <= 90 {
        fmt.Println("O número está entre 20 e 90")
    } else { 
        fmt.Println("O número não está entre 20 e 90")
    }
}
