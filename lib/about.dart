import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//TODO: bazı sayfalarda da kullanılan aynı kodların açıklamalarını her sayfaya eklemedim hocam. Bilginiz olsun :)
//TODO: Hakkımızda sayfasının kodları buradadır
class About extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AboutState();
}

class AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: Burada appbar oluşturarak ilgili sayfanın başlığını ve geri butonunu ekliyoruz
      appBar: new AppBar(
        flexibleSpace: Container(
          //TODO: Appbarın arka plan rengini linear gradient olarak belirliyoruz burada
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff2d9a59), Color(0xff4e8a29)])),
        ),
        //TODO: Appbar başlık kısmını ayarladığımız alan
        title: Text(
          'Hakkımızda',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
        //TODO: Appbar geri butonunun ayarlandığı kısım
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFFFFFFFF),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Builder(
          builder: (context) => GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(
                  //TODO: Sağdan ve soldan 20 piksel boşluk bırakıyoruz
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    //TODO: Sayfanın içerisinde ki elemanları ortalıyoruz burada
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        //TODO: Profil resim alanı, yükseklik ve genişliği ayarladıktan sonra decoration ile kutu özelliklerini değiştiriyoruz
                          width: 190.0,
                          height: 190.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/serhat.jpg')))),
                      //TODO: profil resmi ile hakkımızda yazısını ayırmak amaçlı olarak ayraç olarak kullanılmıştır
                      Divider(
                        color: Colors.green,
                        height: 40,
                      ),
                      //TODO: Hakkımızda yazısı alanı, style özelliği ile yazının özelliklerini değiştiriyoruz, font family olarak özel bir font eklenmiştir
                      Center(
                        child: Text(
                          'Herkese merhaba,'
                          ' Buraya uzun uzadıya yazı yazmak isterdim,'
                          ' ama maalesef bu bir prototip uygulama, ve gelistirilme asamasındadır.',
                          style: TextStyle(
                            fontFamily: 'CorporateACyr-Regular',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                              fontStyle: FontStyle.italic,
                              height: 1.5),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
