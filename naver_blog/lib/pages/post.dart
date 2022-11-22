import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key, required this.title});

  final String title;

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  final List<String> entries = <String>['이웃1', '이웃2', '이웃3'];

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          title: const Text(
            "글쓰기",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Container(
            color: Colors.grey[200],
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "제목을 입력하세요"),
                ),
                SizedBox(height: 15),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "내용을 입력하세요"),
                  ),
                )
              ],
            )));
  }
}

        /*
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              
            ],
          ),
        )
        */