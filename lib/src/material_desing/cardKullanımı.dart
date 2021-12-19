import 'package:flutter/material.dart';

class cardKullanimi extends StatefulWidget {
  const cardKullanimi({Key? key}) : super(key: key);

  @override
  _cardKullanimiState createState() => _cardKullanimiState();
}

class _cardKullanimiState extends State<cardKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Kullanımı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300,
              child: Card(
                color: Colors.deepPurpleAccent,
                elevation: 10.0,
                shadowColor: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight:Radius.circular(10),topLeft:Radius.circular(10)),
                  side: BorderSide(width: 1,color: Colors.pinkAccent),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Toplam Puan",style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star,color: Colors.amber,),
                            Text("676136",style: TextStyle(color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ],
                  ),
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
