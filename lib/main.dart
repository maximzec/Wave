import 'package:flutter/material.dart';

void main() {
  runApp(InitialPage());
}

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  List<Color> colorList = [
    Color(0xFF311B92),
    Color(0xFF4527A0),
    Color(0xFF1E88E5),
    Color(0xFF1976D2)
  ];
  List<Alignment> alignmentList = [
    Alignment.centerLeft,
    Alignment.centerRight,
    Alignment.topCenter,
    Alignment.bottomCenter,
  ];
  int index = 0;
  Color bottomColor = Color(0xFF311B92);
  Color topColor = Color(0xFF5E35B1);
  Alignment begin = Alignment.centerLeft;
  Alignment end = Alignment.centerRight;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Stack(
      children: [
        AnimatedContainer(
          curve: Curves.easeInOutBack,
          duration: Duration(seconds: 4),
          onEnd: () {
            setState(() {
              index = index + 1;
              // animate the color
              bottomColor = colorList[index % colorList.length];
              topColor = colorList[(index + 1) % colorList.length];

              //// animate the alignment
              // begin = alignmentList[index % alignmentList.length];
              // end = alignmentList[(index + 2) % alignmentList.length];
            });
          },
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: begin, end: end, colors: [bottomColor, topColor])),
        ),
      ],
    )));
  }
}
