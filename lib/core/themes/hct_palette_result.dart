import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class HctPaletteResult {
  final Color targetColor;
  final List<Color> palette;

  HctPaletteResult({required this.targetColor, required this.palette});
}

/// 生成基于 HCT 色彩空间的自适应调色板
///
/// [hexColor] 16进制颜色字符串
/// [context] 用于获取当前主题的 ColorScheme 和 Brightness
/// [steps] 输出的颜色阶级数量，默认 100
HctPaletteResult generateAdaptiveHctPalette(String hexColor, BuildContext context, {int steps = 100}) {
  // 解析 16 进制颜色
  String cleanHex = hexColor.replaceFirst('#', '');
  if (cleanHex.length == 6) {
    cleanHex = 'ff$cleanHex';
  }
  final int argb = int.parse(cleanHex, radix: 16);
  final Color inputColor = Color(argb);
  final double alpha = inputColor.a;

  // 转换为 HCT 色彩空间 (Hue 色相, Chroma 纯度, Tone 明度)
  final Hct hct = Hct.fromInt(inputColor.toARGB32());
  final double hue = hct.hue;
  final double chroma = hct.chroma;

  // 根据 context 获取背景色
  final ColorScheme colorScheme = Theme.of(context).colorScheme;
  final Hct bgHct = Hct.fromInt(colorScheme.surface.toARGB32());
  final double bgTone = bgHct.tone;

  // 4. 确定目标 Tone
  // 浅色背景 (Tone > 50) 使用较深颜色 (Tone 40)
  // 深色背景 (Tone <= 50) 使用较浅颜色 (Tone 80)
  final double targetTone = bgTone > 50 ? 40.0 : 80.0;

  // 生成适应当前模式的“目标颜色”
  final Hct targetHct = Hct.from(hue, chroma, targetTone);
  final Color targetColor = Color(targetHct.toInt()).withValues(alpha: alpha);

  // 生成自定义阶级数量的颜色列表,默认 100 (Palette)
  final List<Color> palette = [];
  for (int i = 0; i < steps; i++) {
    final double tone = steps > 1 ? 100.0 * i / (steps - 1) : 50.0;
    final Hct stepHct = Hct.from(hue, chroma, tone);
    final Color stepColor = Color(stepHct.toInt()).withValues(alpha: alpha);
    palette.add(stepColor);
  }

  return HctPaletteResult(targetColor: targetColor, palette: palette);
}
