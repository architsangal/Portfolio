import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'app_icons.dart';
import 'package:fluttericon/entypo_icons.dart';

// ignore: camel_case_types
class contact_me {
  final height, width;

  contact_me(this.height, this.width);

  void _launchURL(String link) async =>
      await canLaunch(link) ? await launch(link) : throw 'Could not launch ';

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
                  Center(
                    child: SelectableText(
                      'Get In Touch',
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SelectableText(
                            'architsangal2000@gmail.com',
                            style: GoogleFonts.getFont(
                              'Source Code Pro',
                              textStyle: TextStyle(
                                fontSize: width / 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                                height: 1,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height / 40,
                            width: width / 10,
                          ),
                          Row(
                            children: [
                              Tooltip(
                                  message: "Email",
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        enableFeedback: true,
                                        primary: Color.fromARGB(255, 3 * 1 + 4,
                                            4 * 2 + 7, 6 * 4 + 14),
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255,
                                                3 * 1 + 4,
                                                4 * 2 + 7,
                                                6 * 4 + 14))),
                                    child: Icon(
                                      Entypo.mail,
                                    ),
                                    onPressed: () {
                                      _launchURL(
                                          "mailto:architsangal2000@gmail.com");
                                    },
                                  )),
                              Tooltip(
                                  message: "GitHub Profile",
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        enableFeedback: true,
                                        primary: Color.fromARGB(255, 3 * 1 + 4,
                                            4 * 2 + 7, 6 * 4 + 14),
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255,
                                                3 * 1 + 4,
                                                4 * 2 + 7,
                                                6 * 4 + 14))),
                                    child: Icon(
                                      AppIcons.github,
                                    ),
                                    onPressed: () {
                                      _launchURL(
                                          "https://github.com/architsangal");
                                    },
                                  )),
                              Tooltip(
                                  message: "LinkedIn Profile",
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        enableFeedback: true,
                                        primary: Color.fromARGB(255, 3 * 1 + 4,
                                            4 * 2 + 7, 6 * 4 + 14),
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255,
                                                3 * 1 + 4,
                                                4 * 2 + 7,
                                                6 * 4 + 14))),
                                    child: Icon(
                                      Entypo.linkedin_circled,
                                    ),
                                    onPressed: () {
                                      _launchURL(
                                          "https://www.linkedin.com/in/archit-sangal-aa7185190/");
                                    },
                                  )),
                              Tooltip(
                                  message: "Instagram Profile",
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        enableFeedback: true,
                                        primary: Color.fromARGB(255, 3 * 1 + 4,
                                            4 * 2 + 7, 6 * 4 + 14),
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255,
                                                3 * 1 + 4,
                                                4 * 2 + 7,
                                                6 * 4 + 14))),
                                    child: Icon(
                                      Entypo.instagram,
                                    ),
                                    onPressed: () {
                                      _launchURL(
                                          "https://www.instagram.com/architsangal2000/");
                                    },
                                  )),
                              Tooltip(
                                  message: "Facebook Profile",
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        enableFeedback: true,
                                        primary: Color.fromARGB(255, 3 * 1 + 4,
                                            4 * 2 + 7, 6 * 4 + 14),
                                        shape: CircleBorder(),
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255,
                                                3 * 1 + 4,
                                                4 * 2 + 7,
                                                6 * 4 + 14))),
                                    child: Icon(
                                      Entypo.facebook_circled,
                                    ),
                                    onPressed: () {
                                      _launchURL(
                                          "https://www.facebook.com/archit.sangal.5/");
                                    },
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [],
                      )
                    ],
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
