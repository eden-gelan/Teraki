import 'package:flutter/material.dart';
import 'package:teraki/model/generModel.dart';
import 'package:teraki/screen/readDetail_page/ui/readBook.dart';

class ShowMoreAudio extends StatefulWidget {
  final int maxItemsToShow;

  const ShowMoreAudio({Key? key, this.maxItemsToShow = 3}) : super(key: key);

  @override
  _ShowMoreAudioState createState() => _ShowMoreAudioState();
}

class _ShowMoreAudioState extends State<ShowMoreAudio> {
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
              return Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: Container(
                      height: 130,
                      width: 100,
                      child: Image.asset(generList[index].bookUrl),
                    ),
                  ),
                  Positioned(
                      left: 32,
                      top: 30,
                      child: Transform.rotate(
                        angle: 1.56,
                        child: Icon(
                          Icons.format_align_center,
                          color: Colors.white.withOpacity(0.7),
                          size: 40,
                        ),
                      )),
                ],
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

  
}
