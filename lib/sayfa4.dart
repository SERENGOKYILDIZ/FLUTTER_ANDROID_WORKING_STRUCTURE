import 'package:flutter/material.dart';

class Sayfa4 extends StatefulWidget {
  const Sayfa4({super.key});

  @override
  State<Sayfa4> createState() => _Sayfa4State();
}

class _Sayfa4State extends State<Sayfa4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Page of StatefulWidget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  setState(() {

                  });
                },
                child: Text("Değiştir")
            ),
            Text("Page 4"),
          ],
        ),
      ),
    );
  }
}
