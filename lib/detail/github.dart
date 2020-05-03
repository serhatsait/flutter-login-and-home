import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Github extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GithubState();
}

class GithubState extends State<Github> {
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
          'GitHub',
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
                                      'assets/images/github-team-free-497.jpeg')))),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                            'GitHub CEO\'su Nat Friedman, yayınladığı bir blog yazısıyla '
                            'artık takımlar için de GitHub\'ın ücretsiz olduğunu duyurdu.',
                            style: styleGoogle),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                            '2018 yılında Microsoft tarafından satın alınan dünyanın en popüler '
                            'kod deposu GitHub\'ın geçtiğimiz ay iOS ve Android platformları için '
                            'uygulamalarını yayınladığını sizlerle paylaşmıştık.',
                            style: styleGoogle),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                            'Bugün GitHub CEO\'su Nat Friedman, yayınladığı bir blog yazısıyla '
                            'artık takımlar için de GitHub\'ın ücretsiz olduğunu duyurdu.',
                            style: styleGoogle),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                            'Yazılım geliştiren takımlar daha öncesinde GitHub kullanmak '
                            'istediğinde ücretli paketlerden birine abone olmak zorundaydı. '
                            'Bu durum da yazılım geliştiren ekiplerin GitHub alternatiflerine '
                            'yönelmesine sebep oluyordu.Friedman, blog yazısında ücretin yazılım '
                            'geliştiren takımların GitHub kullanması için bariyer olmaması gerektiğini belirtmiş.',
                            style: styleGoogle),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                            'Bu gelişmeyle beraber yazılım geliştiren takımlar da '
                            'artık ücretsiz bir şekilde CI/CD, proje yönetimi, '
                            'kod inceleme gibi özellikleri ücretsiz kullanabilecek.',
                            style: styleGoogle),
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
