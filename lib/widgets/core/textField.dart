import 'package:flutter/material.dart';
import 'package:tzurba_roeah_ruchani_app/utils/theme.dart';

import 'package:tzurba_roeah_ruchani_app/widgets/core/card.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    this.hintText,
    this.keyboardType,
    this.textColor,
  });

  final String hintText;
  final TextInputType keyboardType;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      color: ThemeColors.BACKGROUND_COLOR,
        child: TextField(
      style:
          Theme.of(context).textTheme.title.merge(TextStyle(color: textColor)),
      keyboardType: keyboardType ?? TextInputType.text,
      cursorColor: Color(0xFFFFFFFF),
      decoration: InputDecoration.collapsed(
        hintText: hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .title
            .merge(TextStyle(color: textColor)),
      ),
    ));
  }
}
