import 'package:android_flutter_working_structure/pages/sayfaA.dart';
import 'package:flutter/material.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa B"),
        backgroundColor: Colors.deepOrange,
        /// appbardaki geridönüş tuşu
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            print("Appbar geri tuşu tıklandı");
            Navigator.of(context).popUntil((route)=>route.isFirst);
          },
        ),
        ///
      ),
      body:
      /// alt taraftai geridönüş tuşu
      PopScope(
        canPop: false, ///Kendi kodumuzu eklemek için bunu yazdık
        onPopInvokedWithResult: (bool didPop, Object? result){
          print("Navigation'daki geri tuşu tıklandı");
          Navigator.of(context).popUntil((route)=>route.isFirst);
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sayfa B'ya hoşgeldiniz"),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context); /// Geldiği sayfaya döner.
                },
                child: Text("Geldiğin sayfaya Dön"),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.pink,
                ),
              ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SayfaA()));
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
      ),
    );
  }
}
