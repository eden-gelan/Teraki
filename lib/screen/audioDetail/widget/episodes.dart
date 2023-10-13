import 'package:flutter/material.dart';

class Episodes extends StatelessWidget {
  const Episodes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (_, index) {
              return ListTile(
                title: Text('Episode $index'),
                trailing: Icon(Icons.keyboard_arrow_right),
              );
            }));
  }
}
