import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Items.dart';
import '../../provider mind.dart';

class Temperature_screen extends StatefulWidget {
   const Temperature_screen({Key? key}) : super(key: key);

  @override
  State<Temperature_screen> createState() => _Temperature_screenState();
}

class _Temperature_screenState extends State<Temperature_screen> {
  final temperature = [
    "assets/images/temp2 slider/temp1.jpg",
    "assets/images/temp2 slider/temp2.jpg",
    "assets/images/temp2 slider/temp3.jpg",
  ];

  List<double> Temperatureprice = [150, 130, 200];

  @override
  Widget build(BuildContext context) {
    return Consumer<Check>(builder: (context, cart, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Temperature",
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
              itemCount: temperature.length,
              itemBuilder: (context, index, realIndex) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(height: 250,
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      color: Colors.grey,
                      child: Image.asset(
                        temperature[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '${Temperatureprice[index]} \$',
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
                            price: Temperatureprice[index],
                            address: temperature[index],
                            info:
                                "  Temperature  ${Temperatureprice[index].toInt()} \$ "));
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
