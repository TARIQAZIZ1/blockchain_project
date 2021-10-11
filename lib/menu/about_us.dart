import 'package:flutter/material.dart';

class aboutpage extends StatefulWidget {
  const aboutpage({Key key}) : super(key: key);

  @override
  _aboutpageState createState() => _aboutpageState();
}

class _aboutpageState extends State<aboutpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Page',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        children: [
          Center(child: Text('About page'))
        ],
      ),
    );
  }
}
