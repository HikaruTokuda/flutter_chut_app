import 'package:flutter/material.dart';
import 'package:flutter_chut_app/model/user.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  List<User> userList = [
    User(
      name: '田中',
      uid: 'abc',
      imagePath: 'https://source.unsplash.com/bIhpiQA009k',
      lastMessage: 'こんにちは'
    ),
    User(
        name: '小林',
        uid: 'def',
        imagePath: 'https://source.unsplash.com/bIhpiQA009k',
        lastMessage: 'ありがとう'
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('チャットアプリ'),
      ),
      body: Center(child: Text('Top page')),
    );
  }
}
