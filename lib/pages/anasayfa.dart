import 'package:android_flutter_working_structure/pages/diger.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa>{

  bool kontrol=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*
            Visibility(
                visible: kontrol, ///-> Widget durumunu bir değişkene atadık.
                child: Text("Merhaba")
            ),
            */
            Text(kontrol ? "Doğru" : "Yanlış",
            style: TextStyle(
                color: kontrol ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold
              ),
            ),
            ElevatedButton(
              child: Text("Durum 1"),
              onPressed: (){
                setState(() {
                  kontrol=true;
                });
              },
            ),
            ElevatedButton(
              child: Text("Durum 2"),
              onPressed: (){
                setState(() {
                  kontrol=false;
                });
              },
            ),
            /// body içinde koşullu tasarım
            ?((){
              if(kontrol)
              {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star),
                    Text("Yıldız")
                  ],
                );
              }
              else
              {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.dark_mode),
                    Text("Ay")
                  ],
                );
              }
            }()),
          ],
        ),
      ),
    );
  }
}
