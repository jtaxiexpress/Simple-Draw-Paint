import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class L10nEt extends L10n {
  L10nEt([String locale = 'et']) : super(locale);

  @override
  String get simpleDrawPaint => 'Lihtne joonistusvärv';

  @override
  String get noSelection => 'Valik pole';

  @override
  String get line => 'Joon';

  @override
  String get circle => 'Ring';

  @override
  String get arrow => 'Nool';

  @override
  String get dashLine => 'Kriipsuliin';

  @override
  String get quadrangle => 'Nelinurk';

  @override
  String get pen => 'Pliiats';

  @override
  String get text => 'Tekst';

  @override
  String get done => 'Tehtud';

  @override
  String get saveImage => 'Salvesta pilt';

  @override
  String get saveDescription => 'Pildi salvestamiseks peate vaatama videoreklaami';

  @override
  String get cancel => 'Tühistama';

  @override
  String get save => 'Kokkuhoid';

  @override
  String get success => 'Pilt eksporditud edukalt.';
}
