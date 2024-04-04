import 'package:amazon/view/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/login_screen.dart';

class LoginControl extends GetxController {
  late GlobalKey<FormState> formKey;
  String? email;
  String? password;
  @override
  void onInit() {
    // TODO: implement onInit
    formKey = GlobalKey<FormState>();
  }

  final auth = FirebaseAuth.instance;
  submit() async {
    if (!formKey.currentState!.validate()) return;
    formKey.currentState!.save();

    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
      Get.to(const Home());
      Get.snackbar(
        'Right email',
        'you logged successfully !',
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.green,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
    signout() async {
      if (!formKey.currentState!.validate()) return;
      formKey.currentState!.save();
      await FirebaseAuth.instance.signOut();

      Get.offAll(const loginScreen());
    }
  }
}
