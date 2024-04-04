import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Items.dart';
import '../../provider mind.dart';

class TeethTools extends StatefulWidget {
  const TeethTools({Key? key}) : super(key: key);

  @override
  State<TeethTools> createState() => _TeethToolsState();
}

class _TeethToolsState extends State<TeethTools> {
  @override
  final teeth = [
    "assets/images/teeth slider/teeth1.jpg",
    "assets/images/teeth slider/teeth2.jpg",
    "assets/images/teeth slider/teeth3.jpg",
    "assets/images/teeth slider/teeth4.jpg",
  ];
  List<double> teethprice = [80, 50, 70, 100];

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
              itemCount: teeth.length,
              itemBuilder: (context, index, realIndex) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(height: 250,
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      color: Colors.grey,
                      child: Image.asset(
                        teeth[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '${teethprice[index]} \$',
                      style: TextStyle(fontSize: 33),
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
                            price: teethprice[index],
                            address: teeth[index],
                            info:
                                "  TeethTool  ${teethprice[index].toInt()} \$ "));
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
