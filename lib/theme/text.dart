import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DisplayLarge extends StatelessWidget {
  final double? fontSize;
  final String text;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? textColor;
  final double? height;
  const DisplayLarge(
      {Key? key,
      this.height,
      this.fontSize,
      this.textColor,
      required this.text,
      this.maxLines,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        maxLines: maxLines,
        textAlign: textAlign,
        style: Theme.of(context).textTheme.displayLarge?.copyWith(
            height: height,
            fontSize: fontSize ?? 20,
            color: textColor,
            letterSpacing: 0),
      );
}

class DisplayText2 extends StatelessWidget {
  final double? fontSize;
  final String text;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? textColor;
  const DisplayText2(
      {Key? key,
      this.fontSize,
      this.textColor,
      required this.text,
      this.maxLines,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        maxLines: maxLines,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .displayMedium
            ?.copyWith(fontSize: fontSize, color: textColor, letterSpacing: 2),
      );
}

class HeadlineText1 extends StatelessWidget {
  final double? fontSize;
  final String text;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? textColor;
  const HeadlineText1(
      {Key? key,
      this.fontSize,
      this.textColor,
      required this.text,
      this.maxLines,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        maxLines: maxLines,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .headlineLarge
            ?.copyWith(fontSize: fontSize, color: textColor, letterSpacing: 1),
      );
}

class HeadlineText2 extends StatelessWidget {
  final double? fontSize;
  final String text;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? textColor;
  const HeadlineText2(
      {Key? key,
      this.fontSize,
      this.textColor,
      required this.text,
      this.maxLines,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        maxLines: maxLines,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(fontSize: fontSize, color: textColor, letterSpacing: 2),
      );
}

class HeadlineText3 extends StatelessWidget {
  final double? fontSize;
  final String text;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? textColor;
  const HeadlineText3(
      {Key? key,
      this.fontSize,
      this.textColor,
      required this.text,
      this.maxLines,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        maxLines: maxLines,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(fontSize: fontSize, color: textColor, letterSpacing: 2),
      );
}

class TitleText1 extends StatelessWidget {
  final double? fontSize;
  final String text;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? textColor;
  const TitleText1(
      {Key? key,
      this.fontSize,
      this.textColor,
      required this.text,
      this.maxLines,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        maxLines: maxLines,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontSize: fontSize, color: textColor, letterSpacing: 2),
      );
}

class TitleText2 extends StatelessWidget {
  final double? fontSize;
  final String text;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? textColor;
  const TitleText2(
      {Key? key,
      this.fontSize,
      this.textColor,
      required this.text,
      this.maxLines,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        maxLines: maxLines,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(fontSize: fontSize, color: textColor, letterSpacing: 2),
      );
}

class TitleText3 extends StatelessWidget {
  final double? fontSize;
  final int? maxLines;
  final TextAlign? textAlign;
  final String text;
  final Color? textColor;
  const TitleText3(
      {Key? key,
      this.fontSize,
      this.textColor,
      required this.text,
      this.maxLines,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        maxLines: maxLines,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(fontSize: fontSize, color: textColor, letterSpacing: 2),
      );
}

class BodyText1 extends StatelessWidget {
  final double? fontSize;
  final int? maxLines;
  final TextAlign? textAlign;
  final String text;
  final Color? textColor;
  const BodyText1(
      {Key? key,
      this.fontSize,
      this.textColor,
      required this.text,
      this.maxLines,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        maxLines: maxLines,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontSize: fontSize, color: textColor, letterSpacing: 2),
      );
}

class BodyText2 extends StatelessWidget {
  final double? fontSize;
  final TextAlign? textAlign;
  final String text;
  final int? maxLines;
  final Color? textColor;
  const BodyText2(
      {Key? key,
      this.fontSize,
      this.textColor,
      required this.text,
      this.maxLines,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        maxLines: maxLines,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(fontSize: fontSize, color: textColor, letterSpacing: 2),
      );
}

class BodyText3 extends StatelessWidget {
  final double? fontSize;
  final String text;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? textColor;
  const BodyText3(
      {Key? key,
      this.fontSize,
      this.textColor,
      required this.text,
      this.maxLines,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(fontSize: fontSize, color: textColor, letterSpacing: 2),
      );
}

class LabelText1 extends StatelessWidget {
  final double? fontSize;
  final String text;
  final TextAlign? textAlign;
  final int? maxLines;
  final Color? textColor;
  const LabelText1(
      {Key? key,
      this.fontSize,
      this.textColor,
      required this.text,
      this.maxLines,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        maxLines: maxLines,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .labelLarge
            ?.copyWith(fontSize: fontSize, color: textColor, letterSpacing: 2),
      );
}

class LabelText2 extends StatelessWidget {
  final double? fontSize;
  final String text;
  final TextAlign? textAlign;
  final int? maxLines;
  final Color? textColor;
  const LabelText2(
      {Key? key,
      this.fontSize,
      this.textColor,
      required this.text,
      this.maxLines,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: false,
        style: Theme.of(context)
            .textTheme
            .labelMedium
            ?.copyWith(fontSize: fontSize, color: textColor, letterSpacing: 2),
      );
}

class LabelText3 extends StatelessWidget {
  final double? fontSize;
  final int? maxLines;
  final String text;
  final TextAlign? textAlign;
  final Color? textColor;
  const LabelText3(
      {Key? key,
      this.fontSize,
      this.textColor,
      required this.text,
      this.maxLines,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        maxLines: maxLines,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .labelSmall
            ?.copyWith(fontSize: fontSize, color: textColor, letterSpacing: 2),
      );
}

class HeaderTitle extends StatelessWidget {
  final String title;
  final bool textOnly;
  final Color? color;
  const HeaderTitle({
    Key? key,
    required this.title,
    this.textOnly = false,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: !textOnly
          ? Row(
              children: <Widget>[
                Flexible(
                  child: Text(title,
                      style: themeData.textTheme.headlineMedium
                          ?.copyWith(color: color)),
                )
              ],
            )
          : Text(
              title,
              style: themeData.textTheme.headlineMedium?.copyWith(color: color),
            ),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
