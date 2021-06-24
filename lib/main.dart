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
                SvgPicture.asset('assets/images/logo.svg',
                    width: 32, height: 32),
                Text("Wave")
              ],
            ),
            toolbarHeight: 68,
          ),
          body: Column()),
    );
  }
}
