import 'package:flutter/material.dart';
import 'package:flutter_tutorial/src/material_desing/material_pages.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 4 / 1,
        children: [
          GestureDetector(
            onTap: (){
              print("object");
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.account_box),
                  ),
                  Text("Flutter Tasarım"),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap:(){
               print("object");
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.brightness_2),
                  ),
                  Text("Flutter Widgets"),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => materialPages() ));
            },
            child: Card(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.account_box),
                    ),
                    Text("Material Desing"),
                  ],
                ),
            ),
          ),
          Card(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.backpack),
                  ),
                  Text("Kullanıcı Etkiileşimi"),
                ],
              ),
          ),
          Card(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.account_box),
                  ),
                  Text("Depolama İşlemleri"),
                ],
              ),
          ),
        ],
      ),
    );
  }
}

