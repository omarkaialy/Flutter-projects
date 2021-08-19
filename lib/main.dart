import 'package:flutter/material.dart';
import 'package:quizzy/answersbank.dart';
import 'Quizbank.dart';

List<Widget> wid = [];

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  int i = 0;
  Animation<double> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    super.initState();
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(
            child: Text('quizzy'),
          ),
        ),
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 250,
                  ),
                  Text(
                    Quizbank.question[i].questiontext,
                    style: TextStyle(color: Colors.tealAccent, fontSize: 50.0),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'true',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'false',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    children: wid,
                  ),
                ],
              ),
            ),
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
