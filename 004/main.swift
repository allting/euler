//
//  main.swift
//  004
//
//  Created by kkr on 8/28/16.
//  Copyright © 2016 allting. All rights reserved.
//

/*
 A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
 
 Find the largest palindrome made from the product of two 3-digit numbers.
*/

extension Int {
    func isPalindrome() -> Bool {
        return self == self.reversed()
    }
    
    func reversed() -> Int {
        var origin = self;
        var reverse = 0;
        
        while 0 < origin {
            reverse *= 10
            reverse += origin % 10
            origin /= 10
        }
        return reverse
    }
}

func largestPalindrome() -> Int{
    var largest: Int = 0
  
    for i in 999.stride(to: 100, by: -1) {
        for j in i.stride(to: 100, by: -1) {
            let product = i * j
            if product < largest {
                break
            }
            
            if product.isPalindrome() {
                largest = product
            }
        }
    }
    return largest
}

print("Largest : ", largestPalindrome())
