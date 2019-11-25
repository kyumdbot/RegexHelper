# RegexHelper

## Usage

Add `RegexHelper.swift` to your project.


## Examples

### RegexHelper.gsub()

```
let string = "hello"
let pattern = #"([aeiou])"#

let replacement1 = #"<$1>"#
let str1 = RegexHelper.gsub(pattern: pattern, string: string, replacement: replacement1) //=> "h<e>ll<o>"

    
let replacement2 = #"*"#
let str2 = RegexHelper.gsub(pattern: pattern, string: string, replacement: replacement2) //=> "h*ll*"
```

### RegexHelper.firstMatch()

```
let string = "hello"
let pattern = #"(.)\1"#
let matches = RegexHelper.firstMatch(pattern: pattern, string: string) //=> ["ll", "l"]
```


### RegexHelper.match()

```
let string = "cruel world"
let pattern1 = #"\w+"#
let matches1 = RegexHelper.match(pattern: pattern1, string: string) //=> [["cruel"], ["world"]]

let pattern2 = #"(..)(..)"#
let matches2 = RegexHelper.match(pattern: pattern2, string: string) //=> [["crue", "cr", "ue"], ["l wo", "l ", "wo"]]
```
