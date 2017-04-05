func binarySearch<T: Comparable>(_ arr:[T], key: T)->Int?{
    return binarySearch(arr, left: 0, right: arr.count-1, key: key)
}

func binarySearch<T: Comparable>(_ arr:[T], left: Int, right: Int, key: T)->Int?{
    if right < left{
        return nil
    }else{
        let mid = left + (right-left)/2
        if arr[mid] == key {
            return mid
        }else if key > arr[mid]{
            return binarySearch(arr, left: mid+1, right: right, key: key)
        }else if key < arr[mid]{
            return binarySearch(arr, left: left, right: mid-1, key: key)
        }
    }
    return nil
}

binarySearch([1,4,5,7,9,10], key: 10)

func binarySearchIterative(_ arr: [Int], key: Int)->Int?{
    var lowerBound = 0
    var upperBound = arr.count
    while lowerBound < upperBound{
        let mid = lowerBound + (upperBound - lowerBound)/2
        if arr[mid] == key {
            return mid
        }else if arr[mid] < key{
            lowerBound = mid+1
        }else{
            upperBound = mid
        }
    }
    return nil
}
binarySearchIterative([1,4,5,7,9,10], key: 10)
