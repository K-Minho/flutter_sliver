import 'package:flutter/material.dart';
import 'package:sliver_app/ads.dart';
import 'package:sliver_app/diary.dart';
import 'package:sliver_app/prcatice.dart';

void main() {
  runApp(const PracticeList());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: false,
            // floating + 즉시 나타남
            floating: true,
            // 위로 스크롤시 나타남
            title: Text("Sliver Appbar1"),
            pinned: false,
            expandedHeight: 300,
            flexibleSpace: Container(
              child: Text(
                "Show Must Go On!",
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          SliverAppBar(
            title: Text("Sliver Appbar2"),
            pinned: true,
          ),
          buildSliverFixedExtentListView(),
        ],
      ),
    );
  }

  SliverFixedExtentList buildSliverFixedExtentListView() {
    return SliverFixedExtentList(
          itemExtent: 100,
          delegate: SliverChildBuilderDelegate(
            childCount: 30,
            (context, index) {
              if (index != 0 && index % 5 == 0) {
                return Ad(index / 5 as int);
              } else {
                return Diary(index);
              }
            },
          ),
        );
  }
}
