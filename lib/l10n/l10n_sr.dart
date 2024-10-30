import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class L10nSr extends L10n {
  L10nSr([String locale = 'sr']) : super(locale);

  @override
  String get simpleDrawPaint => 'Једноставно цртање боје';

  @override
  String get noSelection => 'Нема избора';

  @override
  String get line => 'Линија';

  @override
  String get circle => 'Круг';

  @override
  String get arrow => 'Стрелац';

  @override
  String get dashLine => 'Испрекидана линија';

  @override
  String get quadrangle => 'Четвороугаоник';

  @override
  String get pen => 'Хемијска оловка';

  @override
  String get text => 'Текст';

  @override
  String get done => 'Готово';

  @override
  String get saveImage => 'Сачували слику';

  @override
  String get saveDescription => 'Морате да гледате видео оглас да бисте сачували слику';

  @override
  String get cancel => 'Поништити, отказати';

  @override
  String get save => 'сачувати';

  @override
  String get success => 'Имаге је извезено успешно.';
}
