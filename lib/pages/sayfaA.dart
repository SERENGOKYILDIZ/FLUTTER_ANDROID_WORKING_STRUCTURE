import 'package:android_flutter_working_structure/pages/anasayfa.dart';
import 'package:android_flutter_working_structure/pages/sayfaB.dart';
import 'package:flutter/material.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({super.key});

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
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SayfaB()));
              },
              child: Text("Sayfa B'ye Git"),
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
