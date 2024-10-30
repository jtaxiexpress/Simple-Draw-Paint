import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class L10nAr extends L10n {
  L10nAr([String locale = 'ar']) : super(locale);

  @override
  String get simpleDrawPaint => 'رسم رسم بسيط';

  @override
  String get noSelection => 'لا اختيار';

  @override
  String get line => 'خط';

  @override
  String get circle => 'دائرة';

  @override
  String get arrow => 'سهم';

  @override
  String get dashLine => 'خط داش';

  @override
  String get quadrangle => 'رباعي الزوايا';

  @override
  String get pen => 'قلم جاف';

  @override
  String get text => 'نص';

  @override
  String get done => 'فعله';

  @override
  String get saveImage => 'احفظ الصورة';

  @override
  String get saveDescription => 'عليك مشاهدة إعلان فيديو لحفظ الصورة';

  @override
  String get cancel => 'يلغي';

  @override
  String get save => 'يحفظ';

  @override
  String get success => 'تصدير الصورة الناجحة.';
}
