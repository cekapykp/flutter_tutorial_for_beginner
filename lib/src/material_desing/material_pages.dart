// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/src/material_desing/appbar.dart';
import 'package:flutter_tutorial/src/material_desing/appbar_arama.dart';
import 'package:flutter_tutorial/src/material_desing/cardKullan%C4%B1m%C4%B1.dart';
import 'package:flutter_tutorial/src/material_desing/formSayfasi.dart';
import 'package:flutter_tutorial/src/material_desing/gridView.dart';
import 'package:flutter_tutorial/src/material_desing/sabitListWiew.dart';

class materialPages extends StatefulWidget {
  const materialPages({Key? key}) : super(key: key);

  @override
  _materialPagesState createState() => _materialPagesState();
}

class _materialPagesState extends State<materialPages> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material Pages"),
      ),
      body: SizedBox(
        child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio:3 / 4,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => formSayfasi() ));
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.account_box),
                    ),
                    Text("Form Sayfası"),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => appbarKullanimi() ));
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.label),
                    ),
                    Text("Appbar Kullanımı"),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => appbarArama() ));
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                 
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),
                    Text("Appbar Arama"),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => cardKullanimi() ));
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.tab),
                    ),
                    Text("Card Kullanımı"),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => sabitListView() ));
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.cabin),
                    ),
                    Text("ListView Kullanımı"),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => gridView() ));
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.star),
                    ),
                    Text("Sabit Grid View"),
                  ],
                ),
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
      ),
    );
  }
}
