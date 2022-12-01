// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter/src/widgets/text.dart' as title;

class Post extends StatefulWidget {
  const Post({super.key, required this.title});

  final String title;

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          title: const title.Text(
            "글쓰기",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Container(
            color: Colors.white,
            child: ListView(
              padding: const EdgeInsets.all(5),
              children: <Widget>[
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.black38)),
                        border: InputBorder.none,
                        hintText: "제목을 입력하세요"),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: null,
                    controller: _contentsController,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 100.0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.black38)),
                        border: OutlineInputBorder(gapPadding: 0),
                        hintText: "내용을 입력하세요",
                        isDense: true),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: OutlinedButton(
                        onPressed: () {
                          String title = _titleController.text;
                          String contents = _contentsController.text;
                          print(title);
                          print(contents);
                          _titleController.clear();
                          _contentsController.clear();
                        },
                        style: ButtonStyle(
                            side: MaterialStateBorderSide.resolveWith(
                                (states) => BorderSide(
                                    color: Colors.black38, width: 2))),
                        child: const title.Text("Submit"))),
              ],
            )));
  }
}
