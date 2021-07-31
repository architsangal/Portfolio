import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';

class Education {
  var height, width;
  Education(this.height, this.width);

  Container education() {
    return Container(
      height: height,
      width: width,
      color: Colors.black,
      child: Stack(children: [
        Center(
            child: Container(
                child: FadeInImage(
                    width: width,
                    height: height,
                    fit: BoxFit.cover,
                    placeholder: MemoryImage(kTransparentImage),
                    image: AssetImage('assets/images/education.jpg')))),
        Padding(
          padding: const EdgeInsets.all(100.0),
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width / 100),
              color: Color.fromARGB(130, 255, 255, 255),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SelectableText(
                      'Education',
                      style: GoogleFonts.getFont(
                        'Pacifico',
                        textStyle: TextStyle(
                          fontSize: width / 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(
                              255, 3 * 1 + 4, 4 * 2 + 7, 6 * 4 + 14),
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 10,
                    width: width / 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.black))),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 3 * 1 + 4,
                                            4 * 2 + 7, 6 * 4 + 14)),
                              ),
                              onPressed: () {},
                              child: Padding(
                                  padding: const EdgeInsets.all(100.0),
                                  child: Text(
                                    "Testing",
                                    style: GoogleFonts.getFont(
                                        'Source Code Pro',
                                        color: Colors.white,
                                        fontSize: width / 60),
                                  ))),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
