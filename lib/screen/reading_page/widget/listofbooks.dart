import 'package:flutter/material.dart';
import 'package:teraki/model/generModel.dart';
import 'package:teraki/screen/readDetail_page/ui/readBook.dart';

class ShowMoreGrid extends StatefulWidget {
  final int maxItemsToShow;

  const ShowMoreGrid({Key? key, this.maxItemsToShow = 3}) : super(key: key);

  @override
  _ShowMoreGridState createState() => _ShowMoreGridState();
}

class _ShowMoreGridState extends State<ShowMoreGrid> {
  final generList = GenerBook.generateGenerBook();
  bool _showMore = false;

  @override
  Widget build(BuildContext context) {
    final value = generList.length;
    final itemCount = _showMore ? value : widget.maxItemsToShow;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 10,
            ),
            itemCount: itemCount,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  navigateToPage(context);
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(generList[index].bookUrl),
                ),
              );
            },
          ),
          if (!_showMore && value > widget.maxItemsToShow)
            TextButton(
              onPressed: () {
                setState(() {
                  _showMore = !_showMore;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('More'), Icon(Icons.keyboard_arrow_down)],
              ),
            ),
          if (_showMore)
            TextButton(
              onPressed: () {
                setState(() {
                  _showMore = !_showMore;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Less'), Icon(Icons.keyboard_arrow_up)],
              ),
            ),
        ],
      ),
    );
  }

  void navigateToPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ReadBook()));
  }
}
