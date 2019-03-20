# A Tour of Go
It’s the official Golang tour. Let’s get the overall stuff and go for the language spec. I can’t believe there’s a language that’s actually readable! I really want to actually get better with Scala and Java and all those other languages, but still. A systems language. Something that I really want to actually think of and … yeah. I want to actually learn a language really deeply. And of course it’ll be great if it’s a systems language. So I’ll be able to get along with C/C++ a bit faster. 
 I’m not sure whether I’ll get to learn Scala/Java more, but I’m going to get familiar with Go and see whether it’ll be good or not. 

# Using the tour
It’s just about how to use the tour. You can use it by opening up a localhost server, even offline and tells you about the [Go playground.](https://play.golang.org/). 
 There’s really not much anything to see over here so I’ll just skip all the big stuff.  

# Basics
Going to learn the basics of the language. The overview has packages, imports, functions, certain data structures, types, type related stuff, and yeah, that’s all.

## Packages, variables, and functions
Gotta learn how packages work, how to import them, how to make variables, constants, and define functions. Oh, I also need to see whether there are higher-order functions in Golang.

### Packages
All go programs start in the `main` package. Which is declared with `package main`. And then you can import the things that you want, but they’re double-quoted. “fmt” for example, and the packages that you want to import might have different stages. Deeper hierarchy. For example, “maths/rand”. When you want to import rand, that rand package will be declared with `package rand`. So eventually, you’re just getting the last one and not the math package. If you want to start from the `math` package, then just `import (“math”)` right? 

### Imports
You can import packages with the `import` keyword. Of course there are multiple ways to use this syntax. 
```go 
import (
	"fmt"
	"math"
)
// Alternative
import "fmt"
import "math"

// The first style is the factored import statement.
// It's a convention to use that style. 
```

### Exported names
It’s mostly like the `private` access modifier. In the math package, there’s a `Pi` constant. If you just access it with `pi`, then you’ll get an error that’s not exported. Also, it’ll tell you that it’s undefined. If you actually put in a variable that doesn’t exist, it’ll just tell you that it’s not defined. But if there’s a variable with the same name but just isn’t capital, then it’ll give you an `unexpected name` error. 
 So how do you export a variable in a package? I need to find the definition. You just name the first letter as a capital? Well anyways, if you want to access a variable or function from the outside, it must be an exported name. 

### Functions
[Go’s Declaration Syntax - The Go Blog](https://blog.golang.org/gos-declaration-syntax)
As you can see on the bottom, the function parameter declaration is pretty much the opposite of all languages. Look at the blog and see whether you can find the reason of this style.
```go
func add(x int, y int) int {
		return x + y
}
```

### Functions continued
```go
// You can ommit the type declaration if the variables are the same type. 
func add(x, y int) int {
		return x + y
}
```

### Multiple results
So a function can return multiple results. How fascinating. This means the results are in a tuple? Just like Python? Also, if you want to give multiple results, you have to give declare the types of them. 

```go
func swap(x, y string) (string, string) {
		return y, x
}
```

### Named return values
You can use named return values to actually give meaningful variable names to the return values. You have to use `naked return` to use this. So this means you should only use the technique on a small function. Or else the readability will get reduced since you have to see what the return values are at the top.
```go
func split(sum int) (x, y int) {
		x = sum * 4 / 9
		y = sum - x
		return
}
```

### Variables
You can declare variables in the package level, and in the function scope.
```go
var c, python, java bool

func main() {
		var i int
		fmt.Println(i, c, python, java)
}
```

### Variables with initializers
If an initializer is present, that means you don’t need to write down the type write? I think this is right when the type is explicitly there. But if it isn’t I’m not sure whether that’s right or not.
```go
var i, j int = 1, 2

func main() {
		var c, python, java = true, false, "No!"
      fmt.Println(i, j, c, java, python)
}
```

### Short variable declarations
I didn’t understand this when I saw this at the time. So, you can’t use non-declaration statements outside the function body. The `:=` operator can only be used inside a function body. 
 The primary focus of this is to initialize a variable with syntax sugar. You don’t need to specify the type, which means implicit, and no `var` keyword. 
```go
func main() {
		var i, j int = 1, 2
		k := 3
		c, python, java := true, false, "No!"
		fmt.Println(i, j, k, c, python, java)
}
```

### Basic types
* bool
* string
* int, int8, int16, int32, int64
* uint, uint8, uint16, uint32, uint64, uintptr
* byte -> alias for uint8
* rune -> alias for int32. Represents unicode point.
* float32, float64
* complex64, complex128

### Zero values
Does this mean `Go` has null?!
I guess no.
Variables declared without an explicit initial value:
* 0 for numeric types
* false for boolean type
* “” for strings

But dude! What about … objects?! Structs?!

### Type conversions
```go
var i int = 42
var f float64 = float64(i)
var u uint = uint(f)

i := 42
f := float64(i)
u := uint(f)
```

Nothing much to it over here, but the important thing to put in mind is, type conversion is the same with all other languages.

But dang what about objects and structs?

### Type inference
It’s just about type inference. Whether you just initiate a variable with `var` or `:=`, without specifying the type, Go will infer the type and give it to you!

### Constants
If you want to use constants, `const` is the way. And you can’t declare constants with `:=`, 

```go
const Pi = 3.14

func main() {
		const World = "World"
		fmt.Println("Hello", World)
		fmt.Println("Happy", Pi, "Day")

		const Truth = true
		fmt.Println("Go rules?", Truth)
}
```

### Numeric Constants
I think these constants are here to give you the ability to use high-precision values. That’s all. Nothing much to it. 

### Congratulations!
Done this lesson. Next go find about flow control. `for`, `if`, `else`, `switch`, `defer`. 

#reading/articles