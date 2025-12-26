class Book {
  String title;
  String author;
  bool isAvailable;

  Book(this.title, this.author) : isAvailable = true;

  void borrowBook() {
    if (isAvailable) {
      isAvailable = false;
    } else {
      print("The book is not available.");
    }
  }

  void returnBook() {
    isAvailable = true;
  }
}


class Patron {
  String name;
  List<Book> booksBorrowed;

  Patron(this.name) : booksBorrowed = [];

  void borrowBook(Book book) {
    if (book.isAvailable) {
      book.borrowBook();
      booksBorrowed.add(book);
    } else {
      print("The book is not available.");
    }
  }

  void returnBook(Book book) {
    if (booksBorrowed.contains(book)) {
      book.returnBook();
      booksBorrowed.remove(book);
    } else {
      print("The book was not borrowed by $name.");
    }
  }
}