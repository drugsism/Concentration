# Concentration - Stanford CS193P

### Day One
- Story board
- property
- Array
- optional
  :Int =! Int?
 optional은 Int와 전혀 다른 타입이다.
 optional은 오직 두가지 상태를 가지는 타입 = enum이며 set, unset
 swift는 열거형이 연관데이터를 가지고 있음 - 이경우 Int
 ex) set = optional(1)
     unset = nil
     
   - unwrap
    ! = 이옵셔널이 설정되었다고 가정하고 관련된 값을 가져오라는 뜻
        설정되지 않은 값을가져오면 크래시 발생
        - fatal error: unexpectedly found nil while unwrapping un Optinal Value
   - optional binding
    if let 

### Day Two 
MVC
Model
class 상속, referanse type
struct  상속 불가능, Value type
  - 모든 값을 넘길때 복사해서 준다면 비효율적이지 않은가?
   -> 무언가를 전달할 떄 모든 내용을 하나하나 전부 복사하지않는다.
     누군가 내용을 변경했을때 실제로 복사하도록 하는 전달방식을 취한다.
     '쓰기 시 복사' 전달체계 라고한다


- target/Action and Outlets and Outlet Collecttions
- Method and Propertis(aka instance variable)
- Property observer(didSet)
- Array<Element>
- MVC
- Value type(struct) versus reference type(class)
- initializers
- Type(static) Method
- lazy property
- for in loop
- Dictionary<key, Value>
- Type conversion (e.g. UInt32(anInt))
- And, of course, Optional which wr're going to revisit in more detail a bit later in this lecture


### Day three
- Autolayout(Teaser) 
- for in stride
- tuple
- Computed pororerties
    var foo: Double {
        get {
            //return the calculated value if foo 
        }
        set(newValue) {
            //do something based on the fact that foo has changed ti newValue
        }
    }

