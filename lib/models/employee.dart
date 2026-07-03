import 'package:flutter/material.dart';

class Employee {
  final String name;
  final String image;
  final Color color;
  final bool activated;
  final String position;

  const Employee({
    required this.name,
    required this.image,
    required this.color,
    required this.activated,
    required this.position,
  });
}
