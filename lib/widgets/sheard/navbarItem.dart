import 'package:flutter/material.dart';

import 'package:tzurba_roeah_ruchani_app/widgets/core/clippedView.dart';
import 'package:tzurba_roeah_ruchani_app/widgets/core/spacer.dart';

class NavbarItemWidget extends StatefulWidget {
  const NavbarItemWidget(
      {this.title, this.icon, this.isSelected, @required this.onTap});
  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  _NavbarItemWidgetState createState() => _NavbarItemWidgetState();
}

class _NavbarItemWidgetState extends State<NavbarItemWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _iconAnimController;
  bool _wasSelected;
  double _animScale = 1;

  @override
  void initState() {
    int duration = (350 / _animScale).round();
    _iconAnimController = AnimationController(
      duration: Duration(milliseconds: duration),
      vsync: this,
    );
    Tween<double>(begin: 0, end: 1).animate(_iconAnimController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _startAnimIfSelectedChanged(widget.isSelected);
    Widget content = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          widget.icon,
          size: 28,
          color: widget.isSelected
              ? Theme.of(context).bottomAppBarColor
              : Theme.of(context).accentColor,
        ),
        SpacerWidget(width: 8),
        Text(
          widget.title,
          style: TextStyle(
              color: Theme.of(context).bottomAppBarColor,
              fontFamily: "Montserrat"),
        ),
      ],
    );

    return GestureDetector(
      onTap: () => widget.onTap(),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: AnimatedContainer(
            alignment: Alignment.center,
            width: widget.isSelected ? 100 : 52,
            curve: Curves.easeOutCubic,
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
            duration: Duration(milliseconds: (700 / _animScale).round()),
            decoration: BoxDecoration(
              color: widget.isSelected
                  ? Theme.of(context).accentColor
                  : Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            child: ClippedViewWidget(
              child: content,
            )),
      ),
    );
  }

  void _startAnimIfSelectedChanged(bool isSelected) {
    if (_wasSelected != widget.isSelected) {
      //Go forward or reverse, depending on the isSelected state
      widget.isSelected
          ? _iconAnimController.forward()
          : _iconAnimController.reverse();
    }
    _wasSelected = widget.isSelected;
  }
}
