import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(InitialPage());
}

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF000000),
            title: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/logo.svg',
                  width: 32,
                  height: 32,
                ),
                Text(
                  "Wave",
                  style: TextStyle(fontFamily: 'Gotham'),
                )
              ],
            ),
            toolbarHeight: 68,
          ),
          body: Column(
            children: [
              SizedBox(
                height: 528,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xFFF8A86E), Color(0xFF3B49C2)])),
                ),
              )
            ],
          )),
    );
  }
}
