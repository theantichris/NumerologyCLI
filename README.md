# Numerology CLI

A CLI application that calculates the numerology of words entered by the user.

## Numerology of words

These are the values used to calculate the numerology of words.

```txt
1 2 3 4 5 6 7 8 9
A B C D E F G H I
J K L M N O P Q R
S T U V W X Y Z
```

Each letter in the word is assigned a value and those are added up. If the result isn't a a single digit, 11, or 22 those are added up until it is.

## Example

```sh
Enter the words you want to calculate:
christopher
The numerological value is 4.
```

## Non-alphabetic characters

Any entered characters that are not letters will be ignored.

```sh
Enter the words you want to calculate:
christopher1
The numerological value is 4.
```

## TODOs

* Add support for dates.
* Display numerological meanings.
