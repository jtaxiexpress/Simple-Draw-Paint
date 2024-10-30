import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class L10nHe extends L10n {
  L10nHe([String locale = 'he']) : super(locale);

  @override
  String get simpleDrawPaint => 'צבע צייר פשוט';

  @override
  String get noSelection => 'אין בחירה';

  @override
  String get line => 'קַו';

  @override
  String get circle => 'מעגל';

  @override
  String get arrow => 'חֵץ';

  @override
  String get dashLine => 'מקף';

  @override
  String get quadrangle => 'חָצֵר';

  @override
  String get pen => 'עֵט';

  @override
  String get text => 'טֶקסט';

  @override
  String get done => 'בוצע';

  @override
  String get saveImage => 'שמור תמונה';

  @override
  String get saveDescription => 'אתה צריך לצפות במודעת וידאו כדי לשמור את התמונה';

  @override
  String get cancel => 'לְבַטֵל';

  @override
  String get save => 'להציל';

  @override
  String get success => 'תמונה מיוצאת מצליחה.';
}
