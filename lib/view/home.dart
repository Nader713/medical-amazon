import 'package:amazon/view/cart.dart';
import 'package:amazon/view/category.dart';
import 'package:amazon/view/login_screen.dart';
import 'package:amazon/view/mainhome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller_amazon.dart';
import '../model/online.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = Get.put(Amazoncontrol());

  int localIndex = 3;
  List<Widget> pages = [
    const Online(),
    Cart(),
    const Category(),
    const mainHOme()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/back.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                    padding: EdgeInsets.symmetric(
                  vertical: 7,
                )),
                Container(
                  margin: EdgeInsets.all(6),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const ListTile(
                            leading: Icon(Icons.person),
                            title: Text(
                              "Your Profile",
                              style: TextStyle(fontSize: 20),
                            ),
                            trailing: Icon(Icons.arrow_back_ios_new_outlined),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(Cart());
                        },
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const ListTile(
                            leading: Icon(Icons.timelapse_outlined),
                            title: Text(
                              "Purchase History",
                              style: TextStyle(fontSize: 20),
                            ),
                            trailing: Icon(Icons.arrow_back_ios_new_outlined),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const ListTile(
                            leading: Icon(Icons.list_alt),
                            title: Text(
                              "Product List",
                              style: TextStyle(fontSize: 20),
                            ),
                            trailing: Icon(Icons.arrow_back_ios_new_outlined),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          leading: Icon(Icons.mark_chat_read_rounded),
                          title: Text(
                            "Receives",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Icon(Icons.arrow_back_ios_new_outlined),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          leading: Icon(Icons.notifications),
                          title: Text(
                            "Notification",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Icon(Icons.arrow_back_ios_new_outlined),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          leading: Icon(Icons.person),
                          title: Text(
                            "Friends & Subscribes",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Icon(Icons.arrow_back_ios_new_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          leading: Icon(Icons.delivery_dining),
                          title: Text(
                            "Delivery & Addresses",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Icon(Icons.arrow_back_ios_new_outlined),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ListTile(
                          leading: Icon(Icons.wallet),
                          title: Text(
                            "Your Wallet",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Icon(Icons.arrow_back_ios_new_outlined),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.offAll(() => const loginScreen());
                        },
                        child: const ListTile(
                          leading: Icon(Icons.logout),
                          title: Text(
                            "Log out",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Icon(Icons.arrow_back_ios_new_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    Get.to(const Cart());
                  },
                  icon: Row(children: [
                    const Icon(Icons.add_shopping_cart),
                  ])),
              IconButton(
                  onPressed: () {
                    setState(() {
                      localIndex = 3;
                    });
                  },
                  icon: const Icon(Icons.refresh))
            ],
            title: Image.asset(
              'assets/images/2.png',
              width: 100.0,
              height: 100.0,
            )),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xff242c3c),
           type : BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          iconSize: 30,
          onTap: (value) {
            setState(() {
              localIndex = value;
            });
          },
          currentIndex: localIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.online_prediction, color: Colors.amber),
              label: 'Online store',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.amber),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_sharp, color: Colors.amber),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.amber),
              label: 'Home',
            ),
          ],
        ),
        body: pages.elementAt(localIndex),
      ),
    );
  }
}
