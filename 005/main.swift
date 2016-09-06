//
//  main.swift
//  005
//
//  Created by kkr on 9/6/16.
//  Copyright © 2016 allting. All rights reserved.
//

/*
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
 
 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
*/

import Foundation

func smallestMultiple() -> Int {
    let primes = [2, 3, 5, 7, 11, 13, 17, 19]
    let others = [12, 14, 15, 16, 18, 20]

//    let primes = [2, 3, 5, 7]
//    let others = [4, 6, 8, 9]

    var primeLCM = 1
    for prime in primes {
        primeLCM *= prime
    }
    
    var result = primeLCM
    while true {
        var found = true
        for other in others {
            if result % other != 0 {
                found = false
                break
            }
        }
        
        if found {
            break
        }
        
        result += primeLCM
    }
    
    return result
}

let result = smallestMultiple()

print("SmallestMultiple - \(result)")