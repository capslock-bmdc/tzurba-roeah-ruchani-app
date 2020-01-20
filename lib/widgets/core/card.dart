import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({
    @required this.child,
    this.color,
  });
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color != null ? color : Theme.of(context).primaryColor,
      ),
      child: child,
    );
  }
}
