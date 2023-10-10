
import 'package:flutter/material.dart';

class CardItem {
  String name;
  IconData icon;
  String info;
  CardItem({
    required this.name,
    required this.icon,
    required this.info,
  });

  

  static CardItem emptyCard() => CardItem(
        name: 'Invoices',
        icon: Icons.add_chart_outlined,
        info: '',
      );
}
