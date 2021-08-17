import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

int activeIndex = 0;

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            activeIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Color(0xff1D1E3C),
                  fontWeight:
                      index == activeIndex ? FontWeight.w500 : FontWeight.w300),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: index == activeIndex
                      ? Color(0xffFE998D)
                      : Colors.transparent),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        body: Stack(children: [
      Image.asset(
        'images/bg.png',
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        fit: BoxFit.fill,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // NOTE: NAVBAR
                Image.asset(
                  'images/logo.png',
                  width: 72,
                  height: 40,
                ),
                Row(
                  children: [
                    navItem(title: 'Guides', index: 0),
                    SizedBox(
                      width: 50,
                    ),
                    navItem(title: 'Pricing', index: 1),
                    SizedBox(
                      width: 50,
                    ),
                    navItem(title: 'Teams', index: 2),
                    SizedBox(
                      width: 50,
                    ),
                    navItem(title: 'Stories', index: 3),
                  ],
                ),
                Image.asset(
                  'images/button.png',
                  width: 163,
                  height: 53,
                )
              ],
            ),
            //CONTENT

            SizedBox(
              height: 76,
            ),
            Image.asset(
              'images/group1.png',
              width: 550,
            ),
            SizedBox(
              height: 83,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/icon.png',
                  width: 24,
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  'Scroll to learn more',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                )
              ],
            )
          ],
        ),
      ),
    ]));
  }
}
