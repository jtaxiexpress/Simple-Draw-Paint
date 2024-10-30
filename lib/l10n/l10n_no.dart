import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class L10nNo extends L10n {
  L10nNo([String locale = 'no']) : super(locale);

  @override
  String get simpleDrawPaint => 'Enkel tegningsmaling';

  @override
  String get noSelection => 'Ingen valg';

  @override
  String get line => 'Linje';

  @override
  String get circle => 'Sirkel';

  @override
  String get arrow => 'Pil';

  @override
  String get dashLine => 'Dash Line';

  @override
  String get quadrangle => 'Firedobling';

  @override
  String get pen => 'Penn';

  @override
  String get text => 'Tekst';

  @override
  String get done => 'Ferdig';

  @override
  String get saveImage => 'Lagre bildet';

  @override
  String get saveDescription => 'Du må se en videoannonse for å lagre bildet';

  @override
  String get cancel => 'Avbryt';

  @override
  String get save => 'Lagre';

  @override
  String get success => 'Bilde eksportert vellykket.';
}
