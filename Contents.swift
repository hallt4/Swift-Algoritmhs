//: Playground - noun: a place where people can play

let numberList : Array<Int> = [8, 2, 10, 9, 11, 1, 7, 3, 4]

func insertionSort(numberList: Array<Int>) -> Array<Int> {
    //mutated copy
    
    var output = numberList
    
    for primaryIndex in 0 ..< output.count {
        let key = output[primaryIndex]
        
        for secondaryIndex in (0 ... primaryIndex).reverse() {
            if key < output[secondaryIndex] {
                 output.removeAtIndex(secondaryIndex + 1)
                output.insert(key, atIndex: secondaryIndex)
                print(output)
            }
        }
    }
    return output
}

insertionSort(numberList)
