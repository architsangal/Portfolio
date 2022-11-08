import 'dart:convert';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';
import '../app_icons.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/zocial_icons.dart';
import 'package:http/http.dart' as http;
import 'package:another_flushbar/flushbar.dart';

// ignore: camel_case_types
class contact_me {
  // ignore: non_constant_identifier_names
  final key_of_form = GlobalKey<FormState>();

  final height, width, context;

  final _controllerEmail = TextEditingController();

  var _controllerName = TextEditingController();

  var _controllerMessage = TextEditingController();

  var _controllerSubject = TextEditingController();

  contact_me(this.height, this.width, this.context);

  Future<void> _launchURL(Uri url) async {
    await canLaunchUrl(url)
        ? await launchUrl(url)
        : print('could_not_launch_this_app');
  }

  Future sendEmail(
      String name, String email, String subject, String message) async {
    final serviceID = 'service_oyqa7f9';
    final templateID = 'template_qhrhijo';
    final userId = 'user_H0XlWl5d98NbDLWhWCxrb';
    final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
    final response = await http.post(url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          "service_id": serviceID,
          "template_id": templateID,
          "user_id": userId,
          "template_params": {
            "sender_name": name,
            "sender_email": email,
            "sender_subject": subject,
            "sender_message": message,
          },
        }));
    print(response.body);
  }

  // ignore: non_constant_identifier_names
  Container Contact_Me() {
    // Contacts
    return Container(
      width: width,
      height: 1.5 * height,
      child: Stack(children: [
        Container(
          height: height * 1.5,
          width: width,
          child: FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: AssetImage("assets/images/contacts.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width / 100),
              color: Color.fromARGB(130, 255, 255, 255),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: SelectableText(
                      'Get In Touch',
                      style: GoogleFonts.getFont(
                        'Pacifico',
                        textStyle: TextStyle(
                          fontSize: width / 10,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(
                              255, 3 * 1 + 4, 4 * 2 + 7, 6 * 4 + 14),
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  SelectableText(
                    'architsangal2000@gmail.com',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Source Code Pro',
                      textStyle: TextStyle(
                        fontSize: width / 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                        height: 1,
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      //crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Tooltip(
                            message: "Email",
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  enableFeedback: true,
                                  backgroundColor: Colors.pink,
                                  shadowColor: Colors.pinkAccent,
                                  shape: CircleBorder(),
                                  side: BorderSide(color: Colors.pink)),
                              child: Icon(
                                Entypo.mail,
                              ),
                              onPressed: () {
                                _launchURL(Uri.parse(
                                    "mailto:architsangal2000@gmail.com"));
                              },
                            )),
                        Tooltip(
                            message: "GitHub Profile",
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  enableFeedback: true,
                                  backgroundColor: Colors.pink,
                                  shadowColor: Colors.pinkAccent,
                                  shape: CircleBorder(),
                                  side: BorderSide(color: Colors.pink)),
                              child: Icon(
                                AppIcons.github,
                              ),
                              onPressed: () {
                                _launchURL(Uri.parse(
                                    "https://github.com/architsangal"));
                              },
                            )),
                        Tooltip(
                            message: "LinkedIn Profile",
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  enableFeedback: true,
                                  backgroundColor: Colors.pink,
                                  shadowColor: Colors.pinkAccent,
                                  shape: CircleBorder(),
                                  side: BorderSide(color: Colors.pink)),
                              child: Icon(
                                Entypo.linkedin_circled,
                              ),
                              onPressed: () {
                                _launchURL(Uri.parse(
                                    "https://www.linkedin.com/in/archit-sangal-aa7185190/"));
                              },
                            )),
                        Tooltip(
                            message: "Instagram Profile",
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  enableFeedback: true,
                                  backgroundColor: Colors.pink,
                                  shadowColor: Colors.pinkAccent,
                                  shape: CircleBorder(),
                                  side: BorderSide(color: Colors.pink)),
                              child: Icon(
                                Entypo.instagram,
                              ),
                              onPressed: () {
                                _launchURL(Uri.parse(
                                    "https://www.instagram.com/architsangal2000/"));
                              },
                            )),
                        Tooltip(
                            message: "Facebook Profile",
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  enableFeedback: true,
                                  backgroundColor: Colors.pink,
                                  shadowColor: Colors.pinkAccent,
                                  shape: CircleBorder(),
                                  side: BorderSide(color: Colors.pink)),
                              child: Icon(
                                Entypo.facebook_circled,
                              ),
                              onPressed: () {
                                _launchURL(Uri.parse(
                                    "https://www.facebook.com/archit.sangal.5/"));
                              },
                            )),
                        Tooltip(
                            message: "stackoverflow Profile",
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  enableFeedback: true,
                                  backgroundColor: Colors.pink,
                                  shadowColor: Colors.pinkAccent,
                                  shape: CircleBorder(),
                                  side: BorderSide(color: Colors.pink)),
                              child: Icon(
                                Zocial.stackoverflow,
                              ),
                              onPressed: () {
                                _launchURL(Uri.parse(
                                    "https://stackoverflow.com/users/13279920/archit-sangal?tab=profile"));
                              },
                            )),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Container(
                    child: Text(
                      "I would love to hear from you! Whether you " +
                          "have a question, want to discuss your project" +
                          " and ideas, or just for a general chit-chat. Drop me a message here ->",
                      overflow: TextOverflow.clip,
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: this.width / 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(
                            255, 3 * 1 + 4, 4 * 2 + 7, 6 * 4 + 14),
                        height: 1,
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Form(
                    key: key_of_form,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: TextFormField(
                              validator: (text) {
                                if (text.isNotEmpty)
                                  return null;
                                else
                                  return "Field Required";
                              },
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
                                          color: Color.fromARGB(255, 3 * 1 + 4,
                                              4 * 2 + 7, 6 * 4 + 14)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 3 * 1 + 4,
                                              4 * 2 + 7, 6 * 4 + 14)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  labelText:
                                      'What do you call yourself? (Your Name)',
                                  prefixIcon: Icon(
                                    Icons.person_outline_rounded,
                                    color: Color.fromARGB(
                                        255, 3 * 1 + 4, 4 * 2 + 7, 6 * 4 + 14),
                                  )),
                            ),
                          ),
                        ),
                        Container(
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
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return 'Field Required';
                                } else if (!EmailValidator.validate(text)) {
                                  return "Enter a valid email address";
                                } else
                                  return null;
                              },
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 3 * 1 + 4,
                                          4 * 2 + 7, 6 * 4 + 14),
                                      fontStyle: FontStyle.italic),
                                  contentPadding: EdgeInsets.all(15.0),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 3 * 1 + 4,
                                              4 * 2 + 7, 6 * 4 + 14)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 3 * 1 + 4,
                                              4 * 2 + 7, 6 * 4 + 14)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  labelText: 'Your Email Address',
                                  prefixIcon: Icon(
                                    Icons.mail_outline_rounded,
                                    color: Color.fromARGB(
                                        255, 3 * 1 + 4, 4 * 2 + 7, 6 * 4 + 14),
                                  )),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: TextFormField(
                              validator: null,
                              obscureText: false,
                              style: TextStyle(
                                color: Colors.pinkAccent[400],
                              ),
                              controller: _controllerSubject,
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
                                          color: Color.fromARGB(255, 3 * 1 + 4,
                                              4 * 2 + 7, 6 * 4 + 14)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 3 * 1 + 4,
                                              4 * 2 + 7, 6 * 4 + 14)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  labelText: 'Subject',
                                  prefixIcon: Icon(
                                    Entypo.pencil,
                                    color: Color.fromARGB(
                                        255, 3 * 1 + 4, 4 * 2 + 7, 6 * 4 + 14),
                                  )),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: TextFormField(
                              validator: (text) {
                                if (text.isNotEmpty)
                                  return null;
                                else
                                  return "Field Required";
                              },
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
                                          color: Color.fromARGB(255, 3 * 1 + 4,
                                              4 * 2 + 7, 6 * 4 + 14)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 3 * 1 + 4,
                                              4 * 2 + 7, 6 * 4 + 14)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  labelText: 'Message',
                                  prefixIcon: Icon(
                                    Icons.subject_outlined,
                                    color: Color.fromARGB(
                                        255, 3 * 1 + 4, 4 * 2 + 7, 6 * 4 + 14),
                                  )),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    shadowColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 3 * 1 + 4,
                                                4 * 2 + 7, 6 * 4 + 14)),
                                    shape:
                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                                side: BorderSide(
                                                    color: Color.fromARGB(
                                                        255,
                                                        3 * 1 + 4,
                                                        4 * 2 + 7,
                                                        6 * 4 + 14))))),
                                onPressed: () async {
                                  if (key_of_form.currentState.validate()) {
                                    sendEmail(
                                        _controllerName.text,
                                        _controllerEmail.text,
                                        _controllerSubject.text,
                                        _controllerMessage.text.replaceAll("\n",
                                            "<br>")); // https://stackoverflow.com/questions/40352629/im-unable-to-add-newlines-to-the-emails-content
                                    _controllerEmail.clear();
                                    _controllerMessage.clear();
                                    _controllerName.clear();
                                    _controllerSubject.clear();
                                    await Flushbar(
                                      backgroundColor: Colors.black,
                                      messageText: Text(
                                        'Message Successfully sent',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.pinkAccent[400],
                                          fontSize: width / 50,
                                        ),
                                      ),
                                      duration: Duration(seconds: 3),
                                    ).show(context);
                                  }
                                },
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
                    ),
                  ),
                  Spacer(
                    flex: 1,
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
