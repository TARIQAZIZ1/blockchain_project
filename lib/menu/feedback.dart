import 'package:flutter/material.dart';

class feedbackpage extends StatefulWidget {
  const feedbackpage({Key key}) : super(key: key);

  @override
  _feedbackpageState createState() => _feedbackpageState();
}

class _feedbackpageState extends State<feedbackpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FeedBack',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        children: [
          Center(child: Text('FeedBack page'))
        ],
      ),
    );
  }
}
