import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class L10nRu extends L10n {
  L10nRu([String locale = 'ru']) : super(locale);

  @override
  String get simpleDrawPaint => 'Простая краска рисования';

  @override
  String get noSelection => 'Нет выбора';

  @override
  String get line => 'Линия';

  @override
  String get circle => 'Круг';

  @override
  String get arrow => 'Стрелка';

  @override
  String get dashLine => 'Пунктирная линия';

  @override
  String get quadrangle => 'Четырехугольник';

  @override
  String get pen => 'Ручка';

  @override
  String get text => 'Текст';

  @override
  String get done => 'Сделанный';

  @override
  String get saveImage => 'Сохранить изображение';

  @override
  String get saveDescription => 'Вы должны посмотреть видео объявление, чтобы сохранить изображение';

  @override
  String get cancel => 'Отмена';

  @override
  String get save => 'Сохранять';

  @override
  String get success => 'Изображение экспортировано успешным.';
}
