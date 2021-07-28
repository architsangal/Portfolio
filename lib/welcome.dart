import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class welcome {
  Artboard _artboard;
  double width, height;

  welcome(this._artboard, this.height, this.width);

  // ignore: non_constant_identifier_names
  Stack Welcome() {
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
        SizedBox(
          height: height,
          width: width,
          child: Padding(
            padding: const EdgeInsets.all(100.0),
            child: Container(
              width: 240.0,
              height: 42.0,
              alignment: Alignment.centerLeft,
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
                    SizedBox(
                      height: height / 30,
                      width: width / 10,
                    ),
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
                    SizedBox(
                      height: height / 30,
                      width: width / 10,
                    ),
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
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
