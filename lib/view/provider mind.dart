import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/product_model.dart';
import 'Items.dart';

class Check with ChangeNotifier {
  var url = 'https://fakestoreapi.com/products/';

  List<Items> _goods = [];
  List<Product>_online = [];
  List<Product> data = [];
  double _total = 0;
  void add(Items good) {
    _goods.add(good);
    _total += good.price;
    notifyListeners();
    Get.snackbar('Added to cart', '1 Item added to cart sucsesfully',
        snackPosition: SnackPosition.TOP,
        colorText: Colors.green,
        duration: Duration(seconds: 1));
  }

  void remove(Items good) {
    _goods.remove(good);
    _total -= good.price;
    notifyListeners();
    Get.snackbar('Removed from cart', '1 Item removed from cart sucsesfully',
        snackPosition: SnackPosition.TOP,
        colorText: Colors.red,
        duration: Duration(seconds: 1));
  }

  int get count {
    return _goods.length + _online.length;
  }

  double get totalmoney {
    return _total;
  }

  List<Items> get basket {
    return _goods;
  }

  List<Product> get basket2 {
    return _online;
  }


  bool isLoading = false;

  void addOnline(Product good) {
    _online.add(good);
    _total += good.price;
    notifyListeners();
    Get.snackbar('Added to cart', '1 Item added to cart sucsesfully',
        snackPosition: SnackPosition.TOP,
        colorText: Colors.green,
        duration: Duration(seconds: 1));
  }

  void removeOnline(Product good) {
    _online.remove(good);
    _total -= good.price;
    notifyListeners();
    Get.snackbar('Removed from cart', '1 Item removed from cart sucsesfully',
        snackPosition: SnackPosition.TOP,
        colorText: Colors.red,
        duration: Duration(seconds: 1));
  }

  Future<List<Product>> getData() async {
    var uri = Uri.parse(url);
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      for (var d in body) {
        data.add(Product.fromJson(d));
      }
      notifyListeners();
      return data;
    } else {
      throw 'Server Error';
    }
  }
}
