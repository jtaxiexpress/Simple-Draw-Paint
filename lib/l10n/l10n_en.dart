import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get simpleDrawPaint => 'Simple Draw Paint';

  @override
  String get noSelection => 'No selection';

  @override
  String get line => 'Line';

  @override
  String get circle => 'Circle';

  @override
  String get arrow => 'Arrow';

  @override
  String get dashLine => 'Dash Line';

  @override
  String get quadrangle => 'Quadrangle';

  @override
  String get pen => 'Pen';

  @override
  String get text => 'Text';

  @override
  String get done => 'Done';

  @override
  String get saveImage => 'Save Image';

  @override
  String get saveDescription => 'You have to watch a video ad to save the image';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get success => 'Image Exported successfuly.';
}
