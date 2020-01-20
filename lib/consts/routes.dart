import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:tzurba_roeah_ruchani_app/models/route.dart';
import 'package:tzurba_roeah_ruchani_app/screens/signup.dart';

class RoutesConst {
  List<RouteModel> _routes = [
    RouteModel(
      path: '/',
      displayNavbar: false,
      pageTransition: PageTransition(
        settings: RouteSettings(name: '/'),
        child: Container(),
        type: PageTransitionType.fade,
      ),
    ),
    RouteModel(
      path: '/signup',
      displayNavbar: false,
      pageTransition: PageTransition(
        settings: RouteSettings(name: '/signup'),
        child: SignupScreen(),
        type: PageTransitionType.fade,
      ),
    ),
    RouteModel(
      path: '/home',
      displayNavbar: true,
      icon: Icons.home,
      name: "בית",
      pageTransition: PageTransition(
        settings: RouteSettings(name: '/home'),
        child: SignupScreen(),
        type: PageTransitionType.fade,
      ),
    ),
  ];

  PageTransition getPageTransition(String path) =>
      _routes.firstWhere((route) => (route.path == path)).pageTransition;

  bool getDispalyNavbar(String path) =>
      _routes.firstWhere((route) => (route.path == path)).displayNavbar;

  List<RouteModel> getAllInNavbar() =>
      _routes.where((route) => (route.displayNavbar)).toList();
}

final RoutesConst routesConst = RoutesConst();
