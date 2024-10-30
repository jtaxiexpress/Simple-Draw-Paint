import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class L10nFr extends L10n {
  L10nFr([String locale = 'fr']) : super(locale);

  @override
  String get simpleDrawPaint => 'Peinture de tirage simple';

  @override
  String get noSelection => 'Pas de choix';

  @override
  String get line => 'Ligne';

  @override
  String get circle => 'Cercle';

  @override
  String get arrow => 'Flèche';

  @override
  String get dashLine => 'Ligne pointillée';

  @override
  String get quadrangle => 'Quadrilatère';

  @override
  String get pen => 'Stylo';

  @override
  String get text => 'Texte';

  @override
  String get done => 'Fait';

  @override
  String get saveImage => 'Enregistrer l\'image';

  @override
  String get saveDescription => 'Vous devez regarder une annonce vidéo pour enregistrer l\'image';

  @override
  String get cancel => 'Annuler';

  @override
  String get save => 'sauvegarder';

  @override
  String get success => 'Image exportée avec succès.';
}
