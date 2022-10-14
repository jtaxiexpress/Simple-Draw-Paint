import 'dart:io';

import 'package:drawing_app/ad_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:image_painter/image_painter.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

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
      title: 'Drawing App',
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
    messenger.showSnackBar(
      SnackBar(
        backgroundColor: Colors.grey[700],
        padding: const EdgeInsets.only(left: 10),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Image Exported successfully.",
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
        title: const Text("Save Image"),
        content: const Text("You have to watch a video ad to save the image."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
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
                // await AdHelper.loadRewardedAd();
                AdHelper.showRewardedAd(() {
                  Navigator.of(context).pop('dialog');
                  saveImage();
                });
              } catch (e) {
                Navigator.of(context).pop('dialog');
                saveImage();
              }
            },
            child: const Text("Watch Ad and Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
      ),
    );
  }
}
