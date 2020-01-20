import 'package:flutter/material.dart';
import 'package:tzurba_roeah_ruchani_app/utils/theme.dart';

import 'package:tzurba_roeah_ruchani_app/widgets/core/button.dart';
import 'package:tzurba_roeah_ruchani_app/widgets/core/screen.dart';
import 'package:tzurba_roeah_ruchani_app/widgets/core/spacer.dart';
import 'package:tzurba_roeah_ruchani_app/widgets/core/textField.dart';

class SignupScreen extends StatelessWidget {
  void _onPressSignUp(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/app');
  }

  void _onPressSignIn(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/signin');
  }

  Widget _logo() {
    return Container(
      // child: Image.asset(
      //   'assets/images/logo.png',
      //   height: 100,
      // ),
    );
  }

  Widget _nameInput() {
    return Container(
      child: TextFieldWidget(
        hintText: "שם",
        textColor: ThemeColors.TEXT_COLOR,
      ),
    );
  }

  Widget _tzInput() {
    return Container(
      child: TextFieldWidget(
        hintText: "תעודת זהות",
        textColor: ThemeColors.TEXT_COLOR,
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget _signUpButton(BuildContext context) {
    return Container(
      child: ButtonWidget(
        buttonType: ButtonType.Filled,
        onPressed: () => _onPressSignUp(context),
        text: "הירשם עם חשבון גוגל",
      ),
    );
  }

  Widget _signInButton(BuildContext context) {
    return Container(
      child: ButtonWidget(
        onPressed: () => _onPressSignIn(context),
        text: "הכנס לחשבון קיים",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      child: Container(
        padding: EdgeInsets.all(32),
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SpacerWidget(height: 32),
              _logo(),
              SpacerWidget(height: 64),
              // TODO: on compleate typing should go to next step
              _nameInput(),
              SpacerWidget(height: 32),
              _tzInput(),
              SpacerWidget(height: 32),
              _signUpButton(context),
              SpacerWidget(height: 32),
              _signInButton(context),
            ],
          ),
        ),
      ),
    );
  }
}
