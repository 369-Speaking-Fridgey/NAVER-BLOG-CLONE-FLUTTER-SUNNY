import 'package:flutter/material.dart';
import 'package:naver_blog/pages/explore.dart';
import 'package:naver_blog/pages/post.dart';
import 'package:naver_blog/pages/saved.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '이웃새글',
      home: MyHomePage(title: '이웃새글'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class Items {
  const Items(this.iconData, this.text);
  final IconData iconData;
  final String text;
}

class _MyHomePageState extends State<MyHomePage> {
  final itemList = const <Items>[
    Items(Icons.explore, 'Explore'),
    Items(Icons.create_outlined, 'Post'),
    Items(Icons.bookmark, 'Saved'),
  ];

  int index = 0;
  final _buildBody = const <Widget>[
    Explore(title: 'Explore'),
    Post(title: 'Post'),
    Saved(title: 'Saved'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (x) {
          setState(() {
            index = x;
          });
        },
        elevation: 30.0,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.green[900],
        items: itemList
            .map((Items item) => BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(item.iconData),
                  label: item.text,
                ))
            .toList(),
      ),
      body: _buildBody[index],
    );
  }
}
