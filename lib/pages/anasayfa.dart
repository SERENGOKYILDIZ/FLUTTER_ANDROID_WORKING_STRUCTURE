import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa>{

  Future<int> faktoriyelHesapla(int sayi) async {
    int sonuc = 1;
    for(var i=1;i<=sayi;i++) {
      sonuc=sonuc * i;
    }
    return sonuc;
  }

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
            FutureBuilder<int>(
              future: faktoriyelHesapla(5),
              builder: (context, snapshot){
                if(snapshot.hasError)
                {
                  print("Hata sonucu : ${snapshot.error}");
                }
                if(snapshot.hasData)
                {
                  return Text("Sonuc : ${snapshot.data}");
                }
                else
                {
                  return Text("Sonuc YOK");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
