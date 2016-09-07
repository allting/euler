//
//  main.swift
//  006
//
//  Created by kkr on 9/7/16.
//  Copyright © 2016 allting. All rights reserved.
//

/*
 The sum of the squares of the first ten natural numbers is,
 
 1^2 + 2^2 + ... + 10^2 = 385
 The square of the sum of the first ten natural numbers is,
 
 (1 + 2 + ... + 10)^2 = 55^2 = 3025
 Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
 
 Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
*/

import Foundation

func sumOfNumbers(number: Int) -> Int {
    return number * (number + 1) / 2
}

func squareOfNumber(number: Int) -> Int {
    return number * number
}

// http://www.mathblog.dk/project-euler-problem-6/
// n * (n+1) * (2n+1) / 6
func sumOfSqures(number: Int) -> Int {
    return number * (number + 1) * (2 * number + 1) / 6
}

print(squareOfNumber(sumOfNumbers(100))-sumOfSqures(100))
