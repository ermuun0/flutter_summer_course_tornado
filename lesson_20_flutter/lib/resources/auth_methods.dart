import 'dart:ffi';

import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lesson_20_flutter/resources/storage_methods.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required Uint8List? file,
  }) async {
    String result = 'Some error occurred';
    try {
      print('END BN');
      if (email.isNotEmpty || password.isNotEmpty || username.isNotEmpty) {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        print('as');
        print(credential.user!.uid);

        String photoUrl = await StorageMethods().uploadImageStorage('profilePics', file!, false);
        _fireStore.collection('users').doc(credential.user!.uid).set({
          'username': username,
          'uid': credential.user!.uid,
          'email': email,

          'photoUrl' : photoUrl,
          'following': [],
          'followers': []
        });

        result = 'success';
      }
      print('DUUUSLAAA');
    } catch (err) {
      result = err.toString();
    }

    return result;
  }

  Future<String> loginUser(
      {required String email, required String password}) async {
    String result = 'Some error occurred';
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(email: email, password: password);
        result = 'success';
      } else {
        result = "Please enter all the fields";
      }
    } catch (error) {
      result = error.toString();
    }
    return result;
  }
}
