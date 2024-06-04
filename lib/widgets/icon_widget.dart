import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;

  const IconWidget({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: Colors.grey);
  }
}
