import 'package:flutter/material.dart';

class Diary extends StatelessWidget {
  final int index;

  const Diary(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      color: Colors.cyan[100 * (index % 10)],
      child: Text("Diary List $index"),
    );
  }
}
