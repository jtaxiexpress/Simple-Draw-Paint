import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class L10nFi extends L10n {
  L10nFi([String locale = 'fi']) : super(locale);

  @override
  String get simpleDrawPaint => 'Yksinkertainen vetomaali';

  @override
  String get noSelection => 'Ei valinta';

  @override
  String get line => 'Linja';

  @override
  String get circle => 'Ympyrä';

  @override
  String get arrow => 'Nuoli';

  @override
  String get dashLine => 'Viivaviiva';

  @override
  String get quadrangle => 'Nelikulmio';

  @override
  String get pen => 'Kynä';

  @override
  String get text => 'Teksti';

  @override
  String get done => 'Tehty';

  @override
  String get saveImage => 'Tallenna kuva';

  @override
  String get saveDescription => 'Sinun on katsottava videomainoksen tallentaaksesi kuvan';

  @override
  String get cancel => 'Peruuttaa';

  @override
  String get save => 'Tallentaa';

  @override
  String get success => 'Kuva vietiin onnistuneeksi.';
}
