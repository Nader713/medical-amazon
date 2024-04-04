import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Items.dart';
import '../../provider mind.dart';

class MedicalBed extends StatefulWidget {
  const MedicalBed({Key? key}) : super(key: key);

  @override
  State<MedicalBed> createState() => _MedicalBedState();
}

class _MedicalBedState extends State<MedicalBed> {
  @override
  final bed = [
    "assets/images/bed slider/bed1.jpg",
    "assets/images/bed slider/bed2.jpg",
    "assets/images/bed slider/bed3.jpg",
  ];
  List<double> bedprice = [2000, 5000, 7000];

  @override
  Widget build(BuildContext context) {
    return Consumer<Check>(builder: (context, cart, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "MedicalBed",
            style: TextStyle(fontSize: 18, color: Colors.amber),
          ),
        ),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 500,
                enlargeCenterPage: true,
              ),
              itemCount: bed.length,
              itemBuilder: (context, index, realIndex) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(height: 250,
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      color: Colors.grey,
                      child: Image.asset(
                        bed[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '${bedprice[index]} \$',
                      style: const TextStyle(fontSize: 33),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                    ElevatedButton(
                      onPressed: () {cart.add(Items(
                        price: bedprice[index],
                        address: bed[index],
                        info: "  MedicalBed  ${bedprice[index].toInt()} \$ "));},
                      child: const Text("add to cart"),
                    ),
                  ],
                );
              },
            ),
          ],
        )),
      );
    });
  }
}
