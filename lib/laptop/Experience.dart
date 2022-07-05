import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
// import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class Experience {
  final height, width;
  Experience(this.height, this.width);

  // void _launchURL(_url) async => await canLaunch(_url)
  //     ? await launch(_url)
  //     : throw 'Could not launch $_url';

  // ignore: non_constant_identifier_names
  Container experience() {
    return Container(
        height: height,
        width: width,
        color: Colors.black,
        child: Stack(children: [
          Container(
              height: height,
              width: width,
              child: FadeInImage(
                  fit: BoxFit.cover,
                  placeholder: MemoryImage(kTransparentImage),
                  image: AssetImage('assets/images/experience.jpg'))),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  'Experience',
                  style: GoogleFonts.getFont(
                    'Pacifico',
                    textStyle: TextStyle(
                      fontSize: width / 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent[700],
                      height: 1,
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Container(
                  height: height/2,
                  width: width/4*3,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        experienceField(
                            "FOSSEE Animations, IIT Bombay Fellowship",
                            "The FOSSEE Animations Project works on making seemingly complex Science and Mathematics topics feel natural " +
                                "and approachable through animations. I got the opportunity to work with the team and create lecture notes and" +
                                " animations for Linear Algebra in Mathematics. You can find further details in FOSSEE Project card under Projects below.",250),
                        experienceField(
                            "Zense",
                            "Zense is the Developers Club of IIIT Bangalore." +
                                "I worked on several projects for the club. The club promotes open source culture in the college. You can find further details in under Projects below.",200),
                      ],
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
        ]));
  }

  Padding experienceField(String heading, String text, int minHeight) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
            height: height/6 > minHeight ? height/6 : minHeight,
            width: width / 8 * 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width / 100),
              color: Color.fromARGB(200, 161, 136, 127),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    heading,
                    style: GoogleFonts.getFont(
                      'Source Code Pro',
                      textStyle: TextStyle(
                        fontSize: width / 70,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Text(
                    text,
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.getFont(
                      'Source Code Pro',
                      textStyle: TextStyle(
                        fontSize: width / 90,
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
