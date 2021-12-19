import 'package:flutter/material.dart';

class sabitListView extends StatefulWidget {

  @override
  _sabitListViewState createState() => _sabitListViewState();
}

class _sabitListViewState extends State<sabitListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sabit ListView"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.wb_sunny),
            title: Text("Güneş"),
            subtitle: Text("Güneş alt başlık"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print("Güneş tıklandı");
            },
          ),
          ListTile(
            leading: Icon(Icons.brightness_2),
            title: Text("Ay"),
            subtitle: Text("Ay alt başlık"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print("Ay tıklandı");
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Yıldız"),
            subtitle: Text("Yıldız alt başlık"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              print("Yıldız tıklandı");
            },
          ),
          GestureDetector(
            onTap: (){
              print("Card tıklandı");
            },
            child: Card(
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Text("Card Tasarım"),
                    Spacer(),
                    Icon(Icons.more_vert)
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              print("Container tıklandı");
            },
            child: Container(
              height: 50,
              color: Colors.red,
              child: Text("Merhaba"),
            ),
          ),
         ElevatedButton(
              child: Text("Ana Sayfa"),
              onPressed: (){
                Navigator.popUntil(context, (route) => route.isFirst);
              },
         )
         ],
      ),

    );
  }
}