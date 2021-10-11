import 'package:flutter/material.dart';
class signOut extends StatefulWidget {
  const signOut({Key key}) : super(key: key);

  @override
  _signOutState createState() => _signOutState();
}

class _signOutState extends State<signOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignOut',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }
}
