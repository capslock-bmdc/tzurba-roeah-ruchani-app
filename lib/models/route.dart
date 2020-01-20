import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class RouteModel {
  // TODO: add assersions
  RouteModel({
    @required this.path,
    @required this.pageTransition,
    this.name,
    this.icon,
    this.displayNavbar = false,
  });

  final String path;
  final PageTransition pageTransition;
  final String name;
  final IconData icon;
  final bool displayNavbar;
}
