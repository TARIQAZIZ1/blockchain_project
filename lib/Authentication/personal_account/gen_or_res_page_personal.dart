import 'package:blockchain_project/shared_screens/Functionalities/all_functionalities.dart';
import 'package:blockchain_project/shared_screens/auth_shared/account_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetOrResPer extends StatefulWidget {
  const GetOrResPer({Key key}) : super(key: key);

  @override
  _GetOrResPerState createState() => _GetOrResPerState();
}

class _GetOrResPerState extends State<GetOrResPer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 30),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: ExactAssetImage('assets/image3.webp'),
                      fit: BoxFit.fill
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('purple',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(' Social',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )],
            ),
            Text(
              'Wallet',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                child: Text(
                  'Generate New Wallet',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(290,40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  primary: Colors.yellow,
                ),
                onPressed: () {
                  To_personal_signup(context);
                }
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Text(
                'Restore Wallet',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(290,40),
                primary: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: (){
              },
            )

          ]),
    );;
  }
}

