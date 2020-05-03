import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class About extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AboutState();
}

class AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff2d9a59), Color(0xff4e8a29)])),
        ),
        title: Text(
          'Hakkımızda',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
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
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          width: 190.0,
                          height: 190.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/serhat.jpg')))),
                      Divider(),
                      Center(
                        child: Text(
                          'Herkese merhaba,'
                          ' Buraya uzun uzadıya yazı yazmak isterdim,'
                          ' ama maalesef bu bir prototip uygulama, ve gelistirilme asamasındadır.',
                          style: TextStyle(
                            fontFamily: 'CorporateACyr-Regular',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
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
