import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class Education {
  final height, width;
  Education(this.height, this.width);

  void _launchURL(_url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  // ignore: non_constant_identifier_names
  Container education() {
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
                  image: AssetImage('assets/images/education.jpg'))),
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  'Education',
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
                  height: height / 40,
                  width: width / 10,
                ),
                educationField(
                    "International Institute of Information Technology Bangalore",
                    "Integrated M.Tech. in Computer Science (2019 - 2024)",
                    "CGPA: 3.53/4"),
                educationField(
                    "Gautam International Senior Secondary School, Dehradun",
                    "Higher Secondary Education (2016 - 2018)",
                    "Percentage: 90.8%"),
                educationField(
                    "Ann Mary School, Dehradun",
                    "Secondary School Education (2011 - 2016)",
                    "Percentage: 94.2%"),
                Center(
                  child: download(),
                )
              ],
            ),
          ),
        ]));
  }

  Container download() {
    return Container(
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
                style: ButtonStyle(
                    shadowColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 3 * 1 + 4, 4 * 2 + 7, 6 * 4 + 14)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(
                                color: Color.fromARGB(
                                    255, 3 * 1 + 4, 4 * 2 + 7, 6 * 4 + 14))))),
                onPressed: () async {
                  _launchURL(
                      "https://drive.google.com/file/d/1qDHH1M1fGM64uK0jsfqW0r883mIj-LPk/view?usp=sharing");
                },
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: new Text(
                    "Download Transcript",
                    style: TextStyle(
                        fontSize: width / 60, color: Colors.pinkAccent[400]),
                  ),
                ))));
  }

  Padding educationField(String heading, String text, additionalText) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
            width: width / 8 * 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width / 100),
              color: Color.fromARGB(130, 255, 255, 255),
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
                          color: Colors.pink[700],
                          height: 1.5,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        // SelectableText(
                        //   "• ",
                        //   style: GoogleFonts.getFont(
                        //     'Source Code Pro',
                        //     textStyle: TextStyle(
                        //       fontSize: width / 100,
                        //       fontWeight: FontWeight.bold,
                        //       color: Colors.white,
                        //       height: 1.5,
                        //     ),
                        //   ),
                        // ),
                        SelectableText(
                          text,
                          style: GoogleFonts.getFont(
                            'Source Code Pro',
                            textStyle: TextStyle(
                              fontSize: width / 90,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SelectableText(
                          "• ",
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
                        SelectableText(
                          additionalText,
                          style: GoogleFonts.getFont(
                            'Source Code Pro',
                            textStyle: TextStyle(
                              fontSize: width / 90,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
            )));
  }
}