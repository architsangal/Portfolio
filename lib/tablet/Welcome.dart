import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Welcome {
  var height, width, location;
  Welcome(this.height, this.width, this.location);
  Stack welcome() {
    return Stack(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: height, maxWidth: width),
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  RiveAnimation.asset(
                    location,
                  )
                ],
              )),
        ),
        // sized box
        // to give space
        // check this out- https://youtu.be/EHPu_DzRfqA
        SizedBox(
          height: height,
          width: width,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              // width: 240.0,
              // height: 42.0,
              alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(
                      flex: 10,
                    ),
                    SelectableText(
                      'Hi! I am',
                      //selectionControls: TextSelectionControls(),
                      style: GoogleFonts.getFont(
                        'Source Code Pro', //'Averia Serif Libre',
                        textStyle: TextStyle(
                          fontSize: width / 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 219, 216, 227),
                          height: 1,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    SelectableText(
                      'Archit Sangal',
                      style: GoogleFonts.getFont(
                        'Source Code Pro', //'Dancing Script',
                        textStyle: TextStyle(
                          fontSize: width / 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          height: 1,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    SelectableText(
                      'Mobile and Web Developer',
                      style: GoogleFonts.getFont(
                        'Pacifico',
                        textStyle: TextStyle(
                          fontSize: width / 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                          height: 1,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    download(),
                    Spacer(
                      flex: 8,
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _launchURL(Uri url) async {
    await canLaunchUrl(url)
        ? await launchUrl(url)
        : print('could_not_launch_this_app');
  }

  Container download() {
    return Container(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.pinkAccent[400]),
                  shadowColor:
                      MaterialStateProperty.all<Color>(Colors.pinkAccent[400]),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: Colors.pinkAccent[400])))),
              onPressed: () async {
                _launchURL(Uri.parse(
                    "https://drive.google.com/file/d/1AS9ZU0JDcxeLlP0dfq81Yocy0nYhXwOy/view?usp=sharing"));
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Download Resume",
                  style: GoogleFonts.getFont(
                    'Pacifico',
                    textStyle: TextStyle(
                      fontSize: width / 20,
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                ),
              ),
            )));
  }
}
