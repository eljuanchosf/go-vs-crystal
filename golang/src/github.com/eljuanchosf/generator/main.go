package main

import (
	"fmt"
	"os"
	"strconv"

	"./generator"
)

func main() {
	maxArg := os.Args[1]
	if len(os.Args) < 2 {
		fmt.Println("Please enter a max number of integers to explore")
	} else {
		max, _ := strconv.ParseInt(maxArg, 10, 64)
		s := generator.Eratosthenes(max)
		fmt.Println(len(s))
	}
}
