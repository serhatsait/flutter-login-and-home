import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//TODO: bazı sayfalarda da kullanılan aynı kodların açıklamalarını her sayfaya eklemedim hocam. Bilginiz olsun :)
//TODO: yaş hesaplama sayfasının kodları burada bulunuyor
class Calc extends StatefulWidget {
  @override
  State createState() => new CalcState();
}

//TODO: sayısal hesapları yapmak için gereken kodların başlangıcı
class CalcState extends State<Calc> {
  var num1 = 0, num2 = 0, sum = 0;

  //TODO: default olarak sayfaya ilk girildiğinde yazan değerlerin ayarlandığı kısım
  final TextEditingController t1 = new TextEditingController(text: "2020");
  final TextEditingController t2 = new TextEditingController(text: "1990");

  //TODO: dakika hesabını bulduğumuz kısım
  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 - num2) * 365 * 24 * 60;
    });
  }

  //TODO: temizle fonksiyonumuz
  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  //TODO: styleGoogle adında bir değişkene yazı stilleri atanarak bir çok yerde kullanılan stilleri buradan kontrol edip
  //TODO: tek bir yerden değiştirip hepsinde değişmesini sağlıyoruz
  //TODO: böylelikle kod kısalığını da sağlamış oluyoruz
  final styleGoogle = GoogleFonts.nunito(
    textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        letterSpacing: 1,
        fontStyle: FontStyle.italic,
        height: 1.5,
        color: Colors.black),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Hesaplayıcı"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Seçtiğiniz yıllar arasında ki geçen dakika : $sum",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2d9a59)),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Başlangıç Yılını Giriniz"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Bitiş Yılını Giriniz"),
              controller: t2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    "Hesapla",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color(0xff2d9a59),
                  onPressed: doMul,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    "Temizle",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color(0xff2d9a59),
                  onPressed: doClear,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Text(
              ' Burada seçtiğimiz iki yıl arasında'
              ' kaç dakika zaman geçtiğini hesap edebilen'
              ' bir uygulamamız bulunmaktadır.',
              style: styleGoogle,
            )
          ],
        ),
      ),
    );
  }
}
