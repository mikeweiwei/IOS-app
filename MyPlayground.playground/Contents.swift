//: Playground - noun: a place where people can play
import Cocoa

var arrayNumber: [Int] = [2, 4, 6, 7, 3, 8, 1]
//冒泡排序
func maopao(var array: [Int]) -> [Int] {
    for var i = 0;i < array.count;i++ {
        for var j = i;j < array.count;j++ {
            if array[j] > array[j + 1] {
                var temp = array[j]
                array[j] = array[j+1]
                array[j+1] = temp
            }
        }
    }
    return array
}