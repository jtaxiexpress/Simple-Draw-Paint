import 'dart:io';

import 'package:Simple_Draw_Paint/ad_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'paint/ImagePainter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(SimpleDrawApp());
}

class SimpleDrawApp extends StatelessWidget {
  SimpleDrawApp({super.key}) {
    AdHelper.loadAppLaunchAd();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " Simple Draw Paint",
      localizationsDelegates: AppLocalizations.localizationsDelegates, // 追加
      supportedLocales: AppLocalizations.supportedLocales, // 追加
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ImagePainterExample(),
    );
  }
}
