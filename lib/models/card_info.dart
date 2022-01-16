import 'package:flutter/material.dart';

class CardInfo {
  final int id;
  final IconData icon;
  final String stat;
  final String unit;
  final String text;

  CardInfo({
    required this.id,
    required this.icon,
    required this.stat,
    required this.unit,
    required this.text,
  });
}
