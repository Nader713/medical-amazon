import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../controller/controller_amazon.dart';
import 'Items.dart';
import 'provider mind.dart';
import 'home.dart';

class Wheelchair extends StatelessWidget {
  Wheelchair({super.key});
  final controller = Get.put(Amazoncontrol());
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/back.png'),
                fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: const Text('Wheelchair'),
              centerTitle: true,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Add to Cart',
                    style: TextStyle(fontSize: 33),
                  ),
                  Consumer<Check>(builder: (context, cart, child) {
                    return InkWell(
                      onTap: () {
                        
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 110.0,
                            child: Image.asset('assets/images/wheel/1.jpg',
                                width: 110.0, height: 150.0),
                          ),
                          const Text(
                            " Red Wheelchair = 600\$  ",
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(onPressed: (){cart.add(Items(
                          price: 600,
                          address: 'assets/images/wheel/1.jpg',
                          info: " Red Wheelchair = 600\$  ",
                        ));}, icon: const Icon(Icons.add))
                        ],
                      ),
                    );
                  }),
                  Consumer<Check>(builder: (context, cart, child) {
                    return InkWell(
                      onTap: () {
                        
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 110.0,
                            child: Image.asset('assets/images/wheel/2.jpg',
                                width: 110.0, height: 150.0),
                          ),
                          const Text(
                            "  Blue Wheelchair = 900\$  ",
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(onPressed: (){cart.add(Items(
                          price: 900,
                          address: 'assets/images/wheel/2.jpg',
                          info: "  Blue Wheelchair = 900\$  ",
                        ));}, icon: const Icon(Icons.add))
                        ],
                      ),
                    );
                  }),
                  Consumer<Check>(builder: (context, cart, child) {
                    return InkWell(
                      onTap: () {
                        
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 110.0,
                            child: Image.asset('assets/images/wheel/3.jpg',
                                width: 110.0, height: 150.0),
                          ),
                          const Text(
                            "  Green Wheelchair = 400\$  ",
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(onPressed: (){cart.add(Items(
                          price: 400,
                          address: 'assets/images/wheel/3.jpg',
                          info: "  Green Wheelchair = 400\$  ",
                        ));}, icon: const Icon(Icons.add))
                        ],
                      ),
                    );
                  }),
                  Consumer<Check>(builder: (context, cart, child) {
                    return InkWell(
                      onTap: () {
                        
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 110.0,
                            child: Image.asset('assets/images/wheel/4.jpg',
                                width: 110.0, height: 150.0),
                          ),
                          const Text(
                            "  yellow Wheelchair = 1000\$  ",
                            style: TextStyle(fontSize: 16),
                          )
                         ,IconButton(onPressed: (){cart.add(Items(
                          price: 1000,
                          address: 'assets/images/wheel/4.jpg',
                          info: "  yellow Wheelchair = 1000\$  ",
                        ));}, icon: const Icon(Icons.add)),
                        ],
                      ),
                    );
                  }),
                  TextButton(
                      onPressed: () {
                        Get.off(Home());
                      },
                      child: Container(
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Back',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ),
                      ))
                ],
              ),
            )));
  }
}
