import 'package:android_flutter_working_structure/classes/kisiler.dart';
import './sayfaA.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
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
            Text("Anasayfa'ya hoşgeldiniz"),
            ElevatedButton(
                onPressed: (){
                  /**TEK TEK YOLLAMA
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SayfaA(
                    isim: "Eren",
                    yas: 23,
                    boy: 1.75,
                    bekarmi: true,
                  )));
                      */
                  var Kisiler insan = new Kisiler(isim: "Osman", yas: 21, boy: 1.80, bekarmi: true);

                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SayfaA(
                    kisi: insan,
                  )));
                  /// Bilgiler ile beraber geçiş yapar
                }, 
                child: Text("Sayfa A'ya Git"),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.pink,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
