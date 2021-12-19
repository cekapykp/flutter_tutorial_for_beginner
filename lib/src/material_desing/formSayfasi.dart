import 'package:flutter/material.dart';

class formSayfasi extends StatefulWidget {
  const formSayfasi({Key? key}) : super(key: key);

  @override
  _formSayfasiState createState() => _formSayfasiState();
}

class _formSayfasiState extends State<formSayfasi> {
  var formKey = GlobalKey<FormState>();
  var tfKullaniciAdi = TextEditingController();
  var tfSifre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Sayfası"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: tfKullaniciAdi,
                      decoration: InputDecoration(hintText: "Kullanıcı Adı"),
                      validator: (tfgirdisi){
                        if(tfgirdisi!.isEmpty){
                          return "Kullanıcı adı giriniz";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: tfSifre,
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Şifre"),
                      validator: (tfgirdisi){
                        if(tfgirdisi!.isEmpty){
                          return "Şifre giriniz";
                        }

                        if(tfgirdisi.length < 6){
                          return "Şifreniz en az 6 haneli olmalıdır";
                        }

                        return null;
                      },
                    ),
                    ElevatedButton(
                      child: Text("GİRİŞ"),
                      onPressed: (){
                        bool kontrolSonucu = formKey.currentState!.validate();

                        if(kontrolSonucu){
                          String ka = tfKullaniciAdi.text;
                          String s = tfSifre.text;
                          print("Kullanıcı adı : $ka - Şifre : $s");
                        }
                      },
                    ),
                    ElevatedButton(
                      child: Text("Ana Sayfa"),
                      onPressed: (){
                       Navigator.popUntil(context, (route) => route.isFirst);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
