import 'dart:html' as html;

import 'package:flutter/gestures.dart';
import 'package:my_button_component_app/widgets/my_button.dart';
import 'package:cross_scroll/cross_scroll.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: CrossScroll(
          child: Container(width: 1920, height: 1080, child: Container(color: Colors.white, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [SideBar(), MyButtonsPage()])))),
    );
  }
}

class MyButtonsPage extends StatelessWidget {
  const MyButtonsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //? TITLE
          Text(
            'Buttons',
            style: GoogleFonts.poppins(textStyle: TextStyle(color: Color(0xff4f4f4f), fontWeight: FontWeight.w500, fontSize: 30)),
          ),
          //* Button variants
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "MyButton()",
                    style: GoogleFonts.ubuntuMono(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  MyButton(),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyButton(variant: 'outline', color: 'primary')",
                    style: GoogleFonts.ubuntuMono(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  MyButton(variant: 'outline', color: 'primary'),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyButton(variant: 'text', color: 'primary')",
                    style: GoogleFonts.ubuntuMono(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  MyButton(variant: 'text', color: 'primary'),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyButton(disableShadow: trues, color: 'primary')",
                    style: GoogleFonts.ubuntuMono(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  MyButton(disableShadow: true, color: 'primary'),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyButton(text: 'Disabled', disabled: true)",
                    style: GoogleFonts.ubuntuMono(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  MyButton(text: 'Disabled', disabled: true),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyButton(startIcon: Icons.add_shopping_cart_outlined, color: 'primary')",
                    style: GoogleFonts.ubuntuMono(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  MyButton(startIcon: Icons.add_shopping_cart_outlined, color: 'primary'),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyButton(endIcon: Icons.add_shopping_cart_outlined, color: 'primary')",
                    style: GoogleFonts.ubuntuMono(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  MyButton(endIcon: Icons.add_shopping_cart_outlined, color: 'primary'),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyButton(size: 'sm', color: 'primary')",
                    style: GoogleFonts.ubuntuMono(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  MyButton(size: 'sm', color: 'primary'),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyButton(size: 'md', color: 'primary')",
                    style: GoogleFonts.ubuntuMono(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  MyButton(size: 'md', color: 'primary'),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyButton(size: 'lg', color: 'primary')",
                    style: GoogleFonts.ubuntuMono(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  MyButton(size: 'lg', color: 'primary'),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyButton(color: 'default')",
                    style: GoogleFonts.ubuntuMono(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  MyButton(color: 'default'),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyButton(color: 'default')",
                    style: GoogleFonts.ubuntuMono(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  MyButton(color: 'primary'),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyButton(color: 'secondary')",
                    style: GoogleFonts.ubuntuMono(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  MyButton(color: 'secondary', text: 'Secondary'),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MyButton(color: 'danger')",
                    style: GoogleFonts.ubuntuMono(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  MyButton(color: 'danger', text: 'Danger'),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
          RichText(
              text: TextSpan(
            style: GoogleFonts.montserrat(textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Color(0xffA9A9A9))),
            children: [
              TextSpan(text: 'created by '),
              TextSpan(
                  text: 'thigraa',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      html.window.open('https://github.com/Thigraa', 'new tab');
                    },
                  style: GoogleFonts.montserrat(textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 15, decoration: TextDecoration.underline))),
              TextSpan(text: ' - devChallenges.io'),
            ],
          ))
        ],
      ),
    );
  }
}

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: double.infinity,
      color: Color(0xFFFAFBFD),
      padding: EdgeInsets.symmetric(horizontal: 48, vertical: 38),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LogoTitle(),
          SizedBox(
            height: 142,
          ),
          SideBarLink(text: 'Colors'),
          SideBarLink(text: 'Typography'),
          SideBarLink(text: 'Spaces'),
          SideBarLink(
            text: 'Buttons',
            color: Color(0xff090F31),
          ),
          SideBarLink(text: 'Inputs'),
          SideBarLink(text: 'Grid'),
        ],
      ),
    );
  }
}

class SideBarLink extends StatelessWidget {
  const SideBarLink({super.key, required this.text, this.color = const Color(0xff9E9E9E)});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 35),
      child: Text(
        text,
        style: GoogleFonts.notoSans(textStyle: TextStyle(color: color, fontWeight: FontWeight.w500, fontSize: 18)),
      ),
    );
  }
}

class LogoTitle extends StatelessWidget {
  const LogoTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      style: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
      children: [
        TextSpan(text: 'Dev', style: TextStyle(color: Color(0xffF7542E))),
        TextSpan(text: 'challenges.io'),
      ],
    ));
  }
}
