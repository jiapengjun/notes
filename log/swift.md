笔记
======
[中文教程](https://gitbook.swiftgg.team/swift/swift-jiao-cheng)

## 基础部分
```swift
元组：
    let http404Error = (404, "Not Found")
    let (statusCode, _) = http404Error //分解
    print("The status code is \(statusCode)") 
    print("The status code is \(http404Error.0)") //下标访问
    let http200Status = (statusCode: 200, description: "OK")
    print("The status message is \(http200Status.description)") //名字访问

可选类型与nil:
    var surveyAnswer: String?
    // surveyAnswer 被自动设置为 nil

    nil 不能用于非可选的常量和变量

    if convertedNumber != nil {
        print("convertedNumber has an integer value of \(convertedNumber!).")  // 强制解析（forced unwrapping）
    }

    if let constantName = someOptional {  // 可选绑定（optional binding）
        statements
    }

    同名覆盖:
    let myNumber = Int(possibleNumber)
    // 此处 myNumber 为一可选整型
    if let myNumber = myNumber {
        // 此处 myNumber 为一不可选整型
        print("My number is \(myNumber)")
    }
    简写：
        if let myNumber{
            print("My number is \(myNumber)")
        }

    包含多个可选绑定或多个布尔条件在一个 if 语句中，使用逗号分开
    if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
        print("\(firstNumber) < \(secondNumber) < 100")
    }
    等价:
        if let firstNumber = Int("4") {
            if let secondNumber = Int("42") {
                if firstNumber < secondNumber && secondNumber < 100 {
                    print("\(firstNumber) < \(secondNumber) < 100")
                }
            }
        }

    隐式解析可选类型（implicitly unwrapped optionals）
    let possibleString: String? = "An optional string."
    let forcedString: String = possibleString! // 需要感叹号来获取值

    let assumedString: String! = "An implicitly unwrapped optional string."
    let optionalString = assumedString // optionalString 的类型是 "String?"，assumedString 也没有被强制解析。
    let implicitString: String = assumedString  // 不需要感叹号


断言和先决条件：
    // 断言仅在调试环境运行，而先决条件则在调试环境和生产环境中运行
    assert(_:_:file:line:), assertionFailure(_:file:line:) 
    precondition(_:_:file:line:), preconditionFailure(_:file:line:)

    let age = -3
    assert(age >= 0, "A person's age cannot be less than zero")
    // 因为 age < 0，所以断言会触发
```

## 基本运算符
```swift
元组比较：
    如果两个元组的元素相同，且长度相同的话，元组就可以被比较
    (4, "dog") == (4, "dog")      // true，因为 4 等于 4，dog 等于 dog
    ("blue", false) < ("purple", true) // 错误，因为 < 不能比较布尔类型


空合运算符（Nil Coalescing Operator）:
    a ?? b  // a 必须是 Optional 类型, 默认值 b 的类型必须要和 a 存储值的类型保持一致
    等价:
        a != nil ? a! : b

    let defaultColorName = "red"
    var userDefinedColorName: String?   //默认值为 nil
    var colorNameToUse = userDefinedColorName ?? defaultColorName    //colorNameToUse == "red"

    userDefinedColorName = "green"
    colorNameToUse = userDefinedColorName ?? defaultColorName  //colorNameToUse == "green"

区间运算符:
    for index in 1...5 {        // 闭区间, []
        print("\(index) * 5 = \(index * 5)")
    }

    let names = ["Anna", "Alex", "Brian", "Jack"]
    let count = names.count
    for i in 0..<count {        // 半开区间, [)
        print("第 \(i + 1) 个人叫 \(names[i])")
    }

    for name in names[2...] {   // 单侧区间
        print(name)     // Brian, Jack
    }

    for name in names[..<2] {   // 单侧区间
        print(name)     // Anna, Alex
    }

逻辑运算符：
    Swift 逻辑操作符 && 和 || 是左结合的，这意味着拥有多元逻辑操作符的复合表达式优先计算最左边的子表达式。
    合适的地方使用括号来明确优先级是很有效的，虽然它并非必要的

    if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
        print("Welcome!")
    } else {
        print("ACCESS DENIED")
    }
```

## 字符串和字符
```swift
特殊字符：
    let dollarSign = "\u{24}"             // $，Unicode 标量 U+0024
    let blackHeart = "\u{2665}"           // ♥，Unicode 标量 U+2665
    let sparklingHeart = "\u{1F496}"      // 💖，Unicode 标量 U+1F496

扩展字符串分隔符:
    #"Line 1 \nLine 2"#         //不换行
    #"Line 1 \#nLine 2"#        //换行
    ###"Line1 \###nLine2"###    //换行

字符串插值：
    let multiplier = 3
    let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"  // \(变量|表达式)
    // message 是 "3 times 2.5 is 7.5"

扩展字形：
    let precomposed: Character = "\u{D55C}"                  // 한
    let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"   // ᄒ, ᅡ, ᆫ
    // precomposed 是 한, decomposed 是 한

    let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"        // 🇺🇸
    let regionalIndicatorForUY: Character = "\u{1F1FA}\u{1F1FE}"        // 🇺🇾

字符数量:
    var word = "cafe"
    print("the number of characters in \(word) is \(word.count)")       // cafe, word count: 4
    word += "\u{301}"    // 拼接一个重音，U+0301
    print("the number of characters in \(word) is \(word.count)")       // café, word count: 4

表示形式：
    let dogString = "Dog‼🐶"
    for codeUnit in dogString.utf8 {
        print("\(codeUnit) ", terminator: "")       // 68 111 103 226 128 188 240 159 144 182 
    }
    print("")

    for codeUnit in dogString.utf16 {
        print("\(codeUnit) ", terminator: "")       // 68 111 103 8252 55357 56374 
    }
    print("")

    for scalar in dogString.unicodeScalars {
        print("\(scalar.value) ", terminator: "")   // 68 111 103 8252 128054 
    }
    print("")
```
