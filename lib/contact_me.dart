import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';

// ignore: camel_case_types
class contact_me {
  final height, width;

  contact_me(this.height, this.width);

  // ignore: non_constant_identifier_names
  Container Contact_Me() {
    // Contacts
    return Container(
      width: width,
      height: 1 * height,
      child: Stack(children: [
        Container(
          height: height,
          width: width,
          child: FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: AssetImage("assets/images/contacts.jpg"),
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(100.0),
          child: Container(
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
                  SelectableText(
                    'Contact Me',
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
                  SizedBox(
                    height: height / 10,
                    width: width / 10,
                  ),
                  SelectableText(
                    'Email: architsangal2000@gmail.com',
                    style: GoogleFonts.getFont(
                      'Source Code Pro',
                      textStyle: TextStyle(
                        fontSize: width / 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                        height: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 20,
                    width: width / 10,
                  ),
                  SelectableText(
                    'GitHub: https://github.com/architsangal',
                    style: GoogleFonts.getFont(
                      'Source Code Pro',
                      textStyle: TextStyle(
                        fontSize: width / 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                        height: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 20,
                    width: width / 10,
                  ),
                  SelectableText(
                    'Phone No: (+91)9548697992',
                    style: GoogleFonts.getFont(
                      'Source Code Pro',
                      textStyle: TextStyle(
                        fontSize: width / 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                        height: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 20,
                    width: width / 10,
                  ),
                  SelectableText(
                    'LinkedIn: linkedin.com/in/archit-sangal-aa7185190',
                    style: GoogleFonts.getFont(
                      'Source Code Pro',
                      textStyle: TextStyle(
                        fontSize: width / 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                        height: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 20,
                    width: width / 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
