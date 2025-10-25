import 'package:android_flutter_working_structure/pages/diger.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

/// Yaşam döngüsü için "with WidgetsBindingObserver" ekledik.
class _AnasayfaState extends State<Anasayfa> with WidgetsBindingObserver{

  @override
  void initState() {
    print("YAŞAM TAKİP => initState() çalıştı!");
    WidgetsBinding.instance.addObserver(this); /// Yaşam döngüsü için yazdık.
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this); /// Yaşam döngüsü için yazdık.
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if(state == AppLifecycleState.inactive)
    {
      print("YAŞAM TAKİP => inactive() çalıştı!");
    }
    if(state == AppLifecycleState.paused)
    {
      print("YAŞAM TAKİP => paused() çalıştı!");
    }
    if(state == AppLifecycleState.resumed)
    {
      print("YAŞAM TAKİP => resumed() çalıştı!");
    }
    if(state == AppLifecycleState.detached)
    {
      print("YAŞAM TAKİP => detached() çalıştı!");
    }
  }

  @override
  Widget build(BuildContext context) {
    print("YAŞAM TAKİP => build() çalıştı!");
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Diger()));
                },
                child: Text("Diğer Sayfaya geç")
            ),
          ],
        ),
      ),
    );
  }
}
