import 'package:flutter/material.dart';

import 'package:tzurba_roeah_ruchani_app/consts/routes.dart';
import 'package:tzurba_roeah_ruchani_app/models/route.dart';
import 'package:tzurba_roeah_ruchani_app/widgets/core/clippedView.dart';
import 'package:tzurba_roeah_ruchani_app/widgets/sheard/navbarItem.dart';

class NavbarWidget extends StatefulWidget {
  NavbarWidget({this.navigatorKey});

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  _NavbarWidgetState createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  String _selectedPath = "/signup";

  void _onSelectRoute(String path) {
    setState(() => _selectedPath = path);
  }

  Widget _generateButton(RouteModel route) {
    return NavbarItemWidget(
      onTap: () => _onSelectRoute(route.path),
      icon: route.icon,
      title: route.name,
      isSelected: _selectedPath == route.path,
    );
  }

  List<Widget> _generateChildren() {
    return routesConst.getAllInNavbar().map((route) {
      return Container(
        child: _generateButton(route),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: Theme.of(context).bottomAppBarColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 16.0,
            spreadRadius: 5.0,
            offset: Offset(0, 15),
          )
        ],
      ),
      alignment: Alignment.center,
      child: ClippedViewWidget(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: _generateChildren(),
        ),
      ),
    );
  }
}
