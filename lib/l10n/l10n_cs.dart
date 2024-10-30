import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class L10nCs extends L10n {
  L10nCs([String locale = 'cs']) : super(locale);

  @override
  String get simpleDrawPaint => 'Jednoduchá remíza';

  @override
  String get noSelection => 'Žádný výběr';

  @override
  String get line => 'Čára';

  @override
  String get circle => 'Kruh';

  @override
  String get arrow => 'Šipka';

  @override
  String get dashLine => 'Pomlčka';

  @override
  String get quadrangle => 'Čtyřúhelník';

  @override
  String get pen => 'Pero';

  @override
  String get text => 'Text';

  @override
  String get done => 'Hotovo';

  @override
  String get saveImage => 'Uložit obrázek';

  @override
  String get saveDescription => 'Abyste uložili obrázek';

  @override
  String get cancel => 'zrušení';

  @override
  String get save => 'Uložit';

  @override
  String get success => 'Obrázek exportoval úspěšně.';
}
