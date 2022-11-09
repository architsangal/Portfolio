import 'package:flutter/material.dart';
import 'package:portfolio/app_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';

import '../TextConstants.dart';

class Projects {
  // ignore: non_constant_identifier_names
  final screensize_height;
  // ignore: non_constant_identifier_names
  final screensize_width;
  static ScrollController scroller;
  Projects(this.screensize_height, this.screensize_width);

  Future<void> _launchURL(Uri url) async {
    await canLaunchUrl(url)
        ? await launchUrl(url)
        : print('could_not_launch_this_app');
  }

  // ignore: non_constant_identifier_names
  Container widget_container() {
    return Container(
      height: screensize_height * 1.1,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 15 * 16 + 6, 15 * 16 + 5, 15 * 16 + 5),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
            minWidth: screensize_width, minHeight: 1 * screensize_height),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Wrap(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    "My Projects",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Pacifico',
                      textStyle: TextStyle(
                        fontSize: screensize_width / 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(
                            255, 2 * 16 + 7, 6 * 16 + 6, 7 * 16 + 8),
                      ),
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Projects(screensize_height, screensize_width)
                        .projects(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget listToCard(List info) {
    return card(info[0], info[1], info[2], info[3], info[4], info[5], info[6],
        info[7], info[8], info[9]);
  }

  Container projects() {
    List<Widget> listOfCards = [];
    for (int i = 0; i < TextConstants.ProjectsInfo.length; i++) {
      listOfCards.add(listToCard(TextConstants.ProjectsInfo[i]));
    }
    return Container(
        height: this.screensize_height,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            children: listOfCards,
          ),
        ));
  }

  ClipRRect card(
      String image,
      String projectName,
      String role,
      String text,
      String projectLink,
      List<String> link,
      List<String> message,
      List<int> type,
      List<String> skills,
      bool onGoing) {
    final height = screensize_height;
    final width = screensize_width;

    List<Widget> linksList = [];
    for (int i = 0; i < link.length; i++) {
      if (type[i] == 1) {
        linksList.add(Tooltip(
            message: message[i],
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  enableFeedback: true,
                  backgroundColor: Colors.black,
                  shape: CircleBorder(),
                  side: BorderSide(color: Colors.blue)),
              child: Icon(
                AppIcons.github,
                size: height / 40,
              ),
              onPressed: () {
                _launchURL(Uri.parse(link[i]));
              },
            )));
      } else if (type[i] == 2) {
        linksList.add(Tooltip(
            message: message[i],
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  enableFeedback: true,
                  backgroundColor: Colors.black,
                  shape: CircleBorder(),
                  side: BorderSide(color: Colors.blue)),
              child: Icon(
                Icons.animation,
                size: height / 40,
              ),
              onPressed: () {
                _launchURL(Uri.parse(link[i]));
              },
            )));
      } else if (type[i] == 3) {
        linksList.add(Tooltip(
            message: message[i],
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  enableFeedback: true,
                  backgroundColor: Colors.black,
                  shape: CircleBorder(),
                  side: BorderSide(color: Colors.blue)),
              child: Icon(
                Icons.read_more_rounded,
                size: height / 40,
              ),
              onPressed: () {
                _launchURL(Uri.parse(link[i]));
              },
            )));
      } else if (type[i] == 4) {
        linksList.add(Tooltip(
            message: message[i],
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  enableFeedback: true,
                  backgroundColor: Colors.black,
                  shape: CircleBorder(),
                  side: BorderSide(color: Colors.blue)),
              child: Icon(
                Icons.article_rounded,
                size: height / 40,
              ),
              onPressed: () {
                _launchURL(Uri.parse(link[i]));
              },
            )));
      } else if (type[i] == 5) {
        linksList.add(Tooltip(
            message: message[i],
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  enableFeedback: true,
                  backgroundColor: Colors.black,
                  shape: CircleBorder(),
                  side: BorderSide(color: Colors.blue)),
              child: Icon(
                Icons.link_rounded,
                size: height / 40,
              ),
              onPressed: () {
                _launchURL(Uri.parse(link[i]));
              },
            )));
      } else if (type[i] == 6) {
        linksList.add(Tooltip(
            message: message[i],
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  enableFeedback: true,
                  backgroundColor: Colors.black,
                  shape: CircleBorder(),
                  side: BorderSide(color: Colors.blue)),
              child: Icon(
                Icons.play_arrow_rounded,
                size: height / 40,
              ),
              onPressed: () {
                _launchURL(Uri.parse(link[i]));
              },
            )));
      }
    }
    List<Padding> skillslist = [];
    for (String skillI in skills) {
      skillslist.add(skillused(skillI));
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(40.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: height / 3 * 2),
        child: Container(
          height: height * 8 / 9,
          width: width * 0.77,
          margin: const EdgeInsets.only(right: 20.0, top: 15, bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            border: Border.all(
              color: Color.fromARGB(255, 1 * 16 + 6, 8 * 16 + 7, 10 * 16 + 7),
              width: width / 350,
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 1 * 16 + 6, 8 * 16 + 7, 10 * 16 + 7),
                offset: Offset(1.0, 1.0),
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: FadeInImage(
                      height: 1 / 4 * height,
                      width: width / 1.4,
                      fit: BoxFit.cover,
                      placeholder: MemoryImage(kTransparentImage),
                      image: AssetImage(image),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Center(
                    child: Text(
                      projectName,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Source Code Pro',
                        textStyle: TextStyle(
                          fontSize: width / 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[800],
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: AutoSizeText(
                      role,
                      textAlign: TextAlign.center,
                      maxFontSize: 21,
                      style: GoogleFonts.getFont(
                        'Source Code Pro', //'Nanum Gothic',
                        textStyle: TextStyle(
                          fontSize: width / 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Center(
                    child: Text(
                      text,
                      overflow: TextOverflow.clip,
                      softWrap: true,
                      style: GoogleFonts.getFont(
                        'Source Code Pro', //'Nanum Gothic',
                        textStyle: TextStyle(
                          fontSize: width / 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(
                              255, 1 * 16 + 6, 8 * 16 + 7, 10 * 16 + 7),
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 1 / 18 * height),
                      child: Wrap(
                        children: [
                          Center(
                              child: Wrap(
                            children: linksList,
                          )),
                        ],
                      )),
                  projectLink.isNotEmpty
                      ? ConstrainedBox(
                          constraints:
                              BoxConstraints(minHeight: 1 / 18 * height),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              TextButton(
                                child: Text("View Project",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 2 * 16 + 7,
                                          6 * 16 + 6, 7 * 16 + 8),
                                    )),
                                onPressed: () {
                                  _launchURL(Uri.parse(projectLink));
                                },
                              )
                            ],
                          ))
                      : ConstrainedBox(
                          constraints: BoxConstraints(
                              minHeight: 1 / 18 * height, maxWidth: 0)),
                  ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 1 / 18 * height),
                      child: Wrap(
                        children: skillslist,
                      )),

                  // isssue https://github.com/flutter/flutter/issues/76093
                  // issue https://github.com/flutter/flutter/issues/79172
                  // Error Could not find a set of Noto fonts to display all missing characters. Please add a font asset for the missing characters. See: https://flutter.dev/docs/cookbook/design/fonts
                  // This is due to \u25ce
                  if (onGoing)
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints(minHeight: 0.5 / 18 * height),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: AutoSizeText(
                            " In progress",
                            maxFontSize: 16,
                            style: GoogleFonts.getFont(
                              'Source Code Pro', //'Nanum Gothic',
                              textStyle: TextStyle(
                                fontSize: width / 80,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding skillbutton(String text) {
    double width = screensize_width;
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
    final width = screensize_height > 939 && screensize_width > 1689
        ? screensize_width
        : 1639;

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
