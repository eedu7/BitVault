import 'package:flutter/material.dart';

class MainNavItem {
  final String label;
  final IconData icon;
  final IconData selectedIcon;
  final Widget screen;

  const MainNavItem({
    required this.label,
    required this.icon,
    required this.selectedIcon,
    required this.screen,
  });
}
