//import 'dart:js';

import 'package:blockchain_project/Authentication/bussiness_account/gen_or_res_page_bussiness.dart';
import 'package:blockchain_project/Authentication/bussiness_account/signup_bussiness.dart';
import 'package:blockchain_project/Authentication/personal_account/gen_or_res_page_personal.dart';
import 'package:blockchain_project/Authentication/personal_account/signup_personal.dart';
import 'package:blockchain_project/dashboard/bussiness_dashboard/bussiness_dashboard.dart';
import 'package:blockchain_project/dashboard/personal_dashboard/personal_dashboard.dart';
import 'package:blockchain_project/menu/KYC.dart';
import 'package:blockchain_project/menu/about_us.dart';
import 'package:blockchain_project/menu/feedback.dart';
import 'package:blockchain_project/menu/home.dart';
import 'package:blockchain_project/menu/notications.dart';
import 'package:blockchain_project/menu/profile.dart';
import 'package:blockchain_project/menu/settings.dart';
import 'package:blockchain_project/menu/trends.dart';
import 'package:blockchain_project/shared_screens/auth_shared/account_type.dart';
import 'package:blockchain_project/shared_screens/auth_shared/signOut.dart';
import 'package:blockchain_project/shared_screens/dashboard_shared/browser.dart';
import 'package:blockchain_project/shared_screens/dashboard_shared/exchange_or_swap.dart';
import 'package:blockchain_project/shared_screens/dashboard_shared/help.dart';
import 'package:blockchain_project/shared_screens/dashboard_shared/timeline.dart';
import 'package:flutter/material.dart';

Widget To_Page(context,Widget page){
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context)=>page
      ));
}

Widget Image_fun(){
  return Container(
    margin: EdgeInsets.only(top: 10,bottom: 5),
    width: 100,
    height: 100,
    alignment: Alignment.center,
    decoration: new BoxDecoration(
      image: DecorationImage(
          image: ExactAssetImage('assets/image4.JPG'),
          fit: BoxFit.fill),
      color: Colors.white,
      borderRadius: new BorderRadius.all(new Radius.circular(120)),
      border: new Border.all(
        color: Colors.blue,
        width: 3.0,
      ),
    ),
  );
}

Widget Menu_drawer(context){
  return Drawer(
    child: ListView(
      //padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.purple,
          ),
          child: Text(
            'Menu',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),
        ),
        gradientLine(),
        ListTile(
          title: Text(
            'Home',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          onTap: () {
            To_Page(context,Homepage());
          },
        ),
        gradientLine(),
        ListTile(
            title: Text(
              'Trends',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            onTap: () {
              To_Page(context, trendsPage());
            },
          ),
        gradientLine(),
        ListTile(
            title: Text(
              'KYC',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            onTap: () {
              To_Page(context,KYCPage());
            },
          ),
        gradientLine(),
        ListTile(
            title: Text(
              'Profile',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            onTap: () {
              To_Page(context,profilePage());
            },
          ),
        gradientLine(),
          ListTile(
            title: Text(
              'Settings',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            onTap: () {
              To_Page(context,settingpage());
            },
          ),
        gradientLine(),
        ListTile(
            title: Text(
              'About Us',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            onTap: () {
              To_Page(context,aboutpage());
            },
          ),
        gradientLine(),
        ListTile(
            title: Text(
              'FeedBack',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            onTap: () {
              To_Page(context,feedbackpage());
            },
          ),
        gradientLine(),
        ListTile(
            title: Text(
              'SingOut',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            onTap: () {
              To_Page(context, signOut());
            },
          ),
      ],
    ),
  );
}

Widget gradientLine(){
  return Container(
    height: 2,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.center,
            colors: [
              Colors.yellow,
              Colors.purple,
            ]
        )
    ),

  );
}

Widget menu_page(String text){
  Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold
      ),
    );
}

TextStyle textStyle(){
  TextStyle(
    color: Colors.white,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
}