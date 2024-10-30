import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class L10nEs extends L10n {
  L10nEs([String locale = 'es']) : super(locale);

  @override
  String get simpleDrawPaint => 'Pintura de dibujo simple';

  @override
  String get noSelection => 'Sin selección';

  @override
  String get line => 'Línea';

  @override
  String get circle => 'Circulo';

  @override
  String get arrow => 'Flecha';

  @override
  String get dashLine => 'Línea de puntos';

  @override
  String get quadrangle => 'Cuadrilátero';

  @override
  String get pen => 'Lápiz';

  @override
  String get text => 'Texto';

  @override
  String get done => 'Hecho';

  @override
  String get saveImage => 'Guardar imagen';

  @override
  String get saveDescription => 'Tienes que ver un anuncio de video para guardar la imagen';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Ahorrar';

  @override
  String get success => 'Imagen exportada exitosa.';
}
