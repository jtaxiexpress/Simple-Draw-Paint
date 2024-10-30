import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class L10nHr extends L10n {
  L10nHr([String locale = 'hr']) : super(locale);

  @override
  String get simpleDrawPaint => 'Jednostavna boja za crtanje';

  @override
  String get noSelection => 'Nema odabira';

  @override
  String get line => 'Crta';

  @override
  String get circle => 'Krug';

  @override
  String get arrow => 'Strijela';

  @override
  String get dashLine => 'Crta';

  @override
  String get quadrangle => 'Četverokut';

  @override
  String get pen => 'Olovka';

  @override
  String get text => 'Tekst';

  @override
  String get done => 'Završen';

  @override
  String get saveImage => 'Spremiti sliku';

  @override
  String get saveDescription => 'Morate pogledati video oglas da biste spremili sliku';

  @override
  String get cancel => 'Otkazati';

  @override
  String get save => 'Uštedjeti';

  @override
  String get success => 'Slika je izvezena uspješno.';
}
