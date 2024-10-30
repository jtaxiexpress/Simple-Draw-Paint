import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class L10nSv extends L10n {
  L10nSv([String locale = 'sv']) : super(locale);

  @override
  String get simpleDrawPaint => 'Enkel dragfärg';

  @override
  String get noSelection => 'Inget val';

  @override
  String get line => 'Linje';

  @override
  String get circle => 'Cirkel';

  @override
  String get arrow => 'Pil';

  @override
  String get dashLine => 'Streckad linje';

  @override
  String get quadrangle => 'Fyrhörning';

  @override
  String get pen => 'Penna';

  @override
  String get text => 'Text';

  @override
  String get done => 'Gjort';

  @override
  String get saveImage => 'Spara bild';

  @override
  String get saveDescription => 'Du måste titta på en videoannons för att spara bilden';

  @override
  String get cancel => 'Avbryt';

  @override
  String get save => 'Spara';

  @override
  String get success => 'Bild exporterade framgångsrik.';
}
