import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class L10nHu extends L10n {
  L10nHu([String locale = 'hu']) : super(locale);

  @override
  String get simpleDrawPaint => 'Egyszerű rajzfesték';

  @override
  String get noSelection => 'Nincs választás';

  @override
  String get line => 'Vonal';

  @override
  String get circle => 'Kör';

  @override
  String get arrow => 'Nyíl';

  @override
  String get dashLine => 'Szaggatott vonal';

  @override
  String get quadrangle => 'Négyszög';

  @override
  String get pen => 'Toll';

  @override
  String get text => 'Szöveg';

  @override
  String get done => 'Kész';

  @override
  String get saveImage => 'Kép mentése';

  @override
  String get saveDescription => 'Meg kell néznie egy video hirdetést a kép mentéséhez';

  @override
  String get cancel => 'Megszünteti';

  @override
  String get save => 'Megment';

  @override
  String get success => 'A kép exportált sikeres.';
}
