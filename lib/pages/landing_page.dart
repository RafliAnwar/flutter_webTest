import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
  String namaPhoto = 'illustration.png';

  @override
  Widget build(BuildContext context) {
    Widget navItem({String title, int index, String namaUrl}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
            namaPhoto = namaUrl;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: index == selectedIndex
                      ? FontWeight.w500
                      : FontWeight.w300,
                  color: Color(0xff1D1E3C)),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                  color: index == selectedIndex
                      ? Color(0xffFE998D)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(1000)),
            )
          ],
        ),
      );
    }

    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'background.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
          child: Column(
            children: [
              //NOTE : NAVIGATION
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'logo.png',
                    width: 72,
                    height: 40,
                  ),
                  Row(
                    children: [
                      navItem(
                        title: 'Guides',
                        index: 0,
                        namaUrl: 'illustration.png'
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      navItem(
                        title: 'Pricing',
                        index: 1,
                        namaUrl: 'logo.png'
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      navItem(
                        title: 'Team',
                        index: 2,
                        namaUrl: 'icon_arrow.png'
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      navItem(
                        title: 'Stories',
                        index: 3,
                        namaUrl: 'logo.png'
                      ),
                    ],
                  ),
                  Image.asset(
                    'btn_account.png',
                    width: 163,
                    height: 53,
                  )
                ],
              ),
              //NOTE : CONTENT
              SizedBox(
                height: 76,
              ),
              Image.asset(
                namaPhoto,
                width: 763,
                height: 550,
              ),
              //NOTE: FOOTER
              SizedBox(
                height: 84,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'icon_arrow.png',
                    width: 24,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    'Scroll to Learn More',
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
