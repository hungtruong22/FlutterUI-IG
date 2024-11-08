import 'package:http/http.dart' as http;
import 'package:nhom3app/model/photo.dart';
import 'dart:convert';

import 'package:nhom3app/model/product.dart';


class ApiService {
  static const String baseUrl = 'https://fakestoreapi.com';

  Future<List<Product>> getProducts() async {
    final Uri url = Uri.parse('$baseUrl/products'); // Chuyển đổi chuỗi thành đối tượng Uri
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}

