import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:serhatsaitpekediz/login/welcomePage.dart';

//TODO: bazı sayfalarda da kullanılan aynı kodların açıklamalarını her sayfaya eklemedim hocam. Bilginiz olsun :)
//TODO: Splash ekranı kodları buradadır
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //TODO: emülatörde debug yazısını kaldırmak için eklendi
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  //TODO: styleGoogle adında bir değişkene yazı stilleri atanarak bir çok yerde kullanılan stilleri buradan kontrol edip
  //TODO: tek bir yerden değiştirip hepsinde değişmesini sağlıyoruz
  //TODO: böylelikle kod kısalığını da sağlamış oluyoruz
  final styleGoogle = GoogleFonts.nunito(
    textStyle: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w700,
        letterSpacing: 1,
        fontStyle: FontStyle.italic,
        height: 1.5,
        color: Colors.black),
  );

  //TODO: burada splash ekranında kullanılmak üzere flutter spinkit modülünden yararlanılmıştır
  SpinKitFadingCircle spinkit;

  @override
  void initState() {
    //TODO: SpinKitFadingCircle splash ekranında istediğimiz animasyon içeriğini buradan editliyoruz
    spinkit = SpinKitFadingCircle(
      itemBuilder: (BuildContext context, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff2d9a59), Color(0xff4e8a29)])),
        );
      },
    );

    Future.delayed(const Duration(seconds: 4), () async {
      Navigator.push(context,
          //TODO: 4 saniyeden sonra Welcome Page sayfasına yönlendirme yapılıyor
          new MaterialPageRoute(builder: (context) => new WelcomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: Splash ekranı içeriğini buradan ayarlıyoruz
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            spinkit,
            SizedBox(
              height: 25,
            ),
            //TODO: Splash ekranı yazısını değiştirme alanı
            Text(
              "BLOGCU",
              style: styleGoogle,
            ),
          ],
        ),
      ),
    );
  }
}
