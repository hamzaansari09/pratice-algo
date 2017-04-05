import Foundation

public struct  Stack <T>{
    private var elements: [T]
    
    public init() {
        elements = [T]()
    }
    
    public mutating func  push(element: T){
        elements.append(element)
    }
    
    public mutating func pop()->T?{
        return elements.popLast()
    }
    
    public func peek()->T?{
        return elements.last
    }
    
    public func isEmpty()->Bool{
        return elements.isEmpty
    }
    
    public var count: Int{
        return elements.count
    }
}
