import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class L10nPl extends L10n {
  L10nPl([String locale = 'pl']) : super(locale);

  @override
  String get simpleDrawPaint => 'Prosta farba do rysowania';

  @override
  String get noSelection => 'Brak wyboru';

  @override
  String get line => 'Linia';

  @override
  String get circle => 'Koło';

  @override
  String get arrow => 'Strzałka';

  @override
  String get dashLine => 'Linia przerywana';

  @override
  String get quadrangle => 'Czworobok';

  @override
  String get pen => 'Długopis';

  @override
  String get text => 'Tekst';

  @override
  String get done => 'Gotowe';

  @override
  String get saveImage => 'Zapisać obraz';

  @override
  String get saveDescription => 'Musisz obejrzeć reklamę wideo, aby zapisać obraz';

  @override
  String get cancel => 'Anulować';

  @override
  String get save => 'Ratować';

  @override
  String get success => 'Obraz wyeksportował udane.';
}
