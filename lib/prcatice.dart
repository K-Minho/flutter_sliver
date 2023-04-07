import 'package:flutter/material.dart';

class PracticeList extends StatelessWidget {
  const PracticeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Text("Title!"),
              floating: true,
              pinned: true,
            ),
          ];
        },
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Image.network(
              'https://picsum.photos/800/600',
              fit: BoxFit.cover,
            );
          },
          itemCount: 30,
        ),
      ),
    );
  }
}
