import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class L10nSk extends L10n {
  L10nSk([String locale = 'sk']) : super(locale);

  @override
  String get simpleDrawPaint => 'Jednoduché kreslenie farby';

  @override
  String get noSelection => 'Žiadny výber';

  @override
  String get line => 'Linka';

  @override
  String get circle => 'Kruh';

  @override
  String get arrow => 'Šípka';

  @override
  String get dashLine => 'Špirála';

  @override
  String get quadrangle => 'Štvoruholník';

  @override
  String get pen => 'Pero';

  @override
  String get text => 'Text';

  @override
  String get done => 'hotový';

  @override
  String get saveImage => 'Uložiť obrázok';

  @override
  String get saveDescription => 'Na uloženie obrázka musíte pozrieť video reklamu';

  @override
  String get cancel => 'Zrušiť';

  @override
  String get save => 'Zachrániť';

  @override
  String get success => 'Obrázok exportoval úspešné.';
}
