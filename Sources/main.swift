let groups:[String] = [
  "AJS",
  "BKT",
  "CLU",
  "DMV",
  "ENW",
  "FOX",
  "GPY",
  "HQZ",
  "IR"
]

var input = ""
print("Enter the words you want to calculate: ")
input = readLine()!

// TODO: strip out or show error for anything that isn't a letter.

input = input.uppercased()

var value = calculateNumerogicalValue(of: input)

func calculateNumerogicalValue(of input: String) -> Int {
    var value = getInitialValue(of: input)
    
    while value > 9 {
        let digits = getDigits(of: value)
        value = 0 // Resetting the value to 0 for the new calculation.
        
        for digit in digits {
            value += digit
        }
    }
    
    return value
}

func getInitialValue(of input: String) -> Int {
    var value = 0
    
    for letter in input {
        for i in 1 ... groups.count {
            let index = i - 1
            
            if groups[index].contains(letter) {
                value += i
            }
        }
    }
    
    return value
}

func getDigits(of number: Int) -> [Int] {
    var digits = [Int]()
    var x = number
    
    repeat{
        digits.insert(abs(x % 10), at: 0)
        x /= 10
    } while x != 0

    return digits
}

print("The numerogical value is \(value).")
