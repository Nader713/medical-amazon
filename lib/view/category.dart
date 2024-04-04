import 'package:amazon/view/Blood.dart';
import 'package:amazon/view/Stethoscopes.dart';
import 'package:amazon/view/thermometers.dart';
import 'package:amazon/view/wheelchair.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(
                  child: Text(
                    'Category',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(Stethoscopes());
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/Steth.png',
                            fit: BoxFit.fill, width: 110.0, height: 110.0),
                        const Text("Stethoscopes")
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Get.to(Thermometers());
                      },
                      child: Column(
                        children: [
                          Image.asset('assets/images/termo.png',
                              fit: BoxFit.fill, width: 110.0, height: 110.0),
                          const Text("Thermometers")
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(Wheelchair());
                      },
                      child: Column(
                        children: [
                          Image.asset('assets/images/wheel.png',
                              fit: BoxFit.fill, width: 110.0, height: 110.0),
                          const Text("Wheelchair")
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Get.to(Blood());
                      },
                      child: Column(
                        children: [
                          Image.asset('assets/images/blood.png',
                              fit: BoxFit.fill, width: 110.0, height: 110.0),
                          const Text("Blood Pressure Monitor")
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
