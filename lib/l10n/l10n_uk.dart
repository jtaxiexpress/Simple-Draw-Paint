import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class L10nUk extends L10n {
  L10nUk([String locale = 'uk']) : super(locale);

  @override
  String get simpleDrawPaint => 'Проста фарба з малювання';

  @override
  String get noSelection => 'Немає вибору';

  @override
  String get line => 'Лінія';

  @override
  String get circle => 'Кола';

  @override
  String get arrow => 'Стрілка';

  @override
  String get dashLine => 'Лінія тире';

  @override
  String get quadrangle => 'Чотирикутник';

  @override
  String get pen => 'Ручка';

  @override
  String get text => 'Текст';

  @override
  String get done => 'Виконаний';

  @override
  String get saveImage => 'Зберегти зображення';

  @override
  String get saveDescription => 'Ви повинні переглянути відео оголошення, щоб зберегти зображення';

  @override
  String get cancel => 'Скасувати';

  @override
  String get save => 'Збагачувати';

  @override
  String get success => 'Зображення експортовано успішним.';
}
