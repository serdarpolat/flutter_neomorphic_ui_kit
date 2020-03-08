import 'package:flutter/material.dart';
import 'package:flutter_neomorphic_ui_kit/buttons.dart';
import 'package:flutter_neomorphic_ui_kit/inputs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xffF2F3F7),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color get textColor => Color(0xff282D3F);
  Color get shadowDown => Color(0xffDFE6F0);
  Color get shadowUp => Color(0xffffffff);
  double get w => MediaQuery.of(context).size.width;
  double get h => MediaQuery.of(context).size.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          "Neomorphic UI Kit",
          style: TextStyle(color: textColor),
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Color(0xffF2F3F7),
              padding: EdgeInsets.all(20),
              width: w,
              child: Column(
                children: <Widget>[
                  GradientButton(
                    width: w - 40,
                    height: 60,
                    child: Text(
                      "Button",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.3,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  FlatColorButton(
                    width: w - 40,
                    height: 60,
                    child: Text(
                      "Button",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.3,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  FlatColorPressed(
                    width: w - 40,
                    height: 60,
                    child: Text(
                      "Button Pressd",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      GradientButton(
                        width: 60,
                        height: 60,
                        child: Icon(
                          Icons.hourglass_empty,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      GradientButton(
                        width: 60,
                        height: 60,
                        borderRadius: 30,
                        child: Icon(
                          Icons.info_outline,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      FlatColorButton(
                        width: 60,
                        height: 60,
                        child: Icon(
                          Icons.insert_emoticon,
                          size: 30,
                          color: textColor,
                        ),
                      ),
                      FlatColorButton(
                        width: 60,
                        height: 60,
                        borderRadius: 30,
                        child: Icon(
                          Icons.keyboard_voice,
                          size: 30,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      GradientButton(
                        width: 60,
                        height: 60,
                        child: Icon(
                          Icons.hourglass_empty,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      GradientButton(
                        width: 60,
                        height: 60,
                        borderRadius: 30,
                        child: Icon(
                          Icons.info_outline,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      FlatColorPressed(
                        width: 60,
                        height: 60,
                        child: Icon(
                          Icons.insert_emoticon,
                          size: 30,
                          color: textColor,
                        ),
                      ),
                      FlatColorPressed(
                        width: 60,
                        height: 60,
                        borderRadius: 30,
                        child: Icon(
                          Icons.keyboard_voice,
                          size: 30,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: w - 40,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: <Widget>[
                  RoundedInput(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
