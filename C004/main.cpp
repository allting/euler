//
//  main.cpp
//  C004
//
//  Created by kkr on 8/30/16.
//  Copyright © 2016 allting. All rights reserved.
//

#include <iostream>

int reverse(int n)
{
    int rev = 0;
    while(0 < n)
    {
        rev *= 10;
        rev += n%10;
        n /= 10;
    }
    return rev;
}

bool is_palindrome(int n)
{
    return n == reverse(n);
}

int main(int argc, const char * argv[]) {
    int largest = 0;
    
    for(int i=999; 100<=i; i--)
    {
        for(int j=i; 100<=j; j--)
        {
            int prod = i*j;
            if(prod < largest)
                break;
            
            if(is_palindrome(prod))
            {
                largest = prod;
                std::cout << "i(" << i << ") * j(" << j << ") = " << prod << std::endl;
            }
        }
    }
    std::cout << "Largest : " << largest << std::endl;
    return 0;
}
