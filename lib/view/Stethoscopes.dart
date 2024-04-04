import 'package:amazon/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../controller/controller_amazon.dart';
import 'Items.dart';
import 'provider mind.dart';

class Stethoscopes extends StatelessWidget {
  Stethoscopes({super.key});
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
              title: const Text('Stethoscopes'),
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
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 110.0,
                            child: Image.asset('assets/images/Stethes/1.jpg',
                                width: 110.0, height: 150.0),
                          ),
                          const Text(
                            " Black Stethoscope = 10\$  ",
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(
                              onPressed: () {
                                cart.add(Items(
                                    price: 10,
                                    address: 'assets/images/Stethes/1.jpg',
                                    info: " Black Stethoscope = 10\$  "));
                              },
                              icon: const Icon(Icons.add))
                        ],
                      ),
                    );
                  }),
                  Consumer<Check>(builder: (context, cart, child) {
                    return InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 110.0,
                            child: Image.asset('assets/images/Stethes/2.jpg',
                                width: 110.0, height: 150.0),
                          ),
                          const Text(
                            " Red Stethoscope = 7\$  ",
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(
                              onPressed: () {
                                cart.add(Items(
                                    price: 7,
                                    address: 'assets/images/Stethes/2.jpg',
                                    info: " Red Stethoscope = 7\$  "));
                              },
                              icon: const Icon(Icons.add))
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
                            child: Image.asset('assets/images/Stethes/3.jpg',
                                width: 110.0, height: 150.0),
                          ),
                          const Text(
                            " Purple Stethoscope = 5\$  ",
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(onPressed: (){cart.add(Items(
                            price: 5,
                            address: 'assets/images/Stethes/3.jpg',
                            info: " Purple Stethoscope = 5\$  "));}, icon: const Icon(Icons.add))
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
                            child: Image.asset('assets/images/Stethes/4.jpg',
                                width: 110.0, height: 150.0),
                          ),
                          const Text(
                            " Green Stethoscope = 3\$  ",
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(onPressed: (){cart.add(Items(
                          price: 3,
                          address: 'assets/images/Stethes/4.jpg',
                          info: " Green Stethoscope = 3\$  ",
                        ));}, icon: const Icon(Icons.add))
                        ],
                      ),
                    );
                  }),
                  TextButton(
                      onPressed: () {
                        Get.off(const Home());
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
