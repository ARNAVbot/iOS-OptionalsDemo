
var myOptional : String?

myOptional = "Angela"

// 1. Force unwrapping
let text: String = myOptional!

// 2. check for nil value
if myOptional != nil {
    let text2 : String = myOptional!
} else {
    print("myOptional was found to be nil")
}

// 3. optional binding
if let safeOptional = myOptional {
    // this code will come here ONLY when myOptional is not null
    print(safeOptional)
} else {
    print("myOptional was found to be nil")
}

// 4. nil coalescing operator
myOptional = nil
let text3: String = myOptional ?? "i am the default value"

print(text3)

//5.Optional Chaining
struct MyOpt {
    var property = 123
    
    func method() {
        print("I am the struct method")
    }
}

let myOpt : MyOpt? = nil

print(myOpt?.property)
myOpt?.method()
