import Foundation
import Haskell.Foreign.Exports

public struct Fib {
  var val: Int64
}

public func mkFib() -> Fib {
    let x = doSomething()
    return Fib(val: x)
}
