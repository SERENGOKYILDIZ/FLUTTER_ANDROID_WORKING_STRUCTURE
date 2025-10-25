import 'package:flutter/material.dart';

class Diger extends StatefulWidget {
  @override
  State<Diger> createState() => _DigerState();
}

class _DigerState extends State<Diger> {

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("YAŞAM TAKİP (Diğer Sayfa) => deactivate() çalıştı!");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("YAŞAM TAKİP (Diğer Sayfa) => dispose() çalıştı!");
  }

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
