import 'package:flutter/material.dart';

/// A widget that displays text with a gradient color effect.
///
/// The [text] parameter is the content of the text to be displayed.
/// The [giveGradient] parameter is a list of colors that will be used in the gradient.
/// You can also customize the text appearance using optional parameters such as [style], [textAlign], and others.
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

/// A widget that displays text with an outlined (stroke) effect.
///
/// The [text] parameter is the content of the text to be displayed.
/// The [strokeColor] parameter defines the color of the text stroke.
/// The [strokeWidth] parameter defines the width of the stroke around the text.
/// Optional parameters like [style] and [textAlign] can be used to customize the text appearance.
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

/// A widget that displays text with a neon glowing effect.
///
/// The [text] parameter is the content of the text to be displayed.
/// The [glowColor] parameter defines the color of the neon glow effect.
/// The [blurRadius] parameter defines the intensity of the glow.
/// You can also customize the text appearance using other optional parameters such as [style], [textAlign], and more.
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

/// A widget that displays text within a chip (rounded container) style.
///
/// The [text] parameter is the content of the text to be displayed.
/// The [chipColor] parameter defines the background color of the chip.
/// Optional parameters like [style] and [textAlign] allow customization of the text appearance within the chip.
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

/// A widget that displays text with a shadow effect.
///
/// The [text] parameter is the content of the text to be displayed.
/// The [shadows] parameter defines the list of shadow effects to apply to the text.
/// Other optional parameters such as [style] and [textAlign] allow customization of the text appearance.
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

  // Default shadow
  static const List<Shadow> defaultShadows = [
    Shadow(
      blurRadius: 5.0,
      color: Colors.black,
      offset: Offset(2, 2),
    ),
  ];

  // Main constructor
  const ShadowText({
    Key? key,
    required this.text,
    this.shadows = defaultShadows,
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

  // Helper constructor for simple shadow text
  factory ShadowText.simple({
    Key? key,
    required String text,
    TextStyle? style,
    Color shadowColor = Colors.black,
    double shadowBlurRadius = 5.0,
    Offset shadowOffset = const Offset(2, 2),
    TextAlign? textAlign,
    int? maxLines,
  }) {
    return ShadowText(
      key: key,
      text: text,
      style: style,
      shadows: [
        Shadow(
          blurRadius: shadowBlurRadius,
          color: shadowColor,
          offset: shadowOffset,
        ),
      ],
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }

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

/// A widget that displays text with an interactive onTap gesture.
///
/// The [text] parameter is the content of the text to be displayed.
/// The [onTap] callback is triggered when the text is tapped.
/// You can customize the text appearance using optional parameters like [style], [textAlign], and more.
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

/// A widget that displays text with multiple colors (spans of text).
///
/// The [spans] parameter is a list of [TextSpan] objects that define different sections of text with different styles or colors.
/// Optional parameters like [textAlign], [textDirection], and others allow further customization of the text display.
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

/// A widget that displays text rotated by a specific angle.
///
/// The [text] parameter is the content of the text to be displayed.
/// The [rotationAngle] parameter defines the angle in radians by which to rotate the text.
/// Other optional parameters such as [style], [textAlign], and others allow customization of the text appearance.
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

/// A widget that displays text with a blur effect.
///
/// The [text] parameter is the content of the text to be displayed.
/// The [blurStrength] parameter controls the intensity of the blur effect.
/// Optional parameters such as [style], [textAlign], [maxLines], and others allow customization of the text appearance.
/// The [style] parameter can be used to apply additional text styling, while [textAlign] controls the alignment of the text.
/// The [strutStyle], [textDirection], [locale], [softWrap], and other optional parameters provide more customization options for the text layout and behavior.
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

/// A widget that displays text with a bordered background.
///
/// The [text] parameter is the content of the text to be displayed.
/// The [borderColor] parameter defines the color of the border surrounding the text.
/// The [borderWidth] parameter controls the width of the border.
/// The [backgroundColor] parameter defines the background color of the area surrounding the text.
/// Optional parameters like [style], [textAlign], [maxLines], and others allow customization of the text appearance.
/// The [style] parameter applies additional styling to the text, while [textAlign] controls the alignment of the text within the container.
/// Other optional parameters provide further control over the text layout and behavior.
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
