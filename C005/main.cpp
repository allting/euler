//
//  main.cpp
//  C005
//
//  Created by kkr on 9/1/16.
//  Copyright © 2016 allting. All rights reserved.
//

#include <iostream>

long gcd(long a, long b)
{
    while(0!=b)
    {
        long temp = a;
        a = b;
        b = temp % b;
    }
    return a;
}

long lcm(long n)
{
    long mul = 1;
    for(long i=2; i<=n; i++)
    {
        long gcd_result = gcd(i, mul);
        mul *= i / gcd_result;
    }
    return mul;
}

int brute_force()
{
    int prime[] = {2, 3, 5, 7, 11, 13, 17, 19};
    int others[] = {12, 14, 15, 16, 18, 20};
    size_t prime_size = sizeof(prime)/sizeof(prime[0]);
    size_t size = sizeof(others)/sizeof(others[0]);
    
    int prime_lcm = 1;
    for(size_t i=0; i<prime_size; i++){
        prime_lcm *= prime[i];
    }
    
    int result = prime_lcm;
    while(1){
        bool found = true;
        for(size_t i=0; i<size; i++){
            if(0 != result%others[i]){
                found = false;
                break;
            }
        }
        
        if(found)
            break;
        
        result += prime_lcm;
    }
    return result;
}

int main(int argc, const char * argv[]) {
    
    long result1 = lcm(20);
    long result2 = brute_force();
    
    std::cout << result1 << ", " << result2 << std::endl;
    return 0;
}
