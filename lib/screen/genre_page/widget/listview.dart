import 'package:flutter/material.dart';
import 'package:teraki/constant/constant.dart';
import 'package:teraki/model/generModel.dart';
import 'package:teraki/screen/readDetail_page/ui/readBook.dart';

class MyListView extends StatelessWidget {
  final generList = GenerBook.generateGenerBook();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: GestureDetector(
          onTap: () {
            navigateToDetail(context);
          },
          child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 140,
                        width: 90,
                        child: Image.asset(
                          generList[index].bookUrl,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            generList[index].bookName,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Text(generList[index].rate),
                              Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 251, 218, 86),
                                size: 20,
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite_outline,
                            size: 25,
                            color: cprimary.withOpacity(1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              navigateToReadDetail(context);
                            },
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              size: 40,
                              color: csecondary.withOpacity(1),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
              separatorBuilder: (BuildContext context, int index) {
                return Container(
                  height: 1,
                  width: 30, // Customize the height of the divider
                  color: Colors.black26, // Customize the color of the divider
                );
              },
              itemCount: generList.length),
        ),
      ),
    );
  }

  void navigateToReadDetail(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ReadBook()));
  }

  void navigateToDetail(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ReadBook()));
  }
}
