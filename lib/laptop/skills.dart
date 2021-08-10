import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';

// ignore: camel_case_types
class skills {
  final height, width;

  skills(this.height, this.width);

  // ignore: non_constant_identifier_names
  Container Skills() {
    return Container(
      height: 1.1 * height,
      width: width,
      color: Colors.white,
      child: Stack(
        children: [
          Row(children: [
            Container(
              height: height * 1.2,
              width: width / 3,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: AssetImage("assets/images/skills.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: height * 1.2,
              width: 5 * width / 9,
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectableText(
                      'Skills',
                      style: GoogleFonts.getFont(
                        'Pacifico',
                        textStyle: TextStyle(
                          fontSize: width / 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          height: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 10,
                      width: width / 10,
                    ),
                    SelectableText(
                      'I am a full Stack Developer and have experience of making great looking responsive mobile apps and websites.' +
                          ' The websites and apps made by me are easy to maintain. I have an affinity for graphic designing and front end development but' +
                          ' I can work equally efficiently on backend as well. I like making digital art. Following are the key highlights -',
                      style: GoogleFonts.getFont(
                        'Source Code Pro',
                        textStyle: TextStyle(
                          fontSize: width / 90,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          height: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 20,
                      width: width / 20,
                    ),
                    Container(
                      child: Wrap(
                        children: [
                          skillbutton("Flutter"),
                          skillbutton("Dart"),
                          skillbutton("Rive"),
                          skillbutton("Firebase"),
                          skillbutton("Java"),
                          skillbutton("C++"),
                          skillbutton("Python"),
                          skillbutton("C"),
                          skillbutton("UI/UX"),
                          skillbutton("Android Developer"),
                          skillbutton("iOS Developer"),
                          skillbutton("Web Developer"),
                          skillbutton("Adobe Illustrator"),
                          skillbutton("Adobe InDesign"),
                          skillbutton("Adobe Photoshop"),
                          skillbutton("GitHub"),
                          skillbutton("Git"),
                          skillbutton("Assembly"),
                          skillbutton("Verilog"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height / 15,
                      width: width / 15,
                    ),
                    SelectableText(
                      '"I want to make things that inspire and truly make a difference"',
                      style: GoogleFonts.getFont(
                        'Source Code Pro', //'Nanum Gothic',
                        textStyle: TextStyle(
                          fontSize: width / 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                          height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }

  Padding skillbutton(String text) {
    double width = this.width;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width / 60),
          border: Border.all(
            color: Colors.black,
            width: width / 350,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SelectableText(
            text,
            style: GoogleFonts.getFont(
              'Source Code Pro', //'Nanum Gothic',
              textStyle: TextStyle(
                fontSize: width / 120,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding skillused(String text) {
    // final height = height > 939 &&
    //         width > 1689
    //     ? height
    //     : 939;
    final width = this.height > 939 && this.width > 1689 ? this.width : 1639;

    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width / 60),
          border: Border.all(
            color: Colors.black,
            width: width / 700,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: SelectableText(
            text,
            style: GoogleFonts.getFont(
              'Source Code Pro', //'Nanum Gothic',
              textStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
