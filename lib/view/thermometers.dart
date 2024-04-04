import 'package:amazon/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../controller/controller_amazon.dart';
import 'Items.dart';
import 'provider mind.dart';

class Thermometers extends StatelessWidget {
  Thermometers({super.key});
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
              title: const Text('Thermometers'),
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
                            child: Image.asset('assets/images/thermo/1.jpg',
                                width: 110.0, height: 150.0),
                          ),
                          const Text(
                            " Infrared Thermometer = 50\$  ",
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(
                              onPressed: () {
                                cart.add(Items(
                                    price: 50,
                                    address: 'assets/images/thermo/1.jpg',
                                    info: " Infrared Thermometer = 50\$  "));
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
                            child: Image.asset('assets/images/thermo/2.jpg',
                                width: 110.0, height: 150.0),
                          ),
                          const Text(
                            " White Thermometer = 15\$  ",
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(
                              onPressed: () {
                                cart.add(Items(
                                  price: 15,
                                  address: 'assets/images/thermo/2.jpg',
                                  info: " White Thermometer = 15\$  ",
                                ));
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
                            child: Image.asset('assets/images/thermo/3.jpg',
                                width: 110.0, height: 150.0),
                          ),
                          const Text(
                            " Mercury Thermometer  = 13\$  ",
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(
                              onPressed: () {
                                cart.add(Items(
                                  price: 13,
                                  address: 'assets/images/thermo/3.jpg',
                                  info: " Mercury Thermometer  = 13\$  ",
                                ));
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
                            child: Image.asset('assets/images/thermo/4.jpg',
                                width: 110.0, height: 150.0),
                          ),
                          const Text(
                            " Green Thermometer = 8\$  ",
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(
                              onPressed: () {
                                cart.add(Items(
                                  price: 8,
                                  address: 'assets/images/thermo/4.jpg',
                                  info: " Green Thermometer = 8\$  ",
                                ));
                              },
                              icon: const Icon(Icons.add))
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
