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

let masterNumbers = [11, 22]

let meanings:[String] = [
    "The number 1 carries strong masculine energies. People with a numerological category of 1 tend to be leaders. They are often resilient, creative, impassioned, independent, prefer action and practical solutions, perfectionists, visionaries, popular, honest, and fair. People with this number can sometimes be overly demanding or critical of others. They might not show it but sometimes struggle with feelings of self doubt."
]

print("Enter the words you want to calculate: ")
var input = readLine()!
input = input.uppercased()

var value = calculateNumerologicalValue(of: input)

func calculateNumerologicalValue(of input: String) -> Int {
    var value = getInitialValue(of: input)

    while value > 9 {
        if masterNumbers.contains(value) {
            return value
        }

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

print("The numerological value is \(value).")
print(meanings[value - 1])
