import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class L10nDe extends L10n {
  L10nDe([String locale = 'de']) : super(locale);

  @override
  String get simpleDrawPaint => 'Einfache Ziehfarbe';

  @override
  String get noSelection => 'Keine Auswahl';

  @override
  String get line => 'Linie';

  @override
  String get circle => 'Kreis';

  @override
  String get arrow => 'Pfeil';

  @override
  String get dashLine => 'Strich-Linie';

  @override
  String get quadrangle => 'Viereck';

  @override
  String get pen => 'Stift';

  @override
  String get text => 'Text';

  @override
  String get done => 'Fertig';

  @override
  String get saveImage => 'Bild speichern';

  @override
  String get saveDescription => 'Sie müssen eine Videoanzeige ansehen, um das Bild zu speichern';

  @override
  String get cancel => 'Absagen';

  @override
  String get save => 'Speichern';

  @override
  String get success => 'Bild exportiert erfolgreich.';
}
