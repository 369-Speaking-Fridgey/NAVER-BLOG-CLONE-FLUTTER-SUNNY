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
  final List<String> entries = <String>['이웃1', '이웃2', '이웃3'];

<<<<<<< HEAD
  TextEditingController _titleController = TextEditingController();
  QuillController _quillController = QuillController.basic();
=======
  TextEditingController _controller = TextEditingController();
>>>>>>> all

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
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                const SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.all(20, 0),
                  child: TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: "제목을 입력하세요"),
                  ),
                ),
                const SizedBox(height: 15),
                QuillToolbar.basic(controller: _quillController),
                const SizedBox(height: 30),
                Expanded(
                    child: Container(
                  child: QuillEditor.basic(
                      controller: _quillController, readOnly: false),
                ))

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