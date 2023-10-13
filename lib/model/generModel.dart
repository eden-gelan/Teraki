import 'package:flutter/material.dart';

class GenerBook {
  num id;
  String bookName;
  String bookUrl;
  String rate;

  GenerBook(this.id, this.bookName, this.bookUrl, this.rate);

  static List<GenerBook> generateGenerBook() {
    return [
      GenerBook(1, ' ዳግማዊ ሚኒልክ', 'assets/history/image1.jpg', '4.2'),
      GenerBook(2, '  ሰላዩ ሬሳ ', 'assets/history/image2.jpg', '4.5'),
      GenerBook(3, ' ሰለሞናዉያን  ', 'assets/history/image3.jpg', '4.8'),
      GenerBook(4, ' እነሆ ጀግና  ', 'assets/history/image4.jpg', '4.3'),
      GenerBook(
          5, ' ከንግሥተ ሳባ  \n እስከ አድዋ ድል  ', 'assets/history/image5.jpg', '4.2'),
      GenerBook(6, ' የሀበሻ ጀብዱ ', 'assets/history/image6.jpg', '4.9'),
      GenerBook(7, ' ዳግማዊ ሚኒልክ', 'assets/history/image1.jpg', '4.2'),
      GenerBook(8, '  ሰላዩ ሬሳ ', 'assets/history/image2.jpg', '4.5'),
      GenerBook(9, ' ሰለሞናዉያን  ', 'assets/history/image3.jpg', '4.8'),
      GenerBook(10, ' እነሆ ጀግና  ', 'assets/history/image4.jpg', '4.3'),
      GenerBook(
          11, ' ከንግሥተ ሳባ  \n እስከ አድዋ ድል  ', 'assets/history/image5.jpg', '4.2'),
      GenerBook(12, ' የሀበሻ ጀብዱ ', 'assets/history/image6.jpg', '4.9'),
    ];
  }
}
