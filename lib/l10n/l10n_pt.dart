import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class L10nPt extends L10n {
  L10nPt([String locale = 'pt']) : super(locale);

  @override
  String get simpleDrawPaint => 'Tinta de desenho simples';

  @override
  String get noSelection => 'Nenhuma seleção';

  @override
  String get line => 'Linha';

  @override
  String get circle => 'Círculo';

  @override
  String get arrow => 'Flecha';

  @override
  String get dashLine => 'Linha de traço';

  @override
  String get quadrangle => 'Quadrilátero';

  @override
  String get pen => 'Caneta';

  @override
  String get text => 'Texto';

  @override
  String get done => 'Feito';

  @override
  String get saveImage => 'Salvar imagem';

  @override
  String get saveDescription => 'Você tem que assistir a um anúncio de vídeo para salvar a imagem';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Salvar';

  @override
  String get success => 'Imagem exportada bem -sucedida.';
}
