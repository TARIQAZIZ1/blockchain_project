import 'package:blockchain_project/dashboard/personal_dashboard/personal_dashboard.dart';
import 'package:blockchain_project/shared_screens/Functionalities/all_functionalities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class perSignupForm extends StatefulWidget {
  const perSignupForm({Key key}) : super(key: key);

  @override
  _perSignupFormState createState() => _perSignupFormState();
}

class _perSignupFormState extends State<perSignupForm> {
  String _name;
  String _Interest;
  String _verify;
  final GlobalKey<FormState>_formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
            'Personal Account',
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
                  'Your Interest',
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
                    return 'Interest is required';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Verify User',
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
                        To_Page(context,personal_dashboard());
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
