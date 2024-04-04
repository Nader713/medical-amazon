import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
/*     بداية الكارت او عربة التسوق */
class Amazoncontrol extends GetxController {
  bool loAding = false;
  loadingchange(bool value) {
    loAding = value;
  }

  /*     نهاية الكارت او عربة التسوق */

/*      ###################   بداية الفاير بيز اوثنتكيشن ماتلعبش هنا   */
  final _amazonticate = FirebaseAuth.instance;

  Future<UserCredential> signup(String email, String password) async {
    final result = await _amazonticate.createUserWithEmailAndPassword(
        email: email, password: password);
    return result;
  }

  Future<UserCredential> signin(String email, String password) async {
    final result = await _amazonticate.createUserWithEmailAndPassword(
        email: email, password: password);
    return result;
  }

  late String username;
  late String password1;
  late String password2;
  late String phone;
  late String email;
}
/*      ###################        نهاية الفاير بيز اوثنتكيشن    */
