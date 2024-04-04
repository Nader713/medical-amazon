import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'sginup_screen.dart';
import 'package:get/get.dart';
import 'package:amazon/controller/controller_amazon.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

final controller = Get.put(Amazoncontrol());

class _loginScreenState extends State<loginScreen> {
  bool isVisable = true;
  late String email;
  late String username;
  late String password1;

  late GlobalKey<FormState> key;

  @override
  void initState() {
    super.initState();
    key = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff232F3F),
      body: Form(
        key: key,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .5,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset(
                      "asset/IT-removebg-preview.png",
                      fit: BoxFit.fitHeight,
                    ),
                    SizedBox(
                      height: height * .1,
                    ),
                    const Positioned(
                      bottom: 30,
                      child: Text(
                        textAlign: TextAlign.center,
                        "Care ...More Than Care ",
                        style: TextStyle(
                            letterSpacing: 2,
                            color: Color(0xffF59A2F),
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                cursorColor: const Color(0xffFFFFFD),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Your email';
                  }
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Your email';
                  }
                  if (value.contains("@") == false) {
                    return 'email must contain @ ';
                  }
                  return null;
                },
                onChanged: (newValue) {
                  email = newValue;
                },
                onSaved: (newValue) {
                  email = newValue!;
                },
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color(0xff232F3F),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 245, 248, 248),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * .05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                obscureText: true,
                cursorColor: const Color(0xffFFFFFD),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Your password';
                    
                  }

                  if (value.length < 5) {
                    return 'Please Enter at least 8 chars';
                  }
                },
                onChanged: (newValue) {
                  password1 = newValue;
                },
                onSaved: (newValue) {
                  password1 = newValue!;
                },
                decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color(0xff232F3F),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 245, 248, 248),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Color(0xffFFFFFD)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Color(0xffFFFFFD)),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Color(0xffFFFFFD)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * .1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () async {
                    await subm();
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 232, 236, 238)),
                  )),
            ),
            SizedBox(
              height: height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't Have An Account ?",
                  style: TextStyle(
                      color: Color.fromARGB(255, 248, 249, 250), fontSize: 20),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const SignupScreen());
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Color(0xffF59A2F), fontSize: 20),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  signInWithForm() {
    if (!key.currentState!.validate()) return;
    key.currentState?.save();
    return;
  }

  subm() async {
    if (!key.currentState!.validate()) return;
    key.currentState!.save();

    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password1);
      Get.off(const Home());
      Get.snackbar(
        'Right email',
        'you logged successfully !',
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.green,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        Get.snackbar(
        'wrong  email',
        'you failed to log !',
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.red,
      );
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        Get.snackbar(
        'wrong  password',
        'you failed to log !',
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.red,
      );
      }
    }
  }
}
