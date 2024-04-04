import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Items.dart';
import '../../provider mind.dart';

class StethoScopes extends StatefulWidget {
  const StethoScopes({super.key});

  @override
  State<StethoScopes> createState() => _StethoScopesState();
}

class _StethoScopesState extends State<StethoScopes> {
  @override
  final steth = [
    "assets/images/seth slider/seth1.png",
    "assets/images/seth slider/seth2.png",
    "assets/images/seth slider/seth3.png",
  ];
  List<double> stethprice = [130, 90, 200];

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
              itemCount: steth.length,
              itemBuilder: (context, index, realIndex) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(height: 250,
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      color: Colors.grey,
                      child: Image.asset(
                        steth[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '${stethprice[index]} \$',
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
                            price: stethprice[index],
                            address: steth[index],
                            info:
                                "  StethoScope  ${stethprice[index].toInt()} \$ "));
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
