import 'dart:io';

import 'package:Simple_Draw_Paint/ad_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_painter/image_painter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'paint/ImagePainter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(ExampleApp());
}

class ExampleApp extends StatelessWidget {
  ExampleApp({super.key}) {
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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ImagePainterExample(),
    );
  }
}
