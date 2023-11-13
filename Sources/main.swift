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

var value = 0

print("Enter the words you want to calculate.\n")

var response = "Moon"
var expected = 21
// TODO: strip out or show error for anything that isn't a letter.
//response = readLine()
response = response.uppercased()

print("Response uppercased: \(response)")

for letter in response {
    print("Checking for letter: \(letter)")
    
    for i in 1 ... groups.count {
        let index = i - 1
        
        print("Checking in: \(groups[index])")
        
        if groups[index].contains(letter) {
            print("Group \(groups[index]) does contain \(letter)")
            value += i
        } else {
            print("Group \(groups[index]) does not contain \(letter))")
        }
    }
}

print(value)
