import 'package:flutter/cupertino.dart';
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
      imagePath: 'https://source.unsplash.com/random',
      lastMessage: 'こんにちは'
    ),
    User(
        name: '小林',
        uid: 'def',
        imagePath: 'https://source.unsplash.com/random',
        lastMessage: 'ありがとう'
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('チャットアプリ'),
      ),
      // ListViewの作成
      body: ListView.builder(
        itemCount: userList.length,               // Listの行数を指定
        itemBuilder: (context, index) {           // 行の作成
          return Container(
            height: 70,
            child: Row(                             // 行の要素を作成
              children: [                           // 1行に入れ込むウィジェットを指定
              Padding(    // CircleAvatarに対してパディングを設定
                padding: const EdgeInsets.symmetric(horizontal: 8.0),             // 左右に同じパディングを設定
                child: CircleAvatar(                                              // 丸形のアイコン
                    backgroundImage: NetworkImage(userList[index].imagePath!),    // アイコンの画像をAPIより取得
                    radius: 30,                                                   // アイコンの大きさ
                  ),
              ),
                Column(                                               // 要素を縦に並べる
                  mainAxisAlignment: MainAxisAlignment.center,        // 表示の開始位置を指定(縦)
                  crossAxisAlignment: CrossAxisAlignment.start,       // 表示の開始位置を指定(横)
                  children: [                                         // ここに入っている要素が縦に並ぶ
                    Text(userList[index].name!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Text(userList[index].lastMessage!, style: TextStyle(color: Colors.grey),)
                  ],
                )
              ],
            ),
          );
        }
      ),
    );
  }
}
