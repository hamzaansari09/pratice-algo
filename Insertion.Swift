
func insertionSort(arr: inout [Int]){
    for i in 1..<arr.count{
        var j = i-1
        while j >= 0{
            if arr[j] > arr[j+1]{
                swap(&arr[j],&arr[j+1])
            }else{
                break
            }
            j -= 1
        }
    }
}

var a = [5,8,1,9,2]
insertionSort(arr: &a)

func genericInsertion<T>(_ arr: inout [T], _ isOrderedBefore: (T,T)->Bool){
    for i in 1..<arr.count{
        var j = i-1
        while j >= 0{
            if isOrderedBefore(arr[j], arr[j+1]){
                swap(&arr[j],&arr[j+1])
            }else{
                break
            }
            j -= 1
        }
    }
}

var b = [5,8,1,9,2]
genericInsertion(&b, <)
genericInsertion(&b, >)