import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class L10nZh extends L10n {
  L10nZh([String locale = 'zh']) : super(locale);

  @override
  String get simpleDrawPaint => '简单的绘画油漆';

  @override
  String get noSelection => '没有选择';

  @override
  String get line => '线';

  @override
  String get circle => '圆圈';

  @override
  String get arrow => '箭';

  @override
  String get dashLine => '虚线';

  @override
  String get quadrangle => '四边形';

  @override
  String get pen => '笔';

  @override
  String get text => '文本';

  @override
  String get done => '完毕';

  @override
  String get saveImage => '保存图片';

  @override
  String get saveDescription => '您必须观看视频广告才能保存图像';

  @override
  String get cancel => '取消';

  @override
  String get save => '节省';

  @override
  String get success => '图像导出成功。';
}

/// The translations for Chinese, as used in China (`zh_CN`).
class L10nZhCn extends L10nZh {
  L10nZhCn(): super('zh_CN');

  @override
  String get simpleDrawPaint => '简单的绘画油漆';

  @override
  String get noSelection => '没有选择';

  @override
  String get line => '线';

  @override
  String get circle => '圆圈';

  @override
  String get arrow => '箭';

  @override
  String get dashLine => '虚线';

  @override
  String get quadrangle => '四边形';

  @override
  String get pen => '笔';

  @override
  String get text => '文本';

  @override
  String get done => '完毕';

  @override
  String get saveImage => '保存图片';

  @override
  String get saveDescription => '您必须观看视频广告才能保存图像';

  @override
  String get cancel => '取消';

  @override
  String get save => '节省';

  @override
  String get success => '图像导出成功。';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class L10nZhTw extends L10nZh {
  L10nZhTw(): super('zh_TW');

  @override
  String get simpleDrawPaint => '簡單的繪畫油漆';

  @override
  String get noSelection => '沒有選擇';

  @override
  String get line => '線';

  @override
  String get circle => '圓圈';

  @override
  String get arrow => '箭';

  @override
  String get dashLine => '虛線';

  @override
  String get quadrangle => '四邊形';

  @override
  String get pen => '筆';

  @override
  String get text => '文本';

  @override
  String get done => '完畢';

  @override
  String get saveImage => '保存圖片';

  @override
  String get saveDescription => '您必須觀看視頻廣告才能保存圖像';

  @override
  String get cancel => '取消';

  @override
  String get save => '節省';

  @override
  String get success => '圖像導出成功。';
}
