//
//  main.swift
//  demo
//
//  Created by 5835 on 16/3/3.
//  Copyright © 2016年 5835. All rights reserved.
//

import Foundation
/*var a:Int,b:Int,c:Int
var charactor:Character
a=100
b=100
c=a+b
for ch in "hello".characters{
    print(ch)
}
print("\(c)")
print("Hello, World!")*/
//var array = [2, 3, 4, 5]

//array.sort{$0 < $1}
//print(array)
import Cocoa

var array = [123,234,12,346,4,75,67,234,23,1233,3,5,986,98,567,345,234,234]
print("排序前的值：")
for item in array
{
    var ii = item
    print(ii)
}

for var i = 0; i < array.count - 1; ++i {
    for var j = 0; j < array.count - 1 - i; ++j{
        if array[j] > array[j + 1] {
            var temp = array[j + 1]
            array[j + 1] = array[j]
            array[j] = temp
        }
    }
}

print("排序后的值：")

for item in array
{
    var ii = item
    print(ii)
}

