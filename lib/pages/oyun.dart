import 'package:android_flutter_working_structure/pages/sonuc.dart';
import 'package:flutter/material.dart';

class Oyun extends StatefulWidget {
  @override
  State<Oyun> createState() => _OyunState();
}

class _OyunState extends State<Oyun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oyun Sayfası"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Sonuc()));
                  /// Böylece oyun ekranı geçiş yaparken silinir.
                },
                child: Text("Oyunu bitir")
            ),
          ],
        ),
      ),
    );
  }
}
