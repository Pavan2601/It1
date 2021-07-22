import 'package:first_flutter_app/constants.dart';
import 'package:flutter/material.dart';

class Category {
  final String icon;
  final String title;
  final Color color;
  Category({required this.icon, required this.title, required this.color});
}

List<Category> categoryList = [
  Category(
    icon: "assets/images/hair-salon.png",
    title: "Salon",
    color: kPurple,
  ),
  Category(
    icon: "assets/images/scissor.png",
    title: "Haircut",
    color: kYellow,
  ),
  Category(
    icon: "assets/images/hair-dryer.png",
    title: "Parlor",
    color: kGreen,
  ),
  Category(
    icon: "assets/images/shampoo.png",
    title: "Shampoo",
    color: kIndigo,
  ),
  Category(
    icon: "assets/images/relax.png",
    title: "Massage",
    color: kPink,
  ),
];
