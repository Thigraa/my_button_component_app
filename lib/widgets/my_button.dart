import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Map<String, Color> buttonColors = {
  'default': Color(0xffe0e0e0),
  'primary': Color(0xff2962FF),
  'secondary': Color(0xff455A64),
  'danger': Color(0xffD32F2F),
};

final Map<String, Color> overlayColors = {
  'default': Color(0xffAEAEAE),
  'primary': Color(0xff0039CB),
  'secondary': Color(0xff1C313A),
  'danger': Color(0xff9A0007),
};

final Map<String, double> sizes = {'sm': 14, 'md': 18, 'lg': 24};

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key, this.text = 'Default', this.variant = 'default', this.color = 'default', this.size = 'md', this.startIcon, this.endIcon, this.disabled = false, this.disableShadow = false});

  final String text;
  final String variant;
  final String color;
  final String size;
  final IconData? startIcon;
  final IconData? endIcon;
  final bool disabled;
  final bool disableShadow;

  @override
  Widget build(BuildContext context) {
    return ElevatedButtonTheme(
      data: ElevatedButtonThemeData(
        style: _getButtonStyle(variant, color, size, disableShadow),
      ),
      child: ElevatedButton(
        onPressed: disabled ? null : () => {},
        child: Row(
          children: [
            startIcon != null
                ? Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Icon(
                      startIcon,
                      size: 18,
                    ))
                : Container(),
            Text(
              text,
              style: GoogleFonts.notoSans(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            endIcon != null
                ? Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Icon(
                      endIcon,
                      size: 18,
                    ))
                : Container(),
          ],
        ),
      ),
    );
  }

  ButtonStyle _getButtonStyle(String variant, String color, String size, bool disableShadow) {
    Color buttonColor = buttonColors[color] ?? Color(0xffe0e0e0);
    Color defaultForegroundColor = color == 'default' ? Color(0xff3f3f3f) : Color(0xffffffff);
    Color outlineForegroundColor = disabled ? Color(0xff9e9e9e) : buttonColors[color] ?? buttonColors['default']!;
    Color overlayColor = overlayColors[color] ?? Color(0xffAEAEAE);
    if (disabled) {
      defaultForegroundColor = Color(0xff9e9e9e);
    }
    Color shadowColor = (overlayColors[color] ?? Color(0xffAEAEAE)).withOpacity(0.2);
    EdgeInsets padding = EdgeInsets.symmetric(horizontal: sizes[size] ?? 18, vertical: sizes[size] ?? 18);

    Map<String, ButtonStyle> variants = {
      "default": ButtonStyle(
        elevation: MaterialStateProperty.resolveWith((states) => (disableShadow || disabled) ? 0 : 4),
        backgroundColor: MaterialStateColor.resolveWith((states) => buttonColor),
        padding: MaterialStateProperty.resolveWith((states) => padding),
        overlayColor: MaterialStateColor.resolveWith((states) => overlayColor),
        foregroundColor: MaterialStateColor.resolveWith((states) => defaultForegroundColor),
        shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: BorderSide(
              color: Colors.transparent,
            ))),
        shadowColor: MaterialStateColor.resolveWith((states) => shadowColor),
      ),
      "outline": ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
        overlayColor: MaterialStateColor.resolveWith((states) => overlayColor.withOpacity(0.1)),
        foregroundColor: MaterialStateColor.resolveWith((states) => outlineForegroundColor),
        padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.symmetric(horizontal: 18, vertical: 18)),
        shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: BorderSide(
              color: outlineForegroundColor,
            ))),
        shadowColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
      ),
      "text": ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
        overlayColor: MaterialStateColor.resolveWith((states) => overlayColor.withOpacity(0.1)),
        foregroundColor: MaterialStateColor.resolveWith((states) => outlineForegroundColor),
        padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.symmetric(horizontal: 18, vertical: 18)),
        shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: BorderSide(
              color: Colors.transparent,
            ))),
        shadowColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
      )
    };
    return variants[variant] ?? variants['default']!;
  }
}
