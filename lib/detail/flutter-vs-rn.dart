import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Detail1State();
}

class Detail1State extends State<Detail1> {
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
          'Flutter vs React Native',
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
      body: SingleChildScrollView(
        child: Builder(
          builder: (context) => GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          width: 190.0,
                          height: 190.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(
                                      'assets/images/flutter-vs-react-native.png')))),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          'React Native by Facebook and Flutter by Google – two hot cross-platform app development technologies'
                          ' creating a buzz. In this post, we will compare both of them in detail from a developer’s perspective. '
                          'Due to the growing popularity of mobile apps, almost every company needs a mobile app or apps to remain '
                          'competitive in the market. And what is more,'
                          ' companies are looking for an option to build mobile apps, especially for iOS and Android, with faster speed '
                          'and less resources. Obviously, Apple and Google have provided native tools and technologies to build apps. '
                          'iOS app developers can build apps using Xcode and Swift, while Android developers use Android Studio and '
                          'Kotlin/Java. However, this requires engineers to learn two completely different sets of technologies. '
                          'As a result, companies have started to adopt cross-platform solutions over the native solutions to '
                          'build apps for both iOS and Android faster using a single language.',
                          style: TextStyle(
                              fontFamily: 'CorporateACyr-Regular',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                              fontStyle: FontStyle.italic,
                              height: 1.5),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          'What’s Flutter and React Native',
                          style: TextStyle(
                              fontFamily: 'CorporateACyr-Regular',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1,
                              fontStyle: FontStyle.italic,
                              height: 1.5,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          'React Native is a project started by Facebook internally that they open-sourced in 2015. '
                          'On the other side is Flutter, a project started by Google which they have been heavily '
                          'promoting since I/O 2017. Both of these technologies help app developers build cross-platform '
                          'apps faster by using a single programming language. React Native is already a mature tool and '
                          'has a huge community, but Flutter also started seeing huge adoption rates since 2017. In this post, '
                          'we will compare each of them using ten criteria: Programming language Technical architecture '
                          'Installation Setup and project configuration UI components and development API Developer productivity '
                          'Community support Testing support Build & release automation support DevOps and CI/CD support Now that '
                          'we have defined all our criteria, let’s start exploring each of them in detail.',
                          style: TextStyle(
                              fontFamily: 'CorporateACyr-Regular',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                              fontStyle: FontStyle.italic,
                              height: 1.5,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 50,
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
