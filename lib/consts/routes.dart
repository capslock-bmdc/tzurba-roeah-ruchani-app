import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:tzurba_roeah_ruchani_app/models/route.dart';
import 'package:tzurba_roeah_ruchani_app/screens/signup.dart';
import 'package:tzurba_roeah_ruchani_app/screens/home.dart';
import 'package:tzurba_roeah_ruchani_app/screens/chat.dart';
import 'package:tzurba_roeah_ruchani_app/screens/settings.dart';

class RoutesConst {
  // TODO: make the order of the elements in thet navbar not depend of the order of the 
  // list but on a index variable.
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
      path: '/settings',
      displayNavbar: true,
      icon: Icons.settings,
      name: "הגדרות",
      pageTransition: PageTransition(
        settings: RouteSettings(name: '/home'),
        child: SettingsScreen(),
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
        child: HomeScreen(),
        type: PageTransitionType.fade,
      ),
    ),
    RouteModel(
      path: '/chat',
      displayNavbar: true,
      icon: Icons.chat_bubble,
      name: "צאט",
      pageTransition: PageTransition(
        settings: RouteSettings(name: '/home'),
        child: ChatScreen(),
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
