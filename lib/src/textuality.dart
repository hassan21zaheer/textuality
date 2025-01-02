import 'package:flutter/material.dart';

/// Gradient Text Widget
class GradientText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final List<Color> giveGradient;
  final TextAlign? textAlign;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  const GradientText({
    Key? key,
    required this.text,
    required this.giveGradient,
    this.style,
    this.textAlign,
    this.strutStyle,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(colors: giveGradient).createShader(bounds);
      },
      blendMode: BlendMode.srcIn,
      child: Text(
        text,
        style: style,
        textAlign: textAlign,
        strutStyle: strutStyle,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
        selectionColor: selectionColor,
      ),
    );
  }
}

/// Stroke (Outlined) Text Widget
class StrokeText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color strokeColor;
  final double strokeWidth;
  final TextAlign? textAlign;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  const StrokeText({
    Key? key,
    required this.text,
    required this.strokeColor,
    required this.strokeWidth,
    this.style,
    this.textAlign, this.strutStyle, this.textDirection, this.locale, this.softWrap, this.overflow, this.textScaleFactor, this.textScaler, this.maxLines, this.semanticsLabel, this.textWidthBasis, this.textHeightBehavior, this.selectionColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: style?.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..color = strokeColor,
          ) ??
              TextStyle(
                fontSize: 20,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = strokeWidth
                  ..color = strokeColor,
              ),
          textAlign: textAlign,
        ),
        Text(
          text,
          style: style,
          textAlign: textAlign,
          strutStyle: strutStyle,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
          selectionColor: selectionColor,
        ),
      ],
    );
  }
}

/// Neon Effect Text Widget
class NeonText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color glowColor;
  final double blurRadius;
  final TextAlign? textAlign;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  const NeonText({
    Key? key,
    required this.text,
    required this.glowColor,
    required this.blurRadius,
    this.style,
    this.textAlign, this.strutStyle, this.textDirection, this.locale, this.softWrap, this.overflow, this.textScaleFactor, this.textScaler, this.maxLines, this.semanticsLabel, this.textWidthBasis, this.textHeightBehavior, this.selectionColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style?.copyWith(
        shadows: [
          Shadow(
            blurRadius: blurRadius,
            color: glowColor,
            offset: Offset(0, 0),
          ),
        ],
      ) ??
          TextStyle(
            fontSize: 20,
            shadows: [
              Shadow(
                blurRadius: blurRadius,
                color: glowColor,
                offset: Offset(0, 0),
              ),
            ],
          ),
      textAlign: textAlign,
      strutStyle: strutStyle,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }
}

/// Text Chips Widget
class ChipText extends StatelessWidget {
  final String text;
  final Color chipColor;
  final TextStyle? style;
  final TextAlign? textAlign;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  const ChipText({
    Key? key,
    required this.text,
    required this.chipColor,
    this.style,
    this.textAlign, this.strutStyle, this.textDirection, this.locale, this.softWrap, this.overflow, this.textScaleFactor, this.textScaler, this.maxLines, this.semanticsLabel, this.textWidthBasis, this.textHeightBehavior, this.selectionColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: chipColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Text(
        text,
        style: style,
        textAlign: textAlign,
        strutStyle: strutStyle,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
        selectionColor: selectionColor,
      ),

    );
  }
}

/// Shadow Effect Text Widget
class ShadowText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final List<Shadow> shadows;
  final TextAlign? textAlign;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  const ShadowText({
    Key? key,
    required this.text,
    required this.shadows,
    this.style,
    this.textAlign, this.strutStyle, this.textDirection, this.locale, this.softWrap, this.overflow, this.textScaleFactor, this.textScaler, this.maxLines, this.semanticsLabel, this.textWidthBasis, this.textHeightBehavior, this.selectionColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style?.copyWith(shadows: shadows) ?? TextStyle(shadows: shadows),
      textAlign: textAlign,
      strutStyle: strutStyle,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }
}

/// Interactive Text Widget
class InteractiveText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final VoidCallback onTap;
  final TextAlign? textAlign;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  const InteractiveText({
    Key? key,
    required this.text,
    required this.onTap,
    this.style,
    this.textAlign, this.strutStyle, this.textDirection, this.locale, this.softWrap, this.overflow, this.textScaleFactor, this.textScaler, this.maxLines, this.semanticsLabel, this.textWidthBasis, this.textHeightBehavior, this.selectionColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: style,
        textAlign: textAlign,
        strutStyle: strutStyle,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
        selectionColor: selectionColor,
      ),
    );
  }
}

/// Multi-Color Text Widget
class MultiColorText extends StatelessWidget {
  final List<TextSpan> spans;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final double? textScaleFactor;
  final int? maxLines;
  final TextHeightBehavior? textHeightBehavior;

  const MultiColorText({
    Key? key,
    required this.spans,
    this.textAlign,
    this.textDirection,
    this.textScaleFactor,
    this.maxLines,
    this.textHeightBehavior,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: spans),
      textAlign: textAlign ?? TextAlign.start,
      textDirection: textDirection,
      textScaleFactor: textScaleFactor ?? 1.0,
      maxLines: maxLines,
      textHeightBehavior: textHeightBehavior,
    );
  }
}

/// Vertical or Rotated Text Widget
class RotatedText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double rotationAngle;
  final TextAlign? textAlign;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  const RotatedText({
    Key? key,
    required this.text,
    required this.rotationAngle,
    this.style,
    this.textAlign, this.strutStyle, this.textDirection, this.locale, this.softWrap, this.overflow, this.textScaleFactor, this.textScaler, this.maxLines, this.semanticsLabel, this.textWidthBasis, this.textHeightBehavior, this.selectionColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotationAngle,
      child: Text(
        text,
        style: style,
        textAlign: textAlign,
        strutStyle: strutStyle,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
        selectionColor: selectionColor,
      ),
    );
  }
}

/// Blurred Text Widget
class BlurredText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double blurStrength;
  final TextAlign? textAlign;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  const BlurredText({
    Key? key,
    required this.text,
    required this.blurStrength,
    this.style,
    this.textAlign, this.strutStyle, this.textDirection, this.locale, this.softWrap, this.overflow, this.textScaleFactor, this.textScaler, this.maxLines, this.semanticsLabel, this.textWidthBasis, this.textHeightBehavior, this.selectionColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style?.copyWith(
        foreground: Paint()
          ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurStrength),
      ) ??
          TextStyle(
            foreground: Paint()
              ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurStrength),
          ),
      textAlign: textAlign,
      strutStyle: strutStyle,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }
}

/// Bordered Background Text Widget
class BorderedBackgroundText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color borderColor;
  final double borderWidth;
  final Color backgroundColor;
  final TextAlign? textAlign;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  const BorderedBackgroundText({
    Key? key,
    required this.text,
    required this.borderColor,
    required this.borderWidth,
    required this.backgroundColor,
    this.style,
    this.textAlign, this.strutStyle, this.textDirection, this.locale, this.softWrap, this.overflow, this.textScaleFactor, this.textScaler, this.maxLines, this.semanticsLabel, this.textWidthBasis, this.textHeightBehavior, this.selectionColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: style,
        textAlign: textAlign,
        strutStyle: strutStyle,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
        selectionColor: selectionColor,
      ),
    );
  }
}
