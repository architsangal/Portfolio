import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

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
            padding: const EdgeInsets.all(50.0),
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
                Spacer(
                  flex: 1,
                ),
                Container(
                  height: height / 2,
                  child: SingleChildScrollView(
                    primary: false,
                    scrollDirection: Axis.vertical,
                    child: Column(
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
                ),
                Spacer(
                  flex: 1,
                ),
                Center(
                  child: download(),
                ),
                Spacer(
                  flex: 1,
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
                  _launchURL(
                      "https://drive.google.com/file/d/1FhM_Em5N2421Zs0IS3g__1AuBsn4XgJl/view?usp=sharing");
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
            height: height / 6 > 120 ? height / 6 : 120,
            //width: width / 8 * 7,
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
