import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get simpleDrawPaint => 'シンプルペイント';

  @override
  String get noSelection => '無選択';

  @override
  String get line => '線';

  @override
  String get circle => '丸';

  @override
  String get arrow => '矢印';

  @override
  String get dashLine => '点線';

  @override
  String get quadrangle => '四角';

  @override
  String get pen => 'ペン';

  @override
  String get text => 'テキスト';

  @override
  String get done => '完了';

  @override
  String get saveImage => '画像を保存';

  @override
  String get saveDescription => '広告を見て画像を保存する';

  @override
  String get cancel => 'キャンセル';

  @override
  String get save => '保存';

  @override
  String get success => '画像の保存に成功しました。';
}
