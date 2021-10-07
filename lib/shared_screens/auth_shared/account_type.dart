import 'package:blockchain_project/shared_screens/Functionalities/all_functionalities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class account_type extends StatefulWidget {
  const account_type({Key key}) : super(key: key);

  @override
  _account_typeState createState() => _account_typeState();
}

class _account_typeState extends State<account_type> {
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
            Text(
                'Account type:',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Text(
                'Personal',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(230,40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                primary: Colors.yellow,
              ),  
                onPressed: (){
                  To_gen_or_res_per(context);
                },
            ),
            SizedBox(
              height: 50,
            ),
             ElevatedButton(
                child: Text(
                  'Bussiness',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(230,40),
                primary: Colors.yellow,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: (){
                  To_gen_or_res_buss(context);
              },
            )

      ]),
      );
  }
}