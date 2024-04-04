import 'package:amazon/view/slider_images_favourits/view/Pressure.dart';
import 'package:amazon/view/slider_images_favourits/view/Temperature.dart';
import 'package:amazon/view/slider_images_favourits/view/Thermometers.dart';
import 'package:amazon/view/slider_images_home/view/Chairs.dart';
import 'package:amazon/view/slider_images_home/view/Stethoscopes.dart';
import 'package:amazon/view/slider_images_home/view/medicalBed.dart';
import 'package:amazon/view/slider_images_home/view/teeth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mainHOme extends StatelessWidget {
  const mainHOme({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/back.png'),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(6),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: const CupertinoSearchTextField(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(const StethoScopes());
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/Stethes/1.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  '30 EGP',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 17),
                                ),
                                const Text(
                                  "Stethoscope",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(const TeethTools());
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: Image.asset('assets/images/teeth2.png'
                                      ),
                                ),
                                const Text(
                                  '70 EGP',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 17),
                                ),
                                const Text(
                                  "Dental tools",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            width: 40,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(const MedicalBed());
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: Image.asset(
                                      "assets/images/bed slider/bed3.jpg"),
                                ),
                                const Text(
                                  '500 EGP',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 17),
                                ),
                                const Text(
                                  "Medical bed",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(const wheelChair());
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: Image.asset(
                                      "assets/images/wheel/2.jpg"),
                                ),
                                const Text(
                                  '150 EGP',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 17),
                                ),
                                const Text(
                                  "Whealchair",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Favourites",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(const Pressure());
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                          "assets/images/pree.png"),
                                    ],
                                  ),
                                ),
                                const Text(
                                  '80 EGP',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 17),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                  ],
                                ),
                                const Text(
                                  "Blood pressure device",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(const Thermometers_screen());
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: Image.asset(
                                      "assets/images/ter.png"),
                                ),
                                const Text(
                                  '20 EGP',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 17),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                  ],
                                ),
                                const Text(
                                  "Thermometer",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          InkWell(
                            onTap: () {Get.to(const MedicalBed());},
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: Image.asset(
                                      "assets/images/ped.png"),
                                ),
                                const Text(
                                  '500 EGP',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 17),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                  ],
                                ),
                                const Text(
                                  "Medical bed",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(const Temperature_screen());
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: Image.asset(
                                      "assets/images/tem.png"),
                                ),
                                const Text(
                                  '100 EGP',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 17),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                  ],
                                ),
                                const Text(
                                  "Temperature device",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Recommended",
                        style: TextStyle(fontSize: 20),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
