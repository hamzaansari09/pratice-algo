import Foundation

//: Playground - noun: a place where people can play


public struct Queue<T> {
    fileprivate var elements = [T?]()
    fileprivate var head: Int = 0
    
    public mutating func enqueue(_ element: T){
        elements.append(element)
    }
    
    public mutating func dequeue() -> T?{
        guard head < elements.count, let element = elements[head] else { return nil }
        
        elements[head] = nil
        head += 1
        
        let percent = Double(head) / Double(count)
        if elements.count > 50 && percent >= 0.25{
            elements.removeFirst(head)
            head = 0
        }
        return element
    }
    
    public func peek() -> T? {
        if isEmpty {
            return nil
        }else{
            return elements[head]
        }
    }
    
    public var isEmpty: Bool{
        return elements.isEmpty
    }
    
    public var count: Int{
        return elements.count
    }
}

var q = Queue<Int>()

q.enqueue(14)
q.enqueue(45)
q.enqueue(1234)
q.enqueue(4)
q.count
q.dequeue()
q.count
