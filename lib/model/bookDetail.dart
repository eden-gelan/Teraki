import 'package:flutter/material.dart';

class Book {
  num id;
  String bookName;
  String bookUrl;
  String description;

  Book(this.id, this.bookName, this.bookUrl, this.description);

  static List<Book> generateBook() {
    return [
      Book(1, 'ኦሮማይ ', 'assets/oromay.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
      
    ];
  }
}

