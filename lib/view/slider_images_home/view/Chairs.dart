import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Items.dart';
import '../../provider mind.dart';

class wheelChair extends StatefulWidget {
  const wheelChair({Key? key}) : super(key: key);

  @override
  State<wheelChair> createState() => _wheelChairState();
}

class _wheelChairState extends State<wheelChair> {
  final chair = [
    "assets/images/chair slider/chair1.jpg",
    "assets/images/chair slider/chair2.jpg",
    "assets/images/chair slider/chair3.jpg",
  ];

  List<double> chairprice = [500, 700, 190];

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
              itemCount: chair.length,
              itemBuilder: (context, index, realIndex) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(height: 250,
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      color: Colors.grey,
                      child: Image.asset(
                        chair[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '${chairprice[index]} \$',
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
                      onPressed: () {
                        cart.add(Items(
                            price: chairprice[index],
                            address: chair[index],
                            info:
                                "  wheelChair  ${chairprice[index].toInt()} \$ "));
                      },
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
