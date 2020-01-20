import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:tzurba_roeah_ruchani_app/screens/router.dart';
import 'package:tzurba_roeah_ruchani_app/utils/theme.dart';

void main() => runApp(RoeahRuchaniApp());

class RoeahRuchaniApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'רועה רוחני',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("he", "IL"),
      ],
      locale: Locale("he", "IL"),
      theme: themeUtil.getTheme(),
      home: RouterScreen(),
    );
  }
}
