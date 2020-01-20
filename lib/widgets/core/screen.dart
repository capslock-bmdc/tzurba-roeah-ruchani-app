import 'package:flutter/material.dart';

class ScreenWidget extends StatelessWidget {
  ScreenWidget({
    @required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(child: child),
    );
  }
}
