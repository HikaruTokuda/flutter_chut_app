import 'package:flutter/material.dart';
import 'package:flutter_chut_app/model/message.dart';
import 'package:intl/intl.dart' as intl;    // materialのTextDirectionがintlにも定義されているため、intlはエイリアスを設定

class TalkRoom extends StatefulWidget {
  final String name;
  TalkRoom(this.name);

  @override
  _TalkRoomState createState() => _TalkRoomState();
}

class _TalkRoomState extends State<TalkRoom> {
  List<Message> messageList = [
    Message(
      message: 'あいうえお',
      isMe: true,
      semdTime: DateTime(2020, 1, 1, 10, 20)
    ),
    Message(
        message: 'かきくけこかきくけこかきくけこかきくけこかきくけこかきくけこかきくけこ',
        isMe: false,
        semdTime: DateTime(2020, 1, 1, 11, 15)
    ),
    Message(
        message: 'あいうえお',
        isMe: true,
        semdTime: DateTime(2020, 1, 1, 10, 20)
    ),
    Message(
        message: 'かきくけこかきくけこかきくけこかきくけこかきくけこかきくけこかきくけこ',
        isMe: false,
        semdTime: DateTime(2020, 1, 1, 11, 15)
    ),
    Message(
        message: 'あいうえお',
        isMe: true,
        semdTime: DateTime(2020, 1, 1, 10, 20)
    ),
    Message(
        message: 'かきくけこかきくけこかきくけこかきくけこかきくけこかきくけこかきくけこ',
        isMe: false,
        semdTime: DateTime(2020, 1, 1, 11, 15)
    ),
    Message(
        message: 'あいうえお',
        isMe: true,
        semdTime: DateTime(2020, 1, 1, 10, 20)
    ),
    Message(
        message: 'かきくけこかきくけこかきくけこかきくけこかきくけこかきくけこかきくけこ',
        isMe: false,
        semdTime: DateTime(2020, 1, 1, 11, 15)
    ),
    Message(
        message: 'あいうえお',
        isMe: true,
        semdTime: DateTime(2020, 1, 1, 10, 20)
    ),
    Message(
        message: 'かきくけこかきくけこかきくけこかきくけこかきくけこかきくけこかきくけこ',
        isMe: false,
        semdTime: DateTime(2020, 1, 1, 11, 15)
    ),
    Message(
        message: 'あいうえお',
        isMe: true,
        semdTime: DateTime(2020, 1, 1, 10, 20)
    ),
    Message(
        message: 'かきくけこかきくけこかきくけこかきくけこかきくけこかきくけこかきくけこ',
        isMe: false,
        semdTime: DateTime(2020, 1, 1, 11, 15)
    ),
    Message(
        message: 'あいうえお',
        isMe: true,
        semdTime: DateTime(2020, 1, 1, 10, 20)
    ),
    Message(
        message: 'かきくけこかきくけこかきくけこかきくけこかきくけこかきくけこかきくけこ',
        isMe: false,
        semdTime: DateTime(2020, 1, 1, 11, 15)
    ),
    Message(
        message: 'あいうえお',
        isMe: true,
        semdTime: DateTime(2020, 1, 1, 10, 20)
    ),
    Message(
        message: 'かきくけこかきくけこかきくけこかきくけこかきくけこかきくけこかきくけこ',
        isMe: false,
        semdTime: DateTime(2020, 1, 1, 11, 15)
    ),
    Message(
        message: 'あいうえお',
        isMe: true,
        semdTime: DateTime(2020, 1, 1, 10, 20)
    ),
    Message(
        message: 'かきくけこかきくけこかきくけこかきくけこかきくけこかきくけこかきくけこ',
        isMe: false,
        semdTime: DateTime(2020, 1, 1, 11, 15)
    ),
    Message(
        message: 'あいうえお',
        isMe: true,
        semdTime: DateTime(2020, 1, 1, 10, 20)
    ),
    Message(
        message: 'かきくけこかきくけこかきくけこかきくけこかきくけこかきくけこかきくけこ',
        isMe: false,
        semdTime: DateTime(2020, 1, 1, 11, 15)
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(    // UIの基盤となるウィジェット
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Stack(                // children内のウィジェットを重ねて表示
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0),       // 入力ボックスと送信ボタンが入るRowウィジェットの高さ分までListViewにPaddingを指定する
            child: ListView.builder(   // body部分にはListViewを
              physics: RangeMaintainingScrollPhysics(),   // 表示内容が画面幅を超えた時にスクロール可能にする
              shrinkWrap: true,       // ListViewを要素の数の大きさ分だけにする
              reverse: true,          // スクロール方向を下から上へ
              itemCount: messageList.length,    // Listのアイテム数
              itemBuilder: (context, index) {   // Listの内容を生成
                return Padding(
                  padding: const EdgeInsets.only(top: 10, right: 10, left: 10),       // 1行ごとのPadding
                  child: Row(                     // 1行分の情報
                    crossAxisAlignment: CrossAxisAlignment.end,   // children内の要素の値をどのような配置にするか→下揃え
                    textDirection: messageList[index].isMe! ? TextDirection.rtl : TextDirection.ltr,   // ListViewの文字列をどこから表示させるか
                    children: [
                      Container(                  // Text部分をコンテナで修飾
                        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),   // テキストの長さの最大値を取得
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),     // 上下に6、左右に10の余白をつける
                        decoration: BoxDecoration(
                          color: messageList[index].isMe! ? Colors.green : Colors.white,    // decorationを使う場合は、コンテナに対するColorはdecoration内で指定する必要がある
                          borderRadius: BorderRadius.circular(10.0)                         // コンテナの形を丸みをおびたものにしたい
                        ),
                        child: Text(messageList[index].message!)
                      ),
                      Text(intl.DateFormat('HH:mm').format(messageList[index].semdTime!), style: TextStyle(fontSize: 12),),
                    ],
                  ),
                );
            }),
          ),
          Align(                  // Rowウィジェットを下部に表示したいのでAlignウィジェットでラッピング
            alignment: Alignment.bottomCenter,      // child内のウィジェットを下部中心で表示する
            child: Container(
              height: 60,
              color: Colors.white,
              child: Row(           // 入力ボックスと送信ボタンを横に並べるので、Rowウィジェット
                children: [
                  // TextFieldはデフォルトでは画面幅いっぱいに広がるよう設定しているため、
                  // IconButtonと合わせると画面幅を超える。そのため、Expandウィジェットでラッピングすることでビルドエラーを解消する
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),     // テキストボックスがRowウィジェットいっぱいになっているのでパディングを設定
                    child: TextField(
                      decoration: InputDecoration(          // ボーダー付きのテキストボックスに
                        border: OutlineInputBorder()
                      ),
                    ),
                  )),
                  IconButton(
                      onPressed: () => {                    // 送信ボタンタップ時の処理
                        print('送信')
                      },
                      icon: Icon(Icons.send)                // 送信ボタンアイコン
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
