import 'package:flutter/material.dart';

class ScreenWidget extends StatelessWidget {
  ScreenWidget({
    @required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    // TODO: make the background light by default and you can make it dark using a flag,
    // the signin/up pages use the dark background.
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(child: child),
    );
  }
}
