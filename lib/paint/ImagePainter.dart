import 'dart:io';

import 'package:Simple_Draw_Paint/ad_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_painter/image_painter.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ImagePainterExample extends StatefulWidget {
  const ImagePainterExample({super.key});

  @override
  State<ImagePainterExample> createState() => _ImagePainterExampleState();
}

class _ImagePainterExampleState extends State<ImagePainterExample> {
  final _imageKey = GlobalKey<ImagePainterState>();
  final ImagePainterController _controller = ImagePainterController(
    color: Colors.green,
    strokeWidth: 4,
    mode: PaintMode.line,
  );
  final _key = GlobalKey<ScaffoldState>();

  void showSavePopup() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(

            //"Save Image"
            AppLocalizations.of(context)!.saveImage),
        content: Text(
            //"You have to watch a video ad to save the image."
            AppLocalizations.of(context)!.saveDescription),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
                //"Cancel"
                AppLocalizations.of(context)!.cancel),
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
                AppLocalizations.of(context)!.save),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        body: ImagePainter.asset(
          "assets/sample.jpg",
          controller: _controller,
          scalable: true,
          textDelegate: TextDelegate(),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          controlsAtTop: false,
          controlsBackgroundColor: Colors.white.withOpacity(0.8),
          showControls: true,
          placeholderWidget: IconButton(
            onPressed: showSavePopup,
            icon: const Icon(CupertinoIcons.arrow_down_to_line),
          ),
        ));
  }

  void saveImage() async {
    final image = await _controller.exportImage();
    final imageName = '${DateTime.now().millisecondsSinceEpoch}.png';
    final directory = (await getApplicationDocumentsDirectory()).path;
    await Directory('$directory/sample').create(recursive: true);
    final fullPath = '$directory/sample/$imageName';
    final imgFile = File('$fullPath');
    if (image != null) {
      imgFile.writeAsBytesSync(image);
      final result = await ImageGallerySaver.saveFile(imgFile.path);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.grey[700],
          padding: const EdgeInsets.only(left: 10),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Open Preview", style: TextStyle(color: Colors.white)),
              TextButton(
                onPressed: () => OpenFile.open("$fullPath"),
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
  }
}
