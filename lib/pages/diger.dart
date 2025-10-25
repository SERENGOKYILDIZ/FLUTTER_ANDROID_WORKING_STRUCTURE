import 'package:flutter/material.dart';

class Diger extends StatefulWidget {
  @override
  State<Diger> createState() => _DigerState();
}

class _DigerState extends State<Diger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diğer Sayfa"),
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
