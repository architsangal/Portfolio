import 'package:flutter/material.dart';
import 'package:portfolio/app_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects {
  // ignore: non_constant_identifier_names
  final screensize_height;
  // ignore: non_constant_identifier_names
  final screensize_width;

  Projects(this.screensize_height, this.screensize_width);

  void _launchURL(String link) async =>
      await canLaunch(link) ? await launch(link) : throw 'Could not launch ';

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

  Container projects() {
    return Container(
        height: this.screensize_height,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            children: [
              card(
                  'assets/images/1.jpg',
                  'Portfolio In Flutter',
                  'Primary Developer',
                  "This is a flutter project. This is the very project you are looking at right now. It is responsive(still not completely implemented). Animation used for moon and shooting star use rive. It use new scrolling techinques like 'Parallex Effect' and 'zoom out'(still not completely implemented).",
                  "https://architsangal.github.io/Archit_Sangal_Portfolio/#/",
                  [
                    "https://github.com/architsangal/Flutter-Web-Code",
                    "https://github.com/architsangal/Archit_Sangal_Portfolio",
                    "https://rive.app/community/125-189-black-sky-with-shooting-stars/",
                    "https://rive.app/community/126-190-black-sky-with-shooting-stars/",
                    "https://github.com/architsangal/Archit_Sangal_Portfolio#hi-there-",
                  ],
                  [
                    "Flutter Code",
                    "Generated JavaScript Code",
                    "Rive Animation Web",
                    "Rive Animation Mobile",
                    "README"
                  ],
                  [
                    1,
                    1,
                    2,
                    2,
                    3,
                  ],
                  // 1 - github,
                  // 2 - Rive Animation
                  // 3 - README
                  // 4 - Certification
                  [
                    'dart',
                    'flutter',
                    'rive',
                  ],
                  true),
              card(
                  'assets/images/12.jpg',
                  'FoodFast',
                  'Primary Developer',
                  "This is a flutter project for IIITB canteen. Using this app we can order food. Pay it using upi. We can also pay at the time of recieving order. Much attention is paid to it's UI/UX aspect.But it is only made for the users of iiitb. So in order to use it, you must have a iiit outlook address.",
                  "",
                  [
                    "https://github.com/architsangal/FoodFast",
                    "https://github.com/architsangal/FoodFast/blob/master/README.md",
                  ],
                  ["Source Code", "README"],
                  [
                    1,
                    3,
                  ],
                  // 1 - github,
                  // 2 - Rive Animation
                  // 3 - README
                  // 4 - Certification
                  [
                    'Flutter',
                    'Dart',
                    'Rive',
                    'Android',
                    'iOS',
                    'Web',
                    'API',
                    'Firebase',
                    'Adobe Illustrator'
                  ],
                  true),
              card(
                  'assets/images/7.jpg',
                  'IIT Bombay FOSSEE fellowship',
                  'Contributor',
                  "Under FOSSEE, Indian Institute of Technology, Bombay followship we made Lecture notes on Linear Algebra. It was my first fellowship and was offered to me in my first year (in 2020), under Prof. Prabhu Ramachandran. We use manim for this project(Python -based animation tool). Feel free to check out the lecture notes. Links are given below -",
                  "https://math.animations.fossee.in/contents/linear-algebra",
                  [
                    "https://github.com/architsangal/FSF-mathematics-python-code-archive/tree/master/FSF-2020/linear-algebra/linear-transformations",
                    "https://math.animations.fossee.in/contents/linear-algebra/linear-transformations/linear-transformations-(linear-maps)",
                    "https://math.animations.fossee.in/contents/linear-algebra/linear-transformations/the-four-fundamental-subspaces",
                    "https://math.animations.fossee.in/contents/linear-algebra/linear-transformations/orthonormal-bases",
                    "https://math.animations.fossee.in/contents/linear-algebra/linear-transformations/gram-schmidt-orthogonalization-process",
                    "https://github.com/architsangal/FSF-mathematics-python-code-archive/tree/master/FSF-2020/linear-algebra/linear-transformations#contributer-archit-sangal",
                    "https://drive.google.com/file/d/1mwfxXs8ktzMRagwzUrCR6PH_lInEryCi/view?usp=sharing",
                  ],
                  [
                    "Source Code",
                    "Lecture Notes: Linear Transformations (Linear Maps)",
                    "Lecture Notes: The Four Fundamental Subspaces",
                    "Lecture Notes: Orthonormal Bases",
                    "Lecture Notes: Gram-Schmidt Orthogonalization Process",
                    "README",
                    "Certificate"
                  ],
                  [
                    1,
                    5,
                    5,
                    5,
                    5,
                    3,
                    4,
                  ],
                  // 1 - github,
                  // 2 - Rive Animation
                  // 3 - README
                  // 4 - Certification
                  [
                    'Manim',
                    'Python3',
                    'Python',
                  ],
                  false),
              card(
                  'assets/images/8.jpg',
                  'Android Flight Booking System',
                  'Primary Developer',
                  "Entry Project for the official programming and development club of International Institute of Information, Bangalore. It is an upgraded version of C project. This was a fully functional Flight Booking System. It is be used to book, cancel, edit or update imaginary flights booking. After booking or cancelling the tickets, we will recieve a email. This is a native java code.",
                  "",
                  [
                    "https://github.com/architsangal/Android-App-Flight-Booking-System",
                    "https://github.com/architsangal/Android-App-Flight-Booking-System/blob/master/Project%20Report.pdf",
                  ],
                  ["Source Code", "README"],
                  [
                    1,
                    3,
                  ],
                  // 1 - github,
                  // 2 - Rive Animation
                  // 3 - README
                  // 4 - Certification
                  ['Android', 'Java', 'API', 'Firebase'],
                  false),
              card(
                  'assets/images/11.jpg',
                  'Truck On Highway Finding Their Path',
                  'Primary Developer',
                  "There are a number of stations distributed all over the map. Packages can be shipped from any station to any other station. Stations are connected to Hubs, which are the nodes of a Highway network. Using graphs, shortest path is found.",
                  "",
                  [
                    "https://github.com/architsangal/A-Game-Show------Simple-server-and-client-programs",
                    "https://github.com/architsangal/A-Game-Show------Simple-server-and-client-programs/blob/main/Project%20Report.pdf",
                  ],
                  ["Source Code", "README"],
                  [
                    1,
                    3,
                  ],
                  // 1 - github,
                  // 2 - Rive Animation
                  // 3 - README
                  // 4 - Certification
                  // 5 - YouTube
                  ['Java', 'Server Client Interaction', "Applet Java"],
                  false),
              card(
                  'assets/images/4.png',
                  'Carrom Cum Air Hockey',
                  'Co Developer',
                  "This was a project developed in a Hackathon, conducted by zense. It was built on Canvas Development. This Project deals with complex Physics Phenomenon of oblique collision. The code for Collision is a part of complex physics and a lot of projection calculation.",
                  "https://architsangal.github.io/Canvas-Competition/",
                  [
                    "https://github.com/architsangal/Canvas-Competition#carrom-cum-air-hockey-new-version",
                    "https://github.com/architsangal/Canvas-Competition#contributers",
                  ],
                  ["Source Code", "README"],
                  [
                    1,
                    3,
                  ],
                  // 1 - github,
                  // 2 - Rive Animation
                  // 3 - README
                  // 4 - Certification
                  [
                    'JavaScript',
                    'HTML',
                  ],
                  false),
              card(
                  'assets/images/9.jpg',
                  'Quiz Game Show',
                  'Primary Developer',
                  "This is a simple server and client program. There is a host who conducts the show and participants/players who provide answers.",
                  "",
                  [
                    "https://github.com/architsangal/A-Game-Show------Simple-server-and-client-programs",
                    "https://github.com/architsangal/A-Game-Show------Simple-server-and-client-programs/blob/main/Project%20Report.pdf",
                    "https://youtu.be/pFS9HEVbAIU",
                  ],
                  ["Source Code", "README", "Youtube Video Explaination"],
                  [
                    1,
                    3,
                    6,
                  ],
                  // 1 - github,
                  // 2 - Rive Animation
                  // 3 - README
                  // 4 - Certification
                  // 5 - YouTube
                  [
                    'Java',
                    'Server Client Interaction',
                  ],
                  false),
              card(
                  'assets/images/5.jpg',
                  'Air Ticketing System',
                  'Product Manager & Co Developer',
                  "Project was a group project which needed to be implemented in C. It need to perform all the test of an Airline Ticketing System. For example- log-in, booking, searching, cancelling, printing the ticket. Also, from the airline's side, it should be able to add the ticket, etc.",
                  "",
                  [
                    "https://github.com/architsangal/Air-Ticketing-System",
                    "https://github.com/architsangal/Air-Ticketing-System/blob/master/README.pdf",
                  ],
                  ["Source Code", "README"],
                  [
                    1,
                    3,
                  ],
                  // 1 - github,
                  // 2 - Rive Animation
                  // 3 - README
                  // 4 - Certification
                  ['C', 'makefile', 'Adobe Illustrator'],
                  false),
              card(
                  'assets/images/6.png',
                  'COMMAND LINE PATTERN MATCHING PROGRAM',
                  'Co Developer',
                  'Project was a group project which needed to be implemented in Python. It is a Project which deals with making of a customised "UBUNTU TERMINAL COMMAND", changing the "PATH VARIABLE" by making changes to .bashrc, involves the use of ReGex (re module of Python) and os related modules of python',
                  "",
                  [
                    "https://github.com/architsangal/COMMAND-LINE-PATTERN-MATCHING-PROGRAM#run-the-following-commands-and-you-are-ready-for-new-customized-command-on-ubuntu-",
                    "https://github.com/architsangal/COMMAND-LINE-PATTERN-MATCHING-PROGRAM#run-the-following-commands-and-you-are-ready-for-new-customized-command-on-ubuntu-",
                  ],
                  ["Source Code", "README"],
                  [
                    1,
                    3,
                  ],
                  // 1 - github,
                  // 2 - Rive Animation
                  // 3 - README
                  // 4 - Certification
                  ['Python', "ReGex"],
                  false),
              card(
                  'assets/images/10.jpg',
                  'Modifying PLY Files',
                  'Primary Developer',
                  "Used to edit ply files. It used meshlab to check it everything is working or not",
                  "",
                  [
                    "https://github.com/architsangal/Modifying-.ply-files",
                    "https://github.com/architsangal/Modifying-.ply-files/blob/main/README.md",
                  ],
                  ["Source Code", "README"],
                  [
                    1,
                    3,
                  ],
                  // 1 - github,
                  // 2 - Rive Animation
                  // 3 - README
                  // 4 - Certification
                  // 5 - YouTube
                  [
                    'cpp',
                    'c++',
                    'ply files',
                    'meshlab',
                  ],
                  false),
              card(
                  'assets/images/3.jpg',
                  'Fun Portfolio',
                  'Primary Developer',
                  "It was a fun project. I start it to get an idea of how HTML,CSS and JAvaScript work. It was one of my initial projects so please don't jugde.",
                  "https://architsangal.github.io/My-Portfolio/",
                  [
                    "https://github.com/architsangal/My-Portfolio#my-portfolio",
                    "https://architsangal.github.io/My-Portfolio/",
                  ],
                  ["Source Code", "README"],
                  [
                    1,
                    3,
                  ],
                  // 1 - github,
                  // 2 - Rive Animation
                  // 3 - README
                  // 4 - Certification
                  [
                    'JavaScript',
                    'HTML',
                    'CSS',
                  ],
                  false),
              card(
                  'assets/images/2.jpg',
                  'Car Racing 90s',
                  'Primary Developer',
                  "Created this car racing game using Pygame. I enjoyed this game a lot so I recreated this game. This project was one of my early projects. It has one level. Though it can be extended to multi-levels quite easily using python.",
                  "",
                  [
                    "https://github.com/architsangal/Flutter-Web-Code",
                    "https://github.com/architsangal/CAR_RACE-Pygame#car_race-pygame",
                  ],
                  ["Source Code", "README"],
                  [
                    1,
                    3,
                  ],
                  // 1 - github,
                  // 2 - Rive Animation
                  // 3 - README
                  // 4 - Certification
                  [
                    'python',
                    'python3',
                    'pygame',
                  ],
                  false),
            ],
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
                  primary: Colors.black,
                  shape: CircleBorder(),
                  side: BorderSide(color: Colors.blue)),
              child: Icon(
                AppIcons.github,
                size: height / 40,
              ),
              onPressed: () {
                _launchURL(link[i]);
              },
            )));
      } else if (type[i] == 2) {
        linksList.add(Tooltip(
            message: message[i],
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  enableFeedback: true,
                  primary: Colors.black,
                  shape: CircleBorder(),
                  side: BorderSide(color: Colors.blue)),
              child: Icon(
                Icons.animation,
                size: height / 40,
              ),
              onPressed: () {
                _launchURL(link[i]);
              },
            )));
      } else if (type[i] == 3) {
        linksList.add(Tooltip(
            message: message[i],
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  enableFeedback: true,
                  primary: Colors.black,
                  shape: CircleBorder(),
                  side: BorderSide(color: Colors.blue)),
              child: Icon(
                Icons.read_more_rounded,
                size: height / 40,
              ),
              onPressed: () {
                _launchURL(link[i]);
              },
            )));
      } else if (type[i] == 4) {
        linksList.add(Tooltip(
            message: message[i],
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  enableFeedback: true,
                  primary: Colors.black,
                  shape: CircleBorder(),
                  side: BorderSide(color: Colors.blue)),
              child: Icon(
                Icons.article_rounded,
                size: height / 40,
              ),
              onPressed: () {
                _launchURL(link[i]);
              },
            )));
      } else if (type[i] == 5) {
        linksList.add(Tooltip(
            message: message[i],
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  enableFeedback: true,
                  primary: Colors.black,
                  shape: CircleBorder(),
                  side: BorderSide(color: Colors.blue)),
              child: Icon(
                Icons.link_rounded,
                size: height / 40,
              ),
              onPressed: () {
                _launchURL(link[i]);
              },
            )));
      } else if (type[i] == 6) {
        linksList.add(Tooltip(
            message: message[i],
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  enableFeedback: true,
                  primary: Colors.black,
                  shape: CircleBorder(),
                  side: BorderSide(color: Colors.blue)),
              child: Icon(
                Icons.play_arrow_rounded,
                size: height / 40,
              ),
              onPressed: () {
                _launchURL(link[i]);
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
                      height: 1 / 5 * height,
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
                          fontSize: width / 25,
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
                          fontSize: width / 80,
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
                                  _launchURL(projectLink);
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
