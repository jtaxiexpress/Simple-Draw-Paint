import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class L10nLv extends L10n {
  L10nLv([String locale = 'lv']) : super(locale);

  @override
  String get simpleDrawPaint => 'Vienkārša zīmēšanas krāsa';

  @override
  String get noSelection => 'Nav atlases';

  @override
  String get line => 'Līnija';

  @override
  String get circle => 'Riņķot';

  @override
  String get arrow => 'Bultiņa';

  @override
  String get dashLine => 'Svītra līnija';

  @override
  String get quadrangle => 'Četrstūris';

  @override
  String get pen => 'Pildspalva';

  @override
  String get text => 'Teksts';

  @override
  String get done => 'Darīts';

  @override
  String get saveImage => 'Saglabāt attēlu';

  @override
  String get saveDescription => 'Lai saglabātu attēlu, jums ir jānoskatās video sludinājums';

  @override
  String get cancel => 'Atcelt';

  @override
  String get save => 'Ietaupīt';

  @override
  String get success => 'Attēls eksportēja veiksmīgu.';
}
