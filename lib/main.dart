import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PageViewDemo(),
    );
  }
}

class PageViewDemo extends StatefulWidget {
  PageViewDemo({Key key}) : super(key: key);

  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {

  PageController _controller = PageController(
      initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
       controller: _controller,
       scrollDirection: Axis.vertical,
       children: [
        MyPage1Widget(),
        MyPage2Widget(),
        MyPage3Widget(),
       ],
    );
  }
 
}

class MyPage1Widget extends StatelessWidget {
  const MyPage1Widget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            MyBox(darkGreen, height: 50),
          ],
        ),
        MyBox(darkGreen, text: 'PageView 1'),
        Row(
          children: [
            MyBox(mediumGreen, height: 200),
            MyBox(lightGreen, height: 200),
          ],
        ),
      ],
    );
  }
}
class MyPage2Widget extends StatelessWidget {
  const MyPage2Widget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            MyBox(darkBlue, height: 50),
          ],
        ),
        MyBox(darkBlue, text: 'PageView 2'),
        Row(
          children: [
            MyBox(mediumBlue, height: 200),
            MyBox(lightBlue, height: 200),
          ],
        ),
      ],
    );
  }
}
class MyPage3Widget extends StatelessWidget {
  const MyPage3Widget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            MyBox(darkRed, height: 50),
          ],
        ),
        MyBox(darkRed, text: 'PageView 3'),
        Row(
          children: [
            MyBox(mediumRed, height: 200),
            MyBox(lightRed, height: 200),
          ],
        ),
      ],
    );
  }
}

const lightBlue = Color(0xff00bbff);
const mediumBlue = Color(0xff00a2fc);
const darkBlue = Color(0xff0075c9);

final lightGreen = Colors.green.shade300;
final mediumGreen = Colors.green.shade600;
final darkGreen = Colors.green.shade900;

final lightRed = Colors.red.shade300;
final mediumRed = Colors.red.shade600;
final darkRed = Colors.red.shade900;

class MyBox extends StatelessWidget {
  final Color color;
  final double height;
  final String text;

  MyBox(this.color, {this.height, this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        color: color,
        height: (height == null) ? 150 : height,
        child: (text == null)
            ? null
            : Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}


