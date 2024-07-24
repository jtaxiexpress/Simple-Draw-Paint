import 'package:flutter/material.dart';

import '../../image_painter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SelectionItems extends StatelessWidget {
  final bool isSelected;
  final ModeData data;
  final VoidCallback? onTap;
  final Color? selectedColor;
  final Color? unselectedColor;

  const SelectionItems({
    required this.data,
    Key? key,
    this.isSelected = false,
    this.onTap,
    this.selectedColor,
    this.unselectedColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: isSelected ? Colors.blue : Colors.transparent),
      child: ListTile(
        leading: IconTheme(
          data: const IconThemeData(opacity: 1.0),
          child: Icon(
            data.icon,
            color: isSelected
                ? selectedColor ?? Colors.white
                : unselectedColor ?? Colors.black,
          ),
        ),
        title: Text(
          data.label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: isSelected
                    ? Colors.white
                    : Theme.of(context).textTheme.bodyLarge?.color,
              ),
        ),
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
        selected: isSelected,
      ),
    );
  }
}

List<ModeData> paintModes(BuildContext context, TextDelegate textDelegate) => [
      ModeData(
          icon: Icons.zoom_out_map,
          mode: PaintMode.none,
          label: AppLocalizations.of(context)!.noSelection),
      ModeData(
          icon: Icons.horizontal_rule,
          mode: PaintMode.line,
          label: AppLocalizations.of(context)!.line),
      ModeData(
          icon: Icons.crop_free,
          mode: PaintMode.rect,
          label: AppLocalizations.of(context)!.quadrangle),
      ModeData(
          icon: Icons.edit,
          mode: PaintMode.freeStyle,
          label: AppLocalizations.of(context)!.pen),
      ModeData(
          icon: Icons.lens_outlined,
          mode: PaintMode.circle,
          label: AppLocalizations.of(context)!.circle),
      ModeData(
          icon: Icons.arrow_right_alt_outlined,
          mode: PaintMode.arrow,
          label: AppLocalizations.of(context)!.arrow),
      ModeData(
          icon: Icons.power_input,
          mode: PaintMode.dashLine,
          label: AppLocalizations.of(context)!.dashLine),
      ModeData(
          icon: Icons.text_format,
          mode: PaintMode.text,
          label: AppLocalizations.of(context)!.text),
    ];

@immutable
class ModeData {
  const ModeData({
    required this.icon,
    required this.mode,
    required this.label,
  });
  final IconData icon;
  final PaintMode mode;
  final String label;
}
