import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class L10nTr extends L10n {
  L10nTr([String locale = 'tr']) : super(locale);

  @override
  String get simpleDrawPaint => 'Basit Draw Boya';

  @override
  String get noSelection => 'Seçim yok';

  @override
  String get line => 'Astar';

  @override
  String get circle => 'Daire';

  @override
  String get arrow => 'Ok';

  @override
  String get dashLine => 'Çizgi çizgisi';

  @override
  String get quadrangle => 'Dörtgen';

  @override
  String get pen => 'Kalem';

  @override
  String get text => 'Metin';

  @override
  String get done => 'Tamamlandı';

  @override
  String get saveImage => 'Resmi Kaydet';

  @override
  String get saveDescription => 'Resmi kaydetmek için bir video reklamı izlemelisiniz';

  @override
  String get cancel => 'İptal';

  @override
  String get save => 'Kaydetmek';

  @override
  String get success => 'Görüntü başarılı bir şekilde dışa aktarıldı.';
}
