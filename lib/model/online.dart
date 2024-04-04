import 'package:amazon/model/product_model.dart';
import 'package:amazon/view/provider%20mind.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../view/home.dart';

class Online extends StatefulWidget {
  const Online({super.key});

  @override
  State<Online> createState() => _OnlineState();
}

bool isLoading = false;

class _OnlineState extends State<Online> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Online Store'),
        ),
        body: Consumer<Check>(
          builder: (context, cart, child) {
            return SingleChildScrollView(
                child: Column(
              children: [
                FutureBuilder(
                    future:
                        Provider.of<Check>(context, listen: false).getData(),
                    builder: (context, snapshot) {
                      List<Product>? data = snapshot.data;
                      if (snapshot.hasData) {
                        isLoading = false;
                        return SizedBox(
                            height: 700,
                            width: double.infinity,
                            child: Stack(
                              children: [
                                ListView.builder(
                                    itemCount: data?.length,
                                    itemBuilder: ((context, index) {
                                      return InkWell(
                                        onTap: () {},
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                                width: 110.0,
                                                height: 150.0,
                                                child: Image.network(
                                                    data![index]
                                                        .image
                                                        .toString())),
                                            SizedBox(
                                              width: 130,
                                              child: Text(
                                                data[index].title.toString(),
                                                style: const TextStyle(
                                                    fontSize: 17),
                                              ),
                                            ),
                                            SizedBox(
                                                width: 50,
                                                child: Text(
                                                  '${data[index].price.toInt()} \$',
                                                  style: const TextStyle(
                                                      fontSize: 17),
                                                )),
                                            IconButton(
                                              onPressed: () {cart.addOnline(Product(
                                              price:
                                                  data[index].price.toInt(),
                                              image:
                                                  data[index].image.toString(),
                                              title: data[index].title));},
                                              icon: Icon(
                                                Icons.add,
                                                color: Colors.blue,
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    })),
                              ],
                            ));
                      } else {
                        print('wrong');
                        isLoading = true;
                      }
                      return const Center(
                          child: Text(
                        'Loading...',
                        style: TextStyle(fontSize: 40),
                      ));
                    })
              ],
            ));
          },
        ));
  }
}
