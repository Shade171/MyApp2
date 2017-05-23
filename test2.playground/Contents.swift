//: Playground - noun: a place where people can play

import UIKit

let itemsArray = ["Google", "Goodbye", "Go", "Hello"]
let searchToSearch = "go"
let itemExists = itemsArray.contains(where:
    {
    $0.range(of: searchToSearch, options: .caseInsensitive) != nil
})
print(itemExists)

let matchingTerms = itemsArray.filter({
    $0.range(of: searchToSearch, options: .caseInsensitive) != nil
})
print(matchingTerms)
