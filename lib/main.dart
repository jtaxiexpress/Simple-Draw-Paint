import 'dart:io';

import 'package:Simple_Draw_Paint/ad_helper.dart';
import 'package:better_open_file/better_open_file.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_painter/image_painter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

class ImagePainterExample extends StatefulWidget {
  const ImagePainterExample({super.key});

  @override
  State<ImagePainterExample> createState() => _ImagePainterExampleState();
}

class _ImagePainterExampleState extends State<ImagePainterExample> {
  final _imageKey = GlobalKey<ImagePainterState>();
  final _key = GlobalKey<ScaffoldState>();

  void saveImage() async {
    final messenger = ScaffoldMessenger.of(context);
    if (_imageKey.currentState == null) return;
    final image = await _imageKey.currentState!.exportImage();
    final directory = (await getApplicationDocumentsDirectory()).path;
    await Directory('$directory/sample').create(recursive: true);
    final fullPath =
        '$directory/sample/${DateTime.now().millisecondsSinceEpoch}.png';
    final imgFile = File(fullPath);
    imgFile.writeAsBytesSync(image!);
    ImageGallerySaver.saveFile(imgFile.path);
    messenger.showSnackBar(
      SnackBar(
        backgroundColor: Colors.grey[700],
        padding: const EdgeInsets.only(left: 10),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                //"Image Exported successfully."
                AppLocalizations.of(context).success,
                style: TextStyle(color: Colors.white)),
            TextButton(
              onPressed: () => OpenFile.open(fullPath),
              child: Text(
                "Open",
                style: TextStyle(
                  color: Colors.blue[200],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void showSavePopup() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(

            //"Save Image"
            AppLocalizations.of(context).saveImage),
        content: Text(
            //"You have to watch a video ad to save the image."
            AppLocalizations.of(context).saveDescription),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
                //"Cancel"
                AppLocalizations.of(context).cancel),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              showDialog(
                context: context,
                builder: (_) =>
                    const Center(child: CircularProgressIndicator()),
              );
              try {
                await AdHelper.loadRewardedAd();
                AdHelper.showRewardedAd(() {
                  Navigator.of(context).pop('dialog');
                  saveImage();
                });
              } catch (e) {
                Navigator.of(context).pop('dialog');
                saveImage();
              }
            },
            child: Text(

                // "Watch Ad and Save"
                AppLocalizations.of(context).save),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: ImagePainter(
        key: _imageKey,
        scalable: true,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        extraWidget: IconButton(
          onPressed: showSavePopup,
          icon: const Icon(CupertinoIcons.arrow_down_to_line),
        ),
        initialStrokeWidth: 2,
        initialColor: Colors.blue,
        initialPaintMode: PaintMode.freeStyle,
        controlsAtTop: false,
      ),
    );
  }
}
