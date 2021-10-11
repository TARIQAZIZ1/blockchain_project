import 'package:blockchain_project/dashboard/personal_dashboard/personal_wallet.dart';
import 'package:blockchain_project/shared_screens/Functionalities/all_functionalities.dart';
import 'package:blockchain_project/shared_screens/auth_shared/signOut.dart';
import 'package:blockchain_project/shared_screens/dashboard_shared/browser.dart';
import 'package:blockchain_project/shared_screens/dashboard_shared/exchange_or_swap.dart';
import 'package:blockchain_project/shared_screens/dashboard_shared/help.dart';
import 'package:blockchain_project/shared_screens/dashboard_shared/timeline.dart';
import 'package:flutter/material.dart';

class personal_dashboard extends StatefulWidget {
  const personal_dashboard({Key key}) : super(key: key);

  @override
  _personal_dashboardState createState() => _personal_dashboardState();
}

class _personal_dashboardState extends State<personal_dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.purple,
        ),
        child: Menu_drawer(context),
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Personal Dashboard',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
        child: Column(
          children: [
            Image_fun(),
            Expanded(
            child: ListView(children: [
              Divider(
                height: 2,
                color: Colors.yellow,
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 25,
                  color: Colors.yellow,
                ),
                title: Text(
                  'TimeLine',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  To_Page(context, timeline());
                },),
              ListTile(
                leading: Icon(
                  Icons.person,
                  size: 25,
                  color: Colors.yellow,
                ),
                title: Text(
                  'Wallet',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  To_Page(context,per_wallet());
                },
              ),
              Divider(
                height: 2,
                color: Colors.yellow,
              ),
              ListTile(
                leading: Icon(
                  Icons.web,
                  size: 25,
                  color: Colors.yellow,
                ),
                title: Text(
                  'Browser',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  To_Page(context, browser());
                },
              ),
              Divider(
                height: 2,
                color: Colors.yellow,
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 25,
                  color: Colors.yellow,
                ),
                title: Text(
                  'Exchange/Swap Service',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  To_Page(context, exchorswap());
                },
              ),
              Divider(
                height: 2,
                color: Colors.yellow,
              ),
              ListTile(
                leading: Icon(
                  Icons.help,
                  size: 25,
                  color: Colors.yellow,
                ),
                title: Text(
                  'Help',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  To_Page(context, Help());
                },
              ),
              Divider(
                height: 2,
                color: Colors.yellow,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  size: 25,
                  color: Colors.yellow,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  To_Page(context, signOut());
                },
              )
            ])),
          ],
        ),
      ),
    );
  }
}
