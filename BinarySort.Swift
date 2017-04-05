
func binarySearch<T: Comparable>(_ arr:[T], key: T)->Bool{
    return binarySearch(arr, left: 0, right: arr.count-1, key: key)
}

func binarySearch<T: Comparable>(_ arr:[T], left: Int, right: Int, key: T)->Bool{
    let mid = (left + right)/2
    if right < left{
        return false
    }else if arr[mid] == key {
        return true
    }else{
        if key > arr[mid]{
            return binarySearch(arr, left: mid+1, right: right, key: key)
        }else if key < arr[mid]{
            return binarySearch(arr, left: left, right: mid-1, key: key)
        }
    }
    return false
}

binarySearch([1,4,5,7,9], key: 5)