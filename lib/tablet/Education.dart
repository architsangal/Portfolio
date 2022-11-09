import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class Education {
  final height, width;
  Education(this.height, this.width);

  Future<void> _launchURL(Uri url) async {
    await canLaunchUrl(url)
        ? await launchUrl(url)
        : print('could_not_launch_this_app');
  }

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
                image: AssetImage('assets/images/education.jpg')),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(
                  flex: 1,
                ),
                SelectableText(
                  'Education',
                  style: GoogleFonts.getFont(
                    'Pacifico',
                    textStyle: TextStyle(
                      fontSize: width / 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 2,
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      educationField(
                          "International Institute of Information Technology Bangalore",
                          "Integrated M.Tech. in Computer Science (2019 - 2024)",
                          "CGPA: 3.61/4"),
                      educationField(
                          "Gautam International Senior Secondary School, Dehradun",
                          "Higher Secondary Education (2016 - 2018)",
                          "Percentage: 90.8%"),
                      educationField(
                          "Ann Mary School, Dehradun",
                          "Secondary School Education (2011 - 2016)",
                          "Percentage: 94.2%"),
                    ],
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                Center(
                  child: download(),
                ),
                Spacer(
                  flex: 4,
                ),
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
                  _launchURL(Uri.parse(
                      "https://drive.google.com/file/d/14zlF74qR8eExxwNoMua2WVc--jyT2U5o/view?usp=sharing"));
                },
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: new Text(
                    "Download Transcript",
                    style: TextStyle(
                        fontSize: width / 20, color: Colors.pinkAccent[400]),
                  ),
                ))));
  }

  Padding educationField(String heading, String text, additionalText) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
            width: width / 4 * 3,
            height: height / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width / 100),
              color: Color.fromARGB(130, 255, 255, 255),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      heading,
                      softWrap: true,
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.getFont(
                        'Source Code Pro',
                        textStyle: TextStyle(
                          fontSize: width / 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink[700],
                          height: 1.5,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      text,
                      softWrap: true,
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.getFont(
                        'Source Code Pro',
                        textStyle: TextStyle(
                          fontSize: width / 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                          height: 1.5,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Row(
                      children: [
                        SelectableText(
                          "• ",
                          style: GoogleFonts.getFont(
                            'Source Code Pro',
                            textStyle: TextStyle(
                              fontSize: width / 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Text(
                          additionalText,
                          softWrap: true,
                          overflow: TextOverflow.clip,
                          style: GoogleFonts.getFont(
                            'Source Code Pro',
                            textStyle: TextStyle(
                              fontSize: width / 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 1,
                    ),
                  ]),
            )));
  }
}
