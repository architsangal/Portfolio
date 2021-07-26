import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'app_icons.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/zocial_icons.dart';

// ignore: camel_case_types
class contact_me {
  final height, width;

  final _controllerEmail = TextEditingController();

  var _controllerName = TextEditingController();

  var _controllerMessage = TextEditingController();

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
                                        primary: Colors.pink,
                                        shadowColor: Colors.pinkAccent,
                                        shape: CircleBorder(),
                                        side: BorderSide(color: Colors.pink)),
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
                                        primary: Colors.pink,
                                        shadowColor: Colors.pinkAccent,
                                        shape: CircleBorder(),
                                        side: BorderSide(color: Colors.pink)),
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
                                        primary: Colors.pink,
                                        shadowColor: Colors.pinkAccent,
                                        shape: CircleBorder(),
                                        side: BorderSide(color: Colors.pink)),
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
                                        primary: Colors.pink,
                                        shadowColor: Colors.pinkAccent,
                                        shape: CircleBorder(),
                                        side: BorderSide(color: Colors.pink)),
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
                                        primary: Colors.pink,
                                        shadowColor: Colors.pinkAccent,
                                        shape: CircleBorder(),
                                        side: BorderSide(color: Colors.pink)),
                                    child: Icon(
                                      Entypo.facebook_circled,
                                    ),
                                    onPressed: () {
                                      _launchURL(
                                          "https://www.facebook.com/archit.sangal.5/");
                                    },
                                  )),
                              Tooltip(
                                  message: "stackoverflow Profile",
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        enableFeedback: true,
                                        primary: Colors.pink,
                                        shadowColor: Colors.pinkAccent,
                                        shape: CircleBorder(),
                                        side: BorderSide(color: Colors.pink)),
                                    child: Icon(
                                      Zocial.stackoverflow,
                                    ),
                                    onPressed: () {
                                      _launchURL(
                                          "https://stackoverflow.com/users/13279920/archit-sangal?tab=profile");
                                    },
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SelectableText(
                              "I would love to hear from you! Whether you have a question,\n" +
                                  " want to discuss your project and ideas or just for a general geeky chit-chat."),
                          Container(
                            width: this.width / 3,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: TextFormField(
                                obscureText: false,
                                style: TextStyle(
                                  color: Colors.pinkAccent[400],
                                ),
                                controller: _controllerName,
                                autocorrect: false,
                                cursorColor: Color.fromARGB(
                                    255, 3 * 1 + 4, 4 * 2 + 7, 6 * 4 + 14),
                                cursorHeight: 25,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                        color: Color.fromARGB(255, 3 * 1 + 4,
                                            4 * 2 + 7, 6 * 4 + 14),
                                        fontStyle: FontStyle.italic),
                                    contentPadding: EdgeInsets.all(15.0),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255,
                                                3 * 1 + 4,
                                                4 * 2 + 7,
                                                6 * 4 + 14)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255,
                                                3 * 1 + 4,
                                                4 * 2 + 7,
                                                6 * 4 + 14)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    labelText:
                                        'What do you like to call yourself? (Your Name)',
                                    prefixIcon: Icon(
                                      Icons.person_outline_rounded,
                                      color: Color.fromARGB(255, 3 * 1 + 4,
                                          4 * 2 + 7, 6 * 4 + 14),
                                    )),
                              ),
                            ),
                          ),
                          Container(
                            width: this.width / 3,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                obscureText: false,
                                style: TextStyle(
                                  color: Colors.pinkAccent[400],
                                ),
                                controller: _controllerEmail,
                                autocorrect: false,
                                cursorColor: Color.fromARGB(
                                    255, 3 * 1 + 4, 4 * 2 + 7, 6 * 4 + 14),
                                cursorHeight: 25,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                        color: Color.fromARGB(255, 3 * 1 + 4,
                                            4 * 2 + 7, 6 * 4 + 14),
                                        fontStyle: FontStyle.italic),
                                    contentPadding: EdgeInsets.all(15.0),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255,
                                                3 * 1 + 4,
                                                4 * 2 + 7,
                                                6 * 4 + 14)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255,
                                                3 * 1 + 4,
                                                4 * 2 + 7,
                                                6 * 4 + 14)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    labelText: 'Your Email Address',
                                    prefixIcon: Icon(
                                      Icons.mail_outline_rounded,
                                      color: Color.fromARGB(255, 3 * 1 + 4,
                                          4 * 2 + 7, 6 * 4 + 14),
                                    )),
                              ),
                            ),
                          ),
                          Container(
                            width: this.width / 3,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: TextFormField(
                                minLines: 8,
                                maxLines: 8,
                                obscureText: false,
                                style: TextStyle(
                                  color: Colors.pinkAccent[400],
                                ),
                                controller: _controllerMessage,
                                autocorrect: false,
                                cursorColor: Color.fromARGB(
                                    255, 3 * 1 + 4, 4 * 2 + 7, 6 * 4 + 14),
                                cursorHeight: 25,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                        color: Color.fromARGB(255, 3 * 1 + 4,
                                            4 * 2 + 7, 6 * 4 + 14),
                                        fontStyle: FontStyle.italic),
                                    contentPadding: EdgeInsets.all(15.0),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255,
                                                3 * 1 + 4,
                                                4 * 2 + 7,
                                                6 * 4 + 14)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255,
                                                3 * 1 + 4,
                                                4 * 2 + 7,
                                                6 * 4 + 14)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    labelText: 'Message',
                                    prefixIcon: Icon(
                                      Icons.message,
                                      color: Color.fromARGB(255, 3 * 1 + 4,
                                              4 * 2 + 7, 6 * 4 + 14)
                                          .withOpacity(0),
                                    )),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      shadowColor: MaterialStateProperty.all<Color>(
                                          Color.fromARGB(255, 3 * 1 + 4,
                                              4 * 2 + 7, 6 * 4 + 14)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                              side: BorderSide(
                                                  color: Color.fromARGB(
                                                      255,
                                                      3 * 1 + 4,
                                                      4 * 2 + 7,
                                                      6 * 4 + 14))))),
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: new Text(
                                      "Send",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.pinkAccent[400]),
                                    ),
                                  )),
                            ),
                          ),
                        ],
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
