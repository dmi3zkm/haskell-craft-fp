type Person = String
type Book   = String

data Loan = Loan Person Book

type Database = [(Person, Book)]

exampleBase :: Database
exampleBase = [("Alice", "Tintin"), ("Anna", "Little Women"), ("Alice", "Asterix"), ("Rory", "Tintin")]

books       :: Database -> Person -> [Book]
books dBase findPerson = [ book | (person, book) <- dBase, person == findPerson ]

--exercise 5.28
borrowers   :: Database -> Book -> [Person]
borrowers dBase findBook = [ person | (person, book) <- dBase, book == findBook ]

--exercise 5.28
borrowed    :: Database -> Book -> Bool
borrowed dBase findBook = not $ null $ borrowers dBase findBook

--exercise 5.28
numBorrowed :: Database -> Person -> Int
numBorrowed dBase findPerson = length $ books dBase findPerson

makeLoan    :: Database -> Person -> Book -> Database
makeLoan dBase pers bk = [(pers, bk)] ++ dBase

returnLoan  :: Database -> Person -> Book -> Database
returnLoan dBase pers bk = [ pair | pair <- dBase, pair /= (pers, bk)]