//
//  main.swift
//  007
//
//  Created by kkr on 9/9/16.
//  Copyright © 2016 allting. All rights reserved.
//
/*
 By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
 
 What is the 10 001st prime number?
*/

import Foundation

func primeGen(n: Int) -> [Int] {
    // https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
    var A = [Bool](count: n+1, repeatedValue: true)
    A[0] = false
    A[1] = false
    
    for i in 2 ..< Int(ceil(sqrt(Double(n)))) {
        if A[i] {
            for j in 0 ..< n {
                if i*i + i*j < n {
                    A[i*i+i*j] = false
                }else{
                    break
                }
            }
        }
    }
    
    var primes : [Int] = []
    for (i, v) in A.enumerate() {
        if v {
            primes.append(i)
        }
    }
    return primes
}

func nthPrime(n: Int) -> Int {
    // https://en.wikipedia.org/wiki/Prime_number_theorem#Approximations_for_the_nth_prime_number
    let d = Double(n)
    let upperBound = Int(d * (log(d) + log(log(d))))
    let primes = primeGen(upperBound)
    return primes[n-1]
}

let prime = nthPrime(10_001)

print("\(prime)")