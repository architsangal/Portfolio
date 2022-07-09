import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Welcome {
  var height, width, _artboard;
  Welcome(this.height, this.width, this._artboard);
  Stack welcome() {
    return Stack(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: height, maxWidth: width),
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  _artboard != null
                      ? Rive(
                          artboard: _artboard,
                          fit: BoxFit.cover,
                        )
                      : Container(),
                ],
              )),
        ),
        // sized box
        // to give space
        // check this out- https://youtu.be/EHPu_DzRfqA
        Container(
          height: height,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              width: width,
              height: height,
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                primary: false,
                scrollDirection: Axis.vertical,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        'Hi! I am',
                        //selectionControls: TextSelectionControls(),
                        style: GoogleFonts.getFont(
                          'Source Code Pro', //'Averia Serif Libre',
                          textStyle: TextStyle(
                            fontSize: width / 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 219, 216, 227),
                            height: 1,
                          ),
                        ),
                      ),
                      //Spacer(flex: 1),
                      SelectableText(
                        'Archit Sangal',
                        style: GoogleFonts.getFont(
                          'Source Code Pro', //'Dancing Script',
                          textStyle: TextStyle(
                            fontSize: width / 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1,
                          ),
                        ),
                      ),
                      //Spacer(flex: 1),
                      SelectableText(
                        'Mobile and Web Developer',
                        style: GoogleFonts.getFont(
                          'Pacifico',
                          textStyle: TextStyle(
                            fontSize: width / 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink,
                            height: 1,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height / 3,
                      ),
                      download(),
                    ]),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _launchURL(_url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  Container download() {
    return Container(
        alignment: Alignment.bottomRight,
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
                _launchURL(
                    "https://architsangal.github.io/Resume/");
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Download Resume",
                  style: GoogleFonts.getFont(
                    'Pacifico',
                    textStyle: TextStyle(
                      fontSize: width / 60,
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                ),
              ),
            )));
  }
}
