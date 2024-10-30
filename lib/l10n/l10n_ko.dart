import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class L10nKo extends L10n {
  L10nKo([String locale = 'ko']) : super(locale);

  @override
  String get simpleDrawPaint => '간단한 드로우 페인트';

  @override
  String get noSelection => '선택이 없습니다';

  @override
  String get line => '선';

  @override
  String get circle => '원';

  @override
  String get arrow => '화살';

  @override
  String get dashLine => '대시 라인';

  @override
  String get quadrangle => '사각형';

  @override
  String get pen => '펜';

  @override
  String get text => '텍스트';

  @override
  String get done => '완료';

  @override
  String get saveImage => '이미지를 저장';

  @override
  String get saveDescription => '이미지를 저장하려면 비디오 광고를보아야합니다.';

  @override
  String get cancel => '취소';

  @override
  String get save => '구하다';

  @override
  String get success => '이미지를 성공적으로 내보냈습니다.';
}
