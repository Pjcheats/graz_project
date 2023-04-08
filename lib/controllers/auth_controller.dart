import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graz_project/controllers/user_data_controller.dart';
import 'package:graz_project/view/screens/home_screen.dart';
import 'package:page_transition/page_transition.dart';

class AuthController {
  final _firestore = FirebaseFirestore.instance;
  final _firebaseAuth = FirebaseAuth.instance;

  Future<void> createNewUser(String email, String password,BuildContext context) async {
    String? uid = null;
      await _firebaseAuth
          .createUserWithEmailAndPassword(
              email: email.trim(), password: password.trim())
          .then((value) => uid = value.user!.uid);
    if (uid == null) {
      // Show Dialog
      return;
    }
    UserDataController().setUserId(uid!);
    await createUserDataDoc(uid!);
    Navigator.pushAndRemoveUntil(context, PageTransition(
        type: PageTransitionType.fade,
        child: HomePage(),
      ), (route) => false);
  }

  Future<String?> signUserIn(String email, String password) async {
    try {
      String uid = '';
      await _firebaseAuth
          .signInWithEmailAndPassword(
              email: email.trim(), password: password.trim())
          .then((value) => uid = value.user!.uid);
      return uid;
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  Future<void> getUserDataDoc(String uid) async {
    try {
      CollectionReference _userCollectionRef = _firestore.collection("users");
      final userDoc = await _userCollectionRef.doc(uid).get();

      Map<String, dynamic> userDataMap = userDoc.data() as Map<String, dynamic>;

      UserDataController.userData.value.fromJson(userDataMap);
    } catch (e) {
      print(e);
      // Todo Make Alert Dialog
      return null;
    }
  }

  Future<void> createUserDataDoc(String uid) async {
    try {
      CollectionReference _userCollectionRef = _firestore.collection("users");
      await _userCollectionRef
          .doc(uid)
          .set(UserDataController.userData.value.toJson());
    } catch (e) {
      print(e);
      // Todo Make Alert Dialog
      return null;
    }
  }

  Future<bool?> checkUserInFirebase(String email) async {
    try {
      CollectionReference _userCollectionRef = _firestore.collection("users");
      final userDoc = await _userCollectionRef
          .where("email", isEqualTo: email)
          .limit(1)
          .get();
      if (userDoc.docs.isEmpty) {
        return false;
      }
      return true;
    } catch (e) {
      print(e);
      // Todo Make Alert Dialog
      return null;
    }
  }
}
