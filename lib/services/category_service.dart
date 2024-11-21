import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/category.dart';

class CategoryService {
  Future<List<Category>> fetchCategories() async {
    try {
      final String response =
          await rootBundle.loadString('assets/data/categories.json');
      print('JSON Yükleme Başarılı: $response'); // JSON verisini ekrana yazdır
      final data = json.decode(response);
      print('Decoded JSON: $data'); // Decoded veriyi yazdır
      return (data['categories'] as List)
          .map((item) => Category.fromJson(item))
          .toList();
    } catch (e) {
      print("Error loading categories: $e");
      return []; // Hata durumunda boş liste döndür
    }
  }
}
