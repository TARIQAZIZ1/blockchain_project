import 'package:blockchain_project/dashboard/bussiness_dashboard/bussiness_dashboard.dart';
import 'package:blockchain_project/shared_screens/Functionalities/all_functionalities.dart';
import 'package:flutter/material.dart';

class bussSignupForm extends StatefulWidget {
  const bussSignupForm({Key key}) : super(key: key);

  @override
  _bussSignupFormState createState() => _bussSignupFormState();
}

class _bussSignupFormState extends State<bussSignupForm> {
  String _name;
  String _createbussinessname;
  String _verifyBussiness;
  final GlobalKey<FormState>_formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Bussiness Account',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,

      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0,right: 50.0),
          child: Column(
            children: <Widget>[
              Center(
                  child: Image_fun(),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Create Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: new EdgeInsets.symmetric(vertical: -8.0,horizontal: 25),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Name is required';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Create Bussiness Username',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: new EdgeInsets.symmetric(vertical: -8.0,horizontal: 25),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bussinesss name is required';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Verify Bussiness',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: new EdgeInsets.symmetric(vertical: -8.0,horizontal: 25),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'verification required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100,40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      primary: Colors.yellow,
                    ),
                    onPressed: () {
                      if (_formkey.currentState.validate()) {
                       To_Page(context,bussiness_dashboard());
                      }
                    },
                  ),
                ],
              ),

            ],
          ),
        ),),
    );
  }
}
