import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_chat_app/repositery/firebase_repositery.dart';

class SignupViewModel{

  final repo= FirebaseRepository();
  User? loggedInUser;
  final  _auth = FirebaseAuth.instance;

  Future<void> signup(BuildContext context, String email, String pass) async{

    repo.signup(context, email, pass);
  }
  Future<void> login(BuildContext context, String email, String pass) async{

    repo.signup(context, email, pass);
  }



  void getCurrentUser() async{
    try{
      final user= await _auth.currentUser;
      if(user!=null){
        loggedInUser=user;
      }
    }
    catch(e){
      Exception(e);
    }
  }
}