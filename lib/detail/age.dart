import 'package:flutter/material.dart';

class Age extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AgeState();
}

class AgeState extends State<Age> with SingleTickerProviderStateMixin {
  double age = 0.0;
  var selectedYear;

  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    animationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 1500));
    animation = animationController;

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void _showPicker() {
    showDatePicker(
            context: context,
            firstDate: new DateTime(1900),
            initialDate: new DateTime(2020),
            lastDate: new DateTime.now())
        .then((DateTime dt) {
      setState(() {
        selectedYear = dt.year;
        calculateAge();
      });
    });
  }

  void calculateAge() {
    setState(() {
      age = (2018 - selectedYear).toDouble();
      animation = new Tween<double>(begin: animation.value, end: age).animate(
          new CurvedAnimation(
              curve: Curves.fastOutSlowIn, parent: animationController));
      animation.addListener(() {
        setState(() {});
      });
    });
    animationController.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Yaşını Hesapla"),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new OutlineButton(
                child: new Text(selectedYear != null
                    ? selectedYear.toString()
                    : "Doğum tarihinizi seçin"),
                borderSide: new BorderSide(color: Colors.black, width: 3.0),
                color: Colors.white,
                onPressed: _showPicker,
              ),
              new Padding(
                padding: const EdgeInsets.all(20.0),
              ),
              new Text("Yaşınız ${animation.value.toStringAsFixed(0)}",
                  style: new TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic))
            ],
          ),
        ));
  }
}
