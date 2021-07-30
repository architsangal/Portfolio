import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';

// ignore: camel_case_types
class about_me {
  final height, width;
  about_me(this.height, this.width);

  // ignore: non_constant_identifier_names
  Container About_me() {
    return Container(
        height: 1.2 * height,
        width: width,
        color: Colors.black,
        child: Stack(children: [
          Center(
              child: FadeInImage(
                  fit: BoxFit.cover,
                  placeholder: MemoryImage(kTransparentImage),
                  image: AssetImage('assets/images/aboutme.jpg'))),
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      'About Me',
                      style: GoogleFonts.getFont(
                        'Pacifico',
                        textStyle: TextStyle(
                          fontSize: width / 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          height: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 10,
                      width: width / 10,
                    ),
                    SizedBox(
                      width: width / 3 - 105,
                      child: SelectableText(
                        "I am a Bengaluru-based engineering " +
                            "student pursuing an Integrated M.Tech., " +
                            "i.e., B.Tech. + M.Tech. degree in Computer Science at" +
                            " International Institute of Information Technology, Bangalore (IIITB)." +
                            " I like graphic designing and fluttering. I have" +
                            " worked with FOSSEE, IIT BOMBAY in a " +
                            "summer fellowship. I am also a member of Zense" +
                            " Club, the official programming and development" +
                            " club of IIITB. I design and make" +
                            " mobile and web applications.",
                        style: GoogleFonts.getFont(
                          'Source Code Pro',
                          textStyle: TextStyle(
                            fontSize: width / 90,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth: width / 5, maxHeight: height / 2),
                          child: FadeInImage(
                              fit: BoxFit.cover,
                              placeholder: MemoryImage(kTransparentImage),
                              image: AssetImage('assets/images/picture.jpg'))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
