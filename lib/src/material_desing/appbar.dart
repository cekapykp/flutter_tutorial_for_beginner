import 'package:flutter/material.dart';

class appbarKullanimi extends StatefulWidget {
  const appbarKullanimi({Key? key}) : super(key: key);

  @override
  _appbarKullanimiState createState() => _appbarKullanimiState();
}

class _appbarKullanimiState extends State<appbarKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Başlık",style: TextStyle(color: Colors.white,fontSize: 16.0),),
            Text("Alt Başlık",style: TextStyle(color: Colors.white,fontSize: 12.0),),
          ],
        ),
        centerTitle: false,
        leading: IconButton(
          tooltip: "Menu Icon",
          icon: Icon(Icons.dehaze),
          onPressed: (){
            print("Menu Icon Tıklandı");
          },
        ),
        actions: [
          ElevatedButton(
            child: Text("ÇIKIŞ",style: TextStyle(color: Colors.white),),
            onPressed: (){
              print("Çıkış Tıklandı");
            },
          ),
          IconButton(
            tooltip: "Bilgi",
            icon: Icon(Icons.info_outline),
            onPressed: (){
              print("Bilgi Tıklandı");
            },
          ),
          PopupMenuButton(
            child: Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("Sil"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Güncelle"),
              ),
            ],
            onSelected: (menuItemValue){
              if(menuItemValue == 1){
                print("Sil tıklandı");
              }
              if(menuItemValue == 2){
                print("Güncelle tıklandı");
              }
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("Ana Sayfa"),
              onPressed: (){
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    );
  }
}
