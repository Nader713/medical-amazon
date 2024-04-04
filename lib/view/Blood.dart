import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../controller/controller_amazon.dart';
import 'Items.dart';
import 'home.dart';
import 'provider mind.dart';

class Blood extends StatelessWidget {
  Blood({super.key});
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
              title: const Text("Blood Pressure Monitor"),
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
                            child: Image.asset('assets/images/blood/1.jpg',
                                width: 110.0, height: 150.0),
                          ),
                          const Text(
                            " Blue Pressure Monitor = 47\$  ",
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(
                              onPressed: () {
                                cart.add(Items(
                                    price: 47,
                                    address: 'assets/images/blood/1.jpg',
                                    info: " Blue Pressure Monitor = 47\$  "));
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
                            child: Image.asset('assets/images/blood/2.jpg',
                                width: 110.0, height: 150.0),
                          ),
                          const Text(
                            " Black Pressure Monitor = 68\$  ",
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(
                              onPressed: () {
                                cart.add(Items(
                                    price: 68,
                                    address: 'assets/images/blood/2.jpg',
                                    info: " Black Pressure Monitor = 68\$  "));
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
                            child: Image.asset('assets/images/blood/3.jpg',
                                width: 110.0, height: 150.0),
                          ),
                          const Text(
                            " Smart Pressure Monitor = 93\$  ",
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(
                              onPressed: () {
                                cart.add(Items(
                                    price: 93,
                                    address: 'assets/images/blood/3.jpg',
                                    info: " Smart Pressure Monitor = 93\$  "));
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
                            child: Image.asset('assets/images/blood/4.jpg',
                                width: 110.0, height: 150.0),
                          ),
                          const Text(
                            "  wifi Pressure Monitor = 200\$  ",
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(onPressed: (){cart.add(Items(
                            price: 200,
                            address: 'assets/images/blood/4.jpg',
                            info: "  wifi Pressure Monitor = 200\$  "));}, icon: const Icon(Icons.add))
                        ],
                      ),
                    );
                  }),
                  TextButton(
                      onPressed: () {
                        Get.to(const Home());
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
