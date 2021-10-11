import 'package:flutter/material.dart';

class settingpage extends StatefulWidget {
  const settingpage({Key key}) : super(key: key);

  @override
  _settingpageState createState() => _settingpageState();
}

class _settingpageState extends State<settingpage> {
  bool isSwitched_id = false;
  bool isSwitched_PIN = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            'Settings',
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
                    child: ListTile(
                      title: Text(
                        'PIN lock',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                          'Use PIN to login to your account',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                        trailing: Switch(
                      value: isSwitched_PIN,
                      onChanged: (value){
                        setState(() {
                          isSwitched_PIN=value;
                          print(isSwitched_PIN);});},
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                      ),
                    ),
                  Container(height: 1, color: Colors.yellow,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 15),
                    child: ListTile(
                      title: Text(
                        'Touch ID',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        'Enable touch ID for all transactions',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Switch(
                        value: isSwitched_id,
                        onChanged: (value){
                          setState(() {
                        isSwitched_id=value;
                        print(isSwitched_id);});},
                        activeTrackColor: Colors.lightGreenAccent,
                        activeColor: Colors.green,
                       ),),
                    ),
                  Container(height: 1, color: Colors.yellow,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 15),
                    child: ListTile(
                      title: Text(
                        'Currency',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        'Choose currency to display',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Container(height: 1, color: Colors.yellow,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 15),
                    child: ListTile(
                      title: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        'Change your password',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Container(height: 1, color: Colors.yellow,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 15),
                    child: ListTile(
                      title: Text(
                        'Deactivate Account',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        'Temporarily deactivate you crpzo account',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Container(height: 1, color: Colors.yellow,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 15),
                    child: ListTile(
                      title: Text(
                        'Delete Account',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                        ),
                      ),
                      subtitle: Text(
                        'Close all your account data',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Container(height: 1, color: Colors.yellow,),
                ],
              ),
            ),
          ],)
    );
  }
}
