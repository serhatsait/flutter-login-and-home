import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:serhatsaitpekediz/about.dart';
import 'package:serhatsaitpekediz/detail/calculator.dart';
import 'package:serhatsaitpekediz/detail/flutter-vs-rn.dart';
import 'package:serhatsaitpekediz/detail/github.dart';
import 'package:serhatsaitpekediz/login/welcomePage.dart';

//TODO: bazı sayfalarda da kullanılan aynı kodların açıklamalarını her sayfaya eklemedim hocam. Bilginiz olsun :)
//TODO: Ana sayfamızın kodları burada bulunmaktadır
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //TODO: styleGoogle adında bir değişkene yazı stilleri atanarak bir çok yerde kullanılan stilleri buradan kontrol edip
    //TODO: tek bir yerden değiştirip hepsinde değişmesini sağlıyoruz
    //TODO: böylelikle kod kısalığını da sağlamış oluyoruz
    final styleGoogle = GoogleFonts.nunito(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 1,
          fontStyle: FontStyle.italic,
          height: 1.5),
    );
    //TODO: ekran boyutunu alıp bir değişkene atıyoruz burada
    final screenSize = MediaQuery.of(context).size;

    //TODO: kullandığımız widgetların özelliklerini ve dekorasyonlarını bir değişkene atayıp kod tekrarından kaçınıyoruz burada
    var _opacity = 1.0;
    var _xOffset = 0.0;
    var _yOffset = 0.0;
    var _blurRadius = 0.0;
    var _spreadRadius = 0.0;

    final commonDecoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff2d9a59), Color(0xff4e8a29)]),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, _opacity),
          offset: Offset(_xOffset, _yOffset),
          blurRadius: _blurRadius,
          spreadRadius: _spreadRadius,
        )
      ],
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    );

    return Scaffold(
      //TODO: Burada appbar oluşturarak ilgili sayfanın başlığını ekliyoruz
      appBar: new AppBar(
          elevation: 0.1,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff2d9a59), Color(0xff4e8a29)])),
          ),
          title: Text('BLOGCU')),
      //TODO: Burada drawer menu(Türkçesi çekmece menü) oluşturarak diğer sayfalara erişimi ve profil bilgilerini ekliyoruz
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //TODO: Drawer menü üst kısmı
            new UserAccountsDrawerHeader(
              accountName: Text('Serhat Sait Pekediz'),
              accountEmail: Text('serhatsaitpekediz@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: Container(
                    width: 190.0,
                    height: 190.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/serhat.jpg')))),
              ),
              decoration: new BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff2d9a59), Color(0xff4e8a29)])),
            ),

            //TODO: drawer menu içerik kısmı başlangıcı

            InkWell(
              //TODO:Giriş yap sayfasına bağlantı veriyoruz
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WelcomePage(),
                  ),
                );
              },
              child: ListTile(
                title: Text('Giriş Yap'),
                leading: Icon(Icons.person),
              ),
            ),

            Divider(),

            InkWell(
              //TODO: Hakkımızda sayfasına bağlantı veriyoruz
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => About(),
                  ),
                );
              },
              child: ListTile(
                title: Text('Hakkımızda'),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      //TODO: Burada anasayfanın içeriğini eklemeye başlıyoruz
      body: SafeArea(
        child: Builder(
          builder: (context) => GestureDetector(
            child: Stack(
              children: <Widget>[
                SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    alignment: Alignment.center,
                    width: screenSize.width /
                        (2 / (screenSize.height / screenSize.width)),
                    constraints: BoxConstraints(maxWidth: 700),
                    child: Column(
                      children: <Widget>[
                        //TODO: 50px lik bir boşluk bırakıyoruz
                        const SizedBox(height: 50),
                        //TODO: ana ekranda ki 1. elementimiz
                        GestureDetector(
                          //TODO: Elementin iç sayfasına bağlantı ekliyoruz
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Detail1(),
                              ),
                            );
                          },
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                //TODO: Elementin kaplayacağı genişliği hesaplıyoruz
                                width: screenSize.width /
                                    (2 /
                                        (screenSize.height / screenSize.width)),
                                decoration: commonDecoration,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      //TODO: Elementin içerisinde resim ekleme bölümü
                                        width: 75.0,
                                        height: 75.0,
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    'assets/images/flutter-vs-react-native.png')))),
                                    Container(
                                      padding: EdgeInsets.only(left: 30),
                                      child: Column(
                                        children: <Widget>[
                                          //TODO: Elementin içerinde başlık ekleme bölümü
                                          RichText(
                                            text: TextSpan(
                                                text:
                                                    'Flutter vs React Native:',
                                                style: styleGoogle),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                                text:
                                                    'A Developer’s Perspective!',
                                                style: TextStyle(
                                                    fontFamily:
                                                        'CorporateACyr-Regular',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 1,
                                                    fontStyle: FontStyle.italic,
                                                    height: 1.5,
                                                    color: Colors.black)),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        //TODO: 50px lik bir boşluk bırakıyoruz
                        const SizedBox(height: 50),
                        GestureDetector(
                          //TODO: Elementin iç sayfasına bağlantı ekliyoruz
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Github(),
                              ),
                            );
                          },
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                //TODO: Elementin kaplayacağı genişliği hesaplıyoruz
                                width: screenSize.width /
                                    (2 /
                                        (screenSize.height / screenSize.width)),
                                decoration: commonDecoration,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      //TODO: Elementin içerisinde resim ekleme bölümü
                                        width: 75.0,
                                        height: 75.0,
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    'assets/images/github-team-free-497.jpeg')))),
                                    Container(
                                      padding: EdgeInsets.only(left: 30),
                                      child: Column(
                                        children: <Widget>[
                                          RichText(
                                            //TODO: Elementin içerinde başlık ekleme bölümü
                                            text: TextSpan(
                                                text: 'GitHub artık takımlar',
                                                style: styleGoogle),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                                text: 'icin de ucretsiz',
                                                style: styleGoogle),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        //TODO: 50px lik bir boşluk bırakıyoruz
                        const SizedBox(height: 50),
                        GestureDetector(
                          //TODO: Elementin iç sayfasına bağlantı ekliyoruz
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Calc(),
                              ),
                            );
                          },
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                //TODO: Elementin kaplayacağı genişliği hesaplıyoruz
                                width: screenSize.width /
                                    (2 /
                                        (screenSize.height / screenSize.width)),
                                decoration: commonDecoration,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      //TODO: Elementin içerisinde resim ekleme bölümü
                                        width: 75.0,
                                        height: 75.0,
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            image: new DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    'assets/images/age-png-5.png')))),
                                    Container(
                                      padding: EdgeInsets.only(left: 30),
                                      child: Column(
                                        children: <Widget>[
                                          RichText(
                                            //TODO: Elementin içerinde başlık ekleme bölümü
                                            text: TextSpan(
                                                text: 'Yaş Hesabı',
                                                style: styleGoogle),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
