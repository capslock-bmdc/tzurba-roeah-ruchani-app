import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:tzurba_roeah_ruchani_app/consts/routes.dart';
import 'package:tzurba_roeah_ruchani_app/utils/routeObserver.dart';
import 'package:tzurba_roeah_ruchani_app/widgets/sheard/navbar.dart';

class RouterScreen extends StatefulWidget {
  @override
  _RouterScreenState createState() => _RouterScreenState();
}

class _RouterScreenState extends State<RouterScreen> {
  final GlobalKey<NavigatorState> _navigatorKey =
      new GlobalKey<NavigatorState>();
  RouteObserverUtil _routeObserver;
  bool _showNavbar = false;

  @override
  void initState() {
    super.initState();
    _routeObserver = RouteObserverUtil(onChange: _onChangeScreen);
  }

  void _onChangeScreen(String screen) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _showNavbar = routesConst.getDispalyNavbar(screen);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        observers: [_routeObserver],
        initialRoute: '/signup',
        onGenerateRoute: (settings) => routesConst.getPageTransition(settings.name),
        key: _navigatorKey,
      ),
      bottomNavigationBar: _showNavbar
          ? NavbarWidget(navigatorKey: _navigatorKey)
          : Container(height: 0, width: 0),
    );
  }
}
