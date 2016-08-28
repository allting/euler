//
//  main.swift
//  001
//
//  Created by kkr on 8/28/16.
//  Copyright © 2016 allting. All rights reserved.
//

/*
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these
 multiples is 23.
 
 Find the sum of all the multiples of 3 or 5 below 1000.
 */

let maxVar = 1000
var sum = 0

for i in 0 ..< maxVar {
    if i%3 == 0 {
        sum += i
    }else if i%5 == 0{
        sum += i
    }
}

print("SUM : \(sum)")

/*
 
 https://www.fusionswift.com/project-euler/problem-1/
 
 Manual Solving
 
 Considering this is a simple problem, it’s also possible to solve by hand.
 
 Between 0 and 1000, there are 333 numbers that are divisible by 3, so we have to first find the sum of those numbers.
 Knowing that a + a+d + a+2d + a+3d + ... + a+(n - 1)d is equal to n(n + a)/2, where a is the first number, d is the
 difference between the numbers, and n is the total number of numbers. With that, we can come up with the equation
 333(999 + 3) / 2, which gives you 166833.
 
 Now we have to find the 5 + 10 + 15 + … + 995. Here, we will use 199(995 + 5) / 2, which will give us 99500.
 
 Now that we have the sum of all the multiples of 3 and 5, we must add them together. Doing so will give us 266333.
 However, we must keep in mind there are numbers such as 15 and 30 that are both divisible by 3 and 5. Since 15 is the
 least common multiple between 3 and 5, we must subtract all the multiples of 15. 66(990 + 15) / 2 gives us 33165.
 
 To find the final answer, do 166833 + 99500 - 33165 and you will get 233168. Here’s a PHP script to explain the “manual”
 process.
 
 */
let a = 333 * (999 + 3) / 2
let b = 199 * (995 + 5) / 2
let c = 66 * (990 + 15) / 2
let sum1 = a + b - c

print("SUM1 : \(sum1)")
