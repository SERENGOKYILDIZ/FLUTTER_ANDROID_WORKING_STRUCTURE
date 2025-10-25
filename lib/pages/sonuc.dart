import 'package:flutter/material.dart';

class Sonuc extends StatefulWidget {
  @override
  State<Sonuc> createState() => _SonucState();
}

class _SonucState extends State<Sonuc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Sayfası"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ],
        ),
      ),
    );
  }
}
