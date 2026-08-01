import 'package:flutter/material.dart';

class CategoryModel {
  final String id;
  final String name;
  final String emoji;
  final Color color;

  const CategoryModel({
    required this.id,
    required this.name,
    required this.emoji,
    required this.color,
  });
}

class AppCategories {
  static const List<CategoryModel> list = [
    CategoryModel(id: 'ropa', name: 'Ropa', emoji: '👗', color: Color(0xFFFFE3E8)),
    CategoryModel(id: 'supermercado', name: 'Supermercado', emoji: '🛒', color: Color(0xFFFFECE0)),
    CategoryModel(id: 'cafe', name: 'Café', emoji: '☕', color: Color(0xFFEFE3D3)),
    CategoryModel(id: 'restaurante', name: 'Restaurante', emoji: '🍽', color: Color(0xFFFFE0E0)),
    CategoryModel(id: 'suscripciones', name: 'Suscripciones', emoji: '📺', color: Color(0xFFEDE7F6)),
    CategoryModel(id: 'otros', name: 'Otros', emoji: '💸', color: Color(0xFFF5F5F5)),
  ];

  static CategoryModel findById(String id) {
    return list.firstWhere(
      (element) => element.id == id,
      orElse: () => list.last,
    );
  }
}
