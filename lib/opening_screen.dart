import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:blockchain_project/shared_screens/auth_shared/account_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class splash_screen extends StatelessWidget {
  const splash_screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splashIconSize: 200,
        splash: Center(
              child: Column(children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: ExactAssetImage('assets/image3.webp'),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                ),
                //Padding(padding: EdgeInsets.only(top: 15)),
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
              ])),



        nextScreen: account_type(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.purple,
        duration: 3000,
      ),
    );
  }
}

