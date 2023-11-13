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

// TODO: print("Enter the words you want to calculate.\n")

var response = "Christopher"

// TODO: response = readLine()
// TODO: strip out or show error for anything that isn't a letter.

response = response.uppercased()

var value = getInitialValue(of: response)

// TODO: Loop over value until we get a single digit number.
while value > 9 {
    let digits = getDigits(of: value)
    value = 0 // Resetting the value to 0 for the new calculation.
    
    for digit in digits {
        value += digit
    }
}

func getInitialValue(of response: String) -> Int {
    var calculation = 0
    
    for letter in response {
        for i in 1 ... groups.count {
            let index = i - 1
            
            if groups[index].contains(letter) {
                calculation += i
            }
        }
    }
    
    return calculation
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
