import 'dart:developer';
import 'package:amazon/view/home.dart';
import 'package:amazon/view/login_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:amazon/controller/controller_amazon.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isVisable = true;
  final controller = Get.put(Amazoncontrol());

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
      appBar: AppBar(),
      backgroundColor: const Color(0xff232F3F),
      body: ModalProgressHUD(
        inAsyncCall: controller.loAding,
        child: Form(
          key: key,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .4,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Image.asset("asset/IT-removebg-preview.png"),
                      SizedBox(
                        height: height * .1,
                      ),
                      const Positioned(
                        bottom: 30,
                        child: Text(
                          textAlign: TextAlign.center,
                          "WELCOME",
                          style: TextStyle(
                              letterSpacing: 4,
                              color: Color(0xffF59A2F),
                              fontSize: 25,
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your name';
                    }
                    if (value == "nader") {
                      log("your name is right");
                    } else {
                      log("your name is wrong");
                    }

                    return null;
                  },
                  onChanged: (newValue) {
                    controller.username = newValue;
                  },
                  cursorColor: const Color(0xff232F3F),
                  decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color(0xff232F3F),
                    ),
                    filled: true,
                    fillColor: const Color(0xffFFFFFD),
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
                height: height * .03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your email';
                    }
                    if (value.contains("@") == false) {
                      return 'email must contain @ ';
                    }
                    return null;
                  },
                  onChanged: (Value) {
                    controller.email = Value;
                  },
                  cursorColor: const Color(0xff232F3F),
                  decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Color(0xff232F3F),
                    ),
                    filled: true,
                    fillColor: const Color(0xffFFFFFD),
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
                height: height * .03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your password';
                    }
                    if (value.length < 1) {
                      return 'Please Enter at least 6 chars';
                    }
                    return null;
                  },
                  onChanged: (newValue) {
                    controller.password1 = newValue;
                  },
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  cursorColor: const Color(0xff232F3F),
                  decoration: InputDecoration(
                    hintText: "Enter Your Password",
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xff232F3F),
                    ),
                    filled: true,
                    fillColor: const Color(0xffFFFFFD),
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
                height: height * .02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    onPressed: () async {
                      signInWithForm();
                      try {
                        await controller.signup(
                            controller.email, controller.password1);
                        Get.snackbar(
                          'Right email',
                          'you created account successfully !',
                          snackPosition: SnackPosition.BOTTOM,
                          colorText: Colors.green,
                        );
                        Get.off(const Home());
                      } catch (e) {
                        print(e.toString());
                      }
                    },
                    child: const Text(
                      "Create Account",
                      style: TextStyle(fontSize: 17, color: Color(0xffFFFFFD)),
                    )),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Do you Have An Account ?",
                    style: TextStyle(fontSize: 22, color: Color(0xffFFFFFD)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(loginScreen());
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Color(0xffF59A2F), fontSize: 22),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  signInWithForm() {
    if (!key.currentState!.validate()) return;
    key.currentState?.save();
    return;
  }
}
