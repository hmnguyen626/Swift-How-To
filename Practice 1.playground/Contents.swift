// Closures

var greeting: () -> String = {
    return "Hello world"
}

greeting()

let list : [Int] = [9, 6, 3, 2, 11, 22, 55, 100, 20]

// Way 1
var sortedList1 = list.sorted(by: { (x, y) in
    x < y
})

// Way 2
var sortedList2 = list.sorted { (x, y) -> Bool in
    return x < y
}
