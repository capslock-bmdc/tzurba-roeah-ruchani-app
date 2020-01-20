import 'package:flutter/material.dart';
import 'package:tzurba_roeah_ruchani_app/utils/theme.dart';

enum ButtonType {
  Default,
  Filled,
  Outline,
}

enum ButtonStyle {
  Default,
  Error,
  Success,
}

class ButtonColors {
  ButtonColors({
    this.backgroundColor = const Color(0x00000000),
    this.outlineColor = const Color(0x00000000),
    this.textColor = const Color(0x00000000),
  });

  final Color backgroundColor;
  final Color outlineColor;
  final Color textColor;
}

class ButtonTheme {
  ButtonTheme({
    this.backgroundColor = const Color(0x00000000),
    this.outlineColor = const Color(0x00000000),
    this.textColor = const Color(0x00000000),
  });

  final Color backgroundColor;
  final Color outlineColor;
  final Color textColor;
}

class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    @required this.text,
    this.onPressed,
    this.onPressedDisabled,
    this.disabled = false,
    this.loading = false,
    this.buttonType = ButtonType.Default,
    this.buttonStyle = ButtonStyle.Default,
  });

  final Function onPressed;
  final String text;
  final Function onPressedDisabled;
  final bool disabled;
  final bool loading;
  final ButtonType buttonType;
  final ButtonStyle buttonStyle;

  ButtonColors _getButtonColors() {
    Map<ButtonStyle, Color> colorsMap = {
      ButtonStyle.Default: ThemeColors.PRIMATY_COLOR,
      ButtonStyle.Success: ThemeColors.SUCCESS_COLOR,
      ButtonStyle.Error: ThemeColors.ERROR_COLOR,
    };

    Color mainColor = colorsMap[buttonStyle];

    Map<ButtonType, ButtonColors> typeMap = {
      ButtonType.Default: ButtonColors(
        textColor: mainColor,
      ),
      ButtonType.Outline: ButtonColors(
        outlineColor: mainColor,
        textColor: mainColor,
      ),
      ButtonType.Filled: ButtonColors(
        backgroundColor: mainColor,
        outlineColor: mainColor,
        textColor: ThemeColors.TEXT_COLOR,
      ),
    };
    return typeMap[buttonType];
  }

  Widget _buttonContent(BuildContext context, ButtonColors buttonColors) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          text,
          style: Theme.of(context).textTheme.button.merge(
                TextStyle(color: buttonColors.textColor),
              ),
        ),
      ],
    );
  }

  Widget _loadingButton(ButtonColors buttonColors) {
    return Container(
      height: 16,
      width: 16,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        valueColor: AlwaysStoppedAnimation<Color>(buttonColors.textColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ButtonColors buttonColors = _getButtonColors();
    return Container(
      foregroundDecoration: BoxDecoration(
        color: disabled ? Theme.of(context).accentColor : Colors.transparent,
        backgroundBlendMode: BlendMode.saturation,
      ),
      child: FlatButton(
          onPressed: !disabled ? onPressed : (onPressedDisabled ?? () => {}),
          color: buttonColors.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            side: BorderSide(color: buttonColors.outlineColor, width: 2),
          ),
          child: loading
              ? _loadingButton(buttonColors)
              : _buttonContent(context, buttonColors)),
    );
  }
}
