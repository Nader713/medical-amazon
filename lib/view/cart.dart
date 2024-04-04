import 'package:amazon/view/provider%20mind.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/back.png'), fit: BoxFit.cover)),
      child: Consumer<Check>(builder: (context, cart, child) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "My Cart",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text("Items : ${cart.count}"),
                  TextButton(
                      onPressed: () {},
                      child: Text('Pay  ${cart.totalmoney.toInt()} \$',
                          style: const TextStyle(fontSize: 22)))
                ]),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: cart.basket.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                child: Image.asset(cart.basket[index].address),
                                width: 110.0,
                                height: 150.0),
                            Text(
                              cart.basket[index].info,
                              style: const TextStyle(fontSize: 13),
                            ),
                            IconButton(
                                onPressed: () {
                                  cart.remove(cart.basket[index]);
                                },
                                icon: Icon(Icons.remove))
                          ],
                        ),
                      );
                    }),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: cart.basket2.length,
                    itemBuilder: (context, i) {
                      return InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: 110.0,
                                height: 150.0,
                                child: Image.network(
                                    cart.basket2[i].image.toString())),
                            SizedBox(
                              width: 150,
                              child: Text(
                                cart.basket2[i].title.toString(),
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                            SizedBox(
                                width: 50,
                                child: Text(
                                  '${cart.basket2[i].price} \$',
                                  style: const TextStyle(fontSize: 17),
                                )),
                            IconButton(
                                onPressed: () {
                                  cart.removeOnline(cart.basket2[i]);
                                },
                                icon: Icon(Icons.remove))
                          ],
                        ),
                      );
                    }),
              ],
            ),
          ),
        );
      }),
    );
  }
}
