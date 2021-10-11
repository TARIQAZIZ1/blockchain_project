import 'package:flutter/material.dart';

class trendsPage extends StatefulWidget {
  const trendsPage({Key key}) : super(key: key);

  @override
  _trendsPageState createState() => _trendsPageState();
}

class _trendsPageState extends State<trendsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Trends Page',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        children: [
          Center(child: Text('Trends page'))
        ],
      ),
    );
  }
}
