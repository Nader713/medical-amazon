import 'package:amazon/controller/controller_amazon.dart';
import 'package:amazon/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  String? username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Column(children: [ 
          if (controller.email == null) ...[
            Text(cont.email.toString()),
          ] else if (cont.email == null) ...[
            Center(child: Text(controller.email.toString()))
          ] else ...[
            Center(child: const Text('server error'))
          ]
        ]),
        const Image(image: AssetImage('assets/images/2.png'))
      ]),
    );
  }
}

final controller = Get.put(LoginControl());
final cont = Get.put(Amazoncontrol());
