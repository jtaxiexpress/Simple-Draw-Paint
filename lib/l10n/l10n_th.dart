import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class L10nTh extends L10n {
  L10nTh([String locale = 'th']) : super(locale);

  @override
  String get simpleDrawPaint => 'สีวาดง่าย ๆ';

  @override
  String get noSelection => 'ไม่มีการเลือก';

  @override
  String get line => 'เส้น';

  @override
  String get circle => 'วงกลม';

  @override
  String get arrow => 'ลูกศร';

  @override
  String get dashLine => 'เส้นประ';

  @override
  String get quadrangle => 'จัตุรัส';

  @override
  String get pen => 'ปากกา';

  @override
  String get text => 'ข้อความ';

  @override
  String get done => 'เสร็จแล้ว';

  @override
  String get saveImage => 'บันทึกภาพ';

  @override
  String get saveDescription => 'คุณต้องดูโฆษณาวิดีโอเพื่อบันทึกภาพ';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get save => 'บันทึก';

  @override
  String get success => 'ภาพส่งออกสำเร็จ';
}
