import 'package:android_flutter_working_structure/classes/kisiler.dart';
import './anasayfa.dart';
import 'package:flutter/material.dart';

class SayfaA extends StatefulWidget {
  /** TEK TEK YOLLAMA
   *  String isim;
      int yas;
      double boy;
      bool bekarmi;

  SayfaA({required this.isim, required this.yas,
    required this.boy, required this.bekarmi}); ///-> Böylece yazarak gönderebiliriz.
  **/

  Kisiler kisi;

  SayfaA({required this.kisi});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa A"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sayfa A'ya hoşgeldiniz"),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).popUntil((route)=>route.isFirst);
                /// Yeni sayfa açmadan direk en başa yani anasayfaya döner.
              },
              child: Text("Anasayfa'ya Dön"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.pink,
              ),
            ),
            /*
            /// Veriler bu şekilde kullanlır.
            Text("İsim : ${widget.isim}"),
            Text("Yaş : ${widget.yas}"),
            Text("Boy : ${widget.boy}"),
            Text("Durum : ${widget.bekarmi}"),
            */
            /// Veriler bu şekilde kullanlır.
            Text("İsim : ${widget.kisi.isim}"),
            Text("Yaş : ${widget.kisi.yas}"),
            Text("Boy : ${widget.kisi.boy}"),
            Text("Durum : ${widget.kisi.bekarmi}"),
          ],
        ),
      ),
    );
  }
}
