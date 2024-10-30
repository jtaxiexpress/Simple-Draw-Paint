import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class L10nNl extends L10n {
  L10nNl([String locale = 'nl']) : super(locale);

  @override
  String get simpleDrawPaint => 'Eenvoudige trekverf';

  @override
  String get noSelection => 'Geen selectie';

  @override
  String get line => 'Lijn';

  @override
  String get circle => 'Cirkel';

  @override
  String get arrow => 'Pijl';

  @override
  String get dashLine => 'Schietlijn';

  @override
  String get quadrangle => 'Vierhoek';

  @override
  String get pen => 'Pen';

  @override
  String get text => 'Tekst';

  @override
  String get done => 'Gedaan';

  @override
  String get saveImage => 'Afbeelding opslaan';

  @override
  String get saveDescription => 'U moet een videoadvertentie bekijken om de afbeelding op te slaan';

  @override
  String get cancel => 'Annuleren';

  @override
  String get save => 'Opslaan';

  @override
  String get success => 'Afbeelding geëxporteerd succesvol.';
}
