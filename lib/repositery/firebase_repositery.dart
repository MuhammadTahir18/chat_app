import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app/utils/routes/routes_name.dart';

class FirebaseRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signup(BuildContext context, String email, String pass) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );

      if (userCredential.user != null) {
        Navigator.pushNamed(context, RoutesName.chat);
      }
    } catch (e) {
      // Print or show an error message
      print('Signup Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Signup failed: $e')),
      );
    }
  }
  Future<void> login(BuildContext context, String email, String pass) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );

      if (userCredential.user != null) {
        Navigator.pushNamed(context, RoutesName.chat);
      }
    } catch (e) {
      // Print or show an error message
      print('Login Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login failed: $e')),
      );
    }
  }
}
