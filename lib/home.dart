import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:serhatsaitpekediz/about.dart';
import 'package:serhatsaitpekediz/detail/calculator.dart';
import 'package:serhatsaitpekediz/detail/flutter-vs-rn.dart';
import 'package:serhatsaitpekediz/detail/github.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final styleGoogle = GoogleFonts.nunito(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 1,
          fontStyle: FontStyle.italic,
          height: 1.5),
    );
    final screenSize = MediaQuery.of(context).size;
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
      appBar: new AppBar(
        elevation: 0.1,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff2d9a59), Color(0xff4e8a29)])),
        ),
        title: Text('Serhat Sait'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
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

            //body

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),

            InkWell(
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
                        const SizedBox(height: 50),
                        GestureDetector(
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
                                width: screenSize.width /
                                    (2 /
                                        (screenSize.height / screenSize.width)),
                                decoration: commonDecoration,
                                child: Row(
                                  children: <Widget>[
                                    Container(
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
                        const SizedBox(height: 50),
                        GestureDetector(
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
                                width: screenSize.width /
                                    (2 /
                                        (screenSize.height / screenSize.width)),
                                decoration:commonDecoration,
                                child: Row(
                                  children: <Widget>[
                                    Container(
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
                        const SizedBox(height: 100),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Calc(),
                              ),
                            );
                          },
                          child: Text('lorem'),
                        ),
                        const SizedBox(height: 100),
                        Container(
                          child: Text('lorem'),
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
