//
//  main.swift
//  003
//
//  Created by kkr on 8/28/16.
//  Copyright © 2016 allting. All rights reserved.
//

/*
 The prime factors of 13195 are 5, 7, 13 and 29.
 What is the largest prime factor of the number 600851475143 ?
 */

var n = 600851475143
var divisor = 2
var primes:[Int] = []

func isPrime(value: Int) -> Bool{
    for prime in primes {
        if value % prime == 0 {
            return false
        }
    }
    return true
}

while divisor * divisor <= n {
    if n % divisor == 0 {
        if isPrime(divisor) {
            primes.append(divisor)
            n /= divisor
            print("num:\(divisor)")
        }
    }
    
    divisor += 1
    
}

print("Largest Prime num:\(n)")
