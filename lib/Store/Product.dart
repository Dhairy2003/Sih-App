import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Pesticide",
      price: 234,
      size: 1,
      description: dummyText,
      image: "images/1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Mango seeds",
      price: 404,
      size: 8,
      description: dummyText,
      image: "images/1.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Fertilizer",
      price: 134,
      size: 10,
      description: dummyText,
      image: "images/1.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Sodium Fertilizer",
      price: 8,
      size: 11,
      description: dummyText,
      image: "images/1.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Axe",
      price: 259,
      size: 12,
      description: dummyText,
      image: "images/1.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Hoe",
    price: 261,
    size: 12,
    description: dummyText,
    image: "images/1.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";