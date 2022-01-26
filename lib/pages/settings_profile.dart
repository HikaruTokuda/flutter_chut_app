import 'package:flutter/material.dart';

class SettingsProfilePage extends StatefulWidget {
  const SettingsProfilePage({Key? key}) : super(key: key);

  @override
  _SettingsProfilePageState createState() => _SettingsProfilePageState();
}

class _SettingsProfilePageState extends State<SettingsProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('プロフィール編集'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(                             // プロフィール編集フィールド
          children: [
            Row(                                  // 名前ラベルと名前入力ボックスを横に並べるのでRow
              children: [
                Container(width: 100,child: Text('名前')),    // 名前入力ボックスと画像選択ボタンの始まり位置を揃えるために、テキストラベルを幅を指定してContainerでラッピング
                Expanded(child: TextField())
              ],
            ),
            SizedBox(height: 50,),                    // １行目と２行目の間に何もない領域を作る
            Row(
              children: [
                Container(width: 100, child: Text('サムネイル')),    // 名前入力ボックスと画像選択ボタンの始まり位置を揃えるために、テキストラベルを幅を指定してContainerでラッピング
                Expanded(
                  child: Container(
                    alignment: Alignment.center,                    // 画像選択ボタンを名前ボックスの中心に移動
                    child: Container(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(onPressed: () => {}, child: Text('画像選択'))
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
