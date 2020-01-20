import 'package:flutter/material.dart';

class ClippedViewWidget extends StatelessWidget {
  const ClippedViewWidget({
    this.child,
    this.clipDirection = Axis.horizontal,
  });

  final Widget child;
  final Axis clipDirection;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: clipDirection,
      child: child,
    );
  }
}
