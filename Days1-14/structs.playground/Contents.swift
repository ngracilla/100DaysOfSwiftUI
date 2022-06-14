import Cocoa

struct Book {
    let title: String
    let author: String
    let publishedYear: Int
    
    func printSummary() {
        print("\(title) - \(author) [\(publishedYear)] ")
    }
}

let myBook = Book(title: "hey", author: "bar", publishedYear: 2018)

print(myBook.title)
myBook.printSummary()
