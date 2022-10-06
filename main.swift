func sort(unsortedList: [String]) {
    var passes = 0
    var passSwap = 0
    
    var arr = lowerList
    var sortedList = unsortedList
    
    var low = 0

    for currentPos in 0 ..< arr.count - 1 {
        low = currentPos
        passes += 1
        passSwap = 0
        passSwap += 1
        for index in currentPos + 1 ..< arr.count {
            
            if arr[index] < arr[low] {
                low = index
            }
        }

        if low != currentPos {
            arr.swapAt(currentPos, low)
            sortedList.swapAt(currentPos, low)
        }
    }
    for i in 0 ..< sortedList.count {
        print(sortedList[i])
    }
    
}

var unsortedList = [String]()
var lowerList = [String]()

while let input = readLine() {
    unsortedList.append(input)
    lowerList.append(input.lowercased())
}
    
sort(unsortedList: unsortedList)


