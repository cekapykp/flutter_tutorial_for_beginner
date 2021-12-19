import 'package:flutter/material.dart';

class appbarArama extends StatefulWidget {
  const appbarArama({Key? key}) : super(key: key);

  @override
  _appbarAramaState createState() => _appbarAramaState();
}

class _appbarAramaState extends State<appbarArama> {
  bool aramaYapiliyorMu = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyorMu ?
        TextField(
          decoration: InputDecoration(hintText: "Arama için birşey yazın"),
          onChanged: (aramaSonucu){
            print("Arama sonucu : $aramaSonucu");
          },
        )
            : Text("AppBar Arama"),
        actions: [
          aramaYapiliyorMu ?
          IconButton(
            icon: Icon(Icons.cancel),
            onPressed: (){
              setState(() {
                aramaYapiliyorMu = false;
              });
            },
          )
              : IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              setState(() {
                aramaYapiliyorMu = true;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
