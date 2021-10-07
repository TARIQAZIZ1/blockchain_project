import 'package:blockchain_project/Authentication/bussiness_account/gen_or_res_page_bussiness.dart';
import 'package:blockchain_project/Authentication/bussiness_account/signup_bussiness.dart';
import 'package:blockchain_project/Authentication/personal_account/gen_or_res_page_personal.dart';
import 'package:blockchain_project/Authentication/personal_account/signup_personal.dart';
import 'package:flutter/material.dart';
void To_gen_or_res_buss(context){
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context)=>GenOrResBuss()
      ));
}
void To_gen_or_res_per(context){
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context)=>GetOrResPer()
      ));
}
void To_bussiness_signup(context){
  Navigator.push(
      context,
      MaterialPageRoute(builder:
          (context)=>bussSignupForm()));
}
void To_personal_signup(context){
  Navigator.push(
      context,
      MaterialPageRoute(builder:
          (context)=>perSignupForm()));
}