import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
  }) async {
    String result = 'Some error occurred';
    try {
      print('END BN');
      if (email.isNotEmpty || password.isNotEmpty || username.isNotEmpty) {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        print('as');
        print(credential.user!.uid);
        _fireStore.collection('users').doc(credential.user!.uid).set({
          'username': username,
          'uid': credential.user!.uid,
          'email': email,
          'following': [],
          'followers': []
        });

        result = 'success';
      }
      print('DUUUSLAAA');
    } catch (err) {
      result = err.toString();
      print(result);
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