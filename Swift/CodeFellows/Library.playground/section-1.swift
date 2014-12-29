/*Use Swift to create object models for a a public library (w/ three classes: Library, Shelf, & Book). *
The library should be aware of a number of shelves. Each shelf should know what books it contains. Make the book object have "enshelf" and "unshelf" methods that control what shelf the book is sitting on. The library should have a method to report all books it contains. Push this file to your GitHub.com account and paste in the URL to it here.
*/


import UIKit

// The library knows how many shelves are on it
class Library {
    //The number of shelves will be stored here as they are populated with books
    var numberOfShelves:[Shelf] = []
    //As of right now there are no books
    var grossBooks = 0

    var libraryContents: String {
        return "This library is home to \(numberOfShelves) shelves and \(grossBooks) books"
    }
}



//This Shelf knows how many books are on it
class Shelf {
    //This is an empty list that will be full of books once they are added
    var booksOnTheShelf:[Book] = []
    
    //The shelf starts out empty
    var numberOfBooks = 0
    
    init() {
        self.booksOnTheShelf = []
    }
    
    var bookcount: String {
        return("This shelf has \(booksOnTheShelf) books")
    }
}




//Books know that they are books, and what their names are
class Book {
    //The name of the book is a string
    var nameOfTheBook = ""
    
    //The shelves are empty till you put books on it
    var isItShelved = false
    
    //The book knows its name
    var whatsTheBook: String {
        return "This books name is \(nameOfTheBook)"
    }
    
    //run it
    init(nameOfTheBook : String){
        self.nameOfTheBook = nameOfTheBook
    }
    
    //I report back that the book is on the shelf
    func enShelf(Shelf) {
        isItShelved = true
        println("\(nameOfTheBook) is on the shelf")
    }
    
    //The book is now off the shelf
    func unShelf(Shelf) {
        isItShelved = false
        println("\(nameOfTheBook) is not on the shelf")
    }

    
}


let somebook = Book(nameOfTheBook: "The book")
println(somebook.nameOfTheBook)

let count = Shelf()
println(count.numberOfBooks)

let libraryTest = Library()
println(libraryTest.libraryContents)


