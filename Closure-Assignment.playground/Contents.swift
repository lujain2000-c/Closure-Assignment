import Foundation

/*:
 ### Overview:
 In this assignment, you will be exploring higher-order functions in Swift, which are functions that take other functions as arguments or return functions as output. You will implement several common higher-order functions and use them to solve practical problems.

 ### Requirements:

 Implement the following higher-order functions in Swift:
 - Map
 - Filter
 - Reduce
 
 In this assignment, you will use the Book struct provided below to practice using higher-order functions in Swift.
 */
struct Book {
    var title: String
    var author: String
    var price: Double
    var nPage: Int
    var readingAge: Int
}
/*:
 You will be working with an array of Book instances:
 */
let book1 = Book(title: "Think and Grow Rich", author: " Napoleon Hill", price: 345.0, nPage: 680, readingAge: 10)
let book2 = Book(title: "The 7 Habits of Highly Effective People", author: " Stephen R. Covey", price: 44.88, nPage: 120, readingAge: 18)
let book3 = Book(title: "Rich Dad Poor Dad", author: " Robert Kiyosaki", price: 24.55, nPage: 180, readingAge: 16)
let book4 = Book(title: "The Power of Positive Thinking", author: " Norman Vincent Peale", price: 74.77, nPage: 260, readingAge: 16)
let book5 = Book(title: "The Alchemist", author: " Paulo Coelho", price: 20.0, nPage: 280, readingAge: 18)


let allBooks = [book1, book2, book3, book4, book5]
//let allbooks = [

//    ]
/*:
 - map(): Use the map() function to create a new array of book titles with author.
 - filter(): Use the filter() function to create a new array of books with reading age of 16 or higher.
 - reduce(): Use the reduce() function to find the total cost of all books in the array.
 - contains(): Use the contains() function to check if the array of books contains a specific book.
 */
var mapFunc = allBooks.map{ $0.title + $0.author }
print(mapFunc)

var filterFunc = allBooks.filter{ $0.readingAge >= 16}
print(filterFunc)

var reduceFunc = allBooks.reduce(0){ $0 + $1.price }
print(reduceFunc)

var containsFunc = allBooks.contains{ $0.title == "Rich Dad Poor Dad"  }
print(containsFunc)

