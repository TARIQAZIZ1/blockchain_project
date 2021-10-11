import 'package:flutter/material.dart';

class noticationPage extends StatefulWidget {
  const noticationPage({Key key}) : super(key: key);

  @override
  _noticationPageState createState() => _noticationPageState();
}

class _noticationPageState extends State<noticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        children: [
          Center(child: Text('Notifications page'))
        ],
      ),
    );;
  }
}
