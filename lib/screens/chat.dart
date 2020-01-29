import 'package:flutter/material.dart';

import 'package:tzurba_roeah_ruchani_app/widgets/core/screen.dart';
import 'package:tzurba_roeah_ruchani_app/widgets/core/spacer.dart';

class ChatScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      child: Container(
        padding: EdgeInsets.all(32),
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("welcome to the home page!"),
              SpacerWidget(height: 64),
              Text("this page is still under development, as you can see...")
            ],
          ),
        ),
      ),
    );
  }
}
