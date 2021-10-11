import 'package:flutter/material.dart';

class KYCPage extends StatefulWidget {
  const KYCPage({Key key}) : super(key: key);

  @override
  _KYCPageState createState() => _KYCPageState();
}

class _KYCPageState extends State<KYCPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            'Profile',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Name',
                          hintText: 'Enter Your Name',
                          hintStyle: TextStyle(
                              fontSize: 20.0, color: Colors.white),
                          labelStyle: TextStyle(
                              fontSize: 20.0, color: Colors.grey),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(height: 1, color: Colors.yellow,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Mobile',
                          hintText: 'Enter your mobile number',
                          hintStyle: TextStyle(
                              fontSize: 20.0, color: Colors.white),
                          labelStyle: TextStyle(
                              fontSize: 20.0, color: Colors.grey),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(height: 1, color: Colors.yellow,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              fontSize: 20.0, color: Colors.grey),
                          hintText: 'Enter email address',
                          hintStyle: TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(height: 1, color: Colors.yellow,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Bank',
                          hintText: 'Enter bank name',
                          hintStyle: TextStyle(
                              fontSize: 20.0, color: Colors.white),
                          labelStyle: TextStyle(
                              fontSize: 20.0, color: Colors.grey),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(height: 1, color: Colors.yellow,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'IFSC',
                          hintText: 'Enter IFSC number',
                          hintStyle: TextStyle(
                              fontSize: 20.0, color: Colors.white),
                          labelStyle: TextStyle(
                              fontSize: 20.0, color: Colors.grey),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(height: 1, color: Colors.yellow,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'PAN',
                          hintText: 'Enter PAN',
                          hintStyle: TextStyle(
                              fontSize: 20.0, color: Colors.white),
                          labelStyle: TextStyle(
                              fontSize: 20.0, color: Colors.grey),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(height: 1, color: Colors.yellow,),
                  ],
                ),
              ),
          ],)
    );
  }}