import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// The artboard we'll use to play one of its animations
  Artboard _artboard;
  double _offset = 0;

  @override
  void initState() {
    _loadRiveFile();
    super.initState();
  }

  /// Loads dat afrom a Rive file and initializes playback
  _loadRiveFile() async {
    // Load your Rive data
    final data = await rootBundle.load('asset/web.riv');
    // Create a RiveFile from the binary data
    final file = RiveFile();
    if (file.import(data)) {
      // Get the artboard containing the animation you want to play
      final artboard = file.mainArtboard;
      // Create a SimpleAnimation controller for the animation you want to play
      // and attach it to the artboard
      artboard.addController(SimpleAnimation('Animation 1'));
      // Wrapped in setState so the widget knows the animation is ready to play
      setState(() => _artboard = artboard);
    }
  }

  // @override
  // Widget build(BuildContext context) =>
  //     _artboard != null ? Rive(artboard: _artboard) : Container();

  // inportant for parallax scrolling - https://www.youtube.com/watch?v=IuPqIwY3bEo
  // to decrease size of images use -https://tinypng.com/
  // Question - https://discord.com/channels/420324994703163402/530797119389564939/825312651244339220
  // Answer - https://discord.com/channels/420324994703163402/530797119389564939/825318396806955019
  // anything under 500kb is ok and anything under 100 kb is perfect
  // np, don't use assets bigger than 1 mb and never that are bigger than 5 mb

  // great resources - Unsplash, Undraw
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Center(
            child: NotificationListener<ScrollNotification>(
                onNotification: updateOffsetAccordingToScroll,
                child: RawScrollbar(
                  thumbColor:
                      Color.fromARGB(250, 1 * 16 + 6, 8 * 16 + 7, 10 * 16 + 7),
                  radius: Radius.circular(5),
                  thickness: 10,
                  child: Column(children: <Widget>[
                    Expanded(
                        child: Stack(
                      children: [
                        Positioned(
                          top: -0.25 * _offset,
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                                maxHeight: height, maxWidth: width),
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
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SelectableText(
                                            'Hi! I am',
                                            //selectionControls: TextSelectionControls(),
                                            style: GoogleFonts.getFont(
                                              'Averia Serif Libre',
                                              textStyle: TextStyle(
                                                fontSize: width / 25,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 219, 216, 227),
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
                                              'Dancing Script',
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
                              Container(
                                  height: 1.2 * height,
                                  width: width,
                                  color: Colors.black,
                                  child: Stack(children: [
                                    Center(
                                      child: FadeInImage.memoryNetwork(
                                          fit: BoxFit.cover,
                                          placeholder: kTransparentImage,
                                          image: 'asset/aboutme.jpg'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(100.0),
                                      child: Row(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SelectableText(
                                                'About Me',
                                                style: GoogleFonts.getFont(
                                                  'Pacifico',
                                                  textStyle: TextStyle(
                                                    fontSize: width / 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    height: 1,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: height / 10,
                                                width: width / 10,
                                              ),
                                              SizedBox(
                                                width: width / 3 - 105,
                                                child: SelectableText(
                                                  "I am a Bengaluru-based engineering " +
                                                      "student pursuing an Integrated M.Tech., " +
                                                      "i.e., B.Tech. + M.Tech. degree in Computer Science at" +
                                                      " International Institute of Information Technology, Bangalore (IIITB)." +
                                                      " I like graphic designing and fluttering. I have" +
                                                      " worked with FOSSEE, IIT BOMBAY in a " +
                                                      "summer fellowship. I am also a member of Zense" +
                                                      " Club, the official programming and development" +
                                                      " club of IIITB. I design and make" +
                                                      " mobile and web applications.",
                                                  style: GoogleFonts.getFont(
                                                    'Source Code Pro',
                                                    textStyle: TextStyle(
                                                      fontSize: width / 90,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                      height: 1.5,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                    color: Colors.white,
                                                    width: 5,
                                                  ),
                                                ),
                                                child: FadeInImage.memoryNetwork(
                                                    imageScale: 3,
                                                    placeholder:
                                                        kTransparentImage,
                                                    image: 'asset/picture.jpg'),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ])),
                              Container(
                                height: 1.1 * height,
                                width: width,
                                color: Colors.white,
                                child: Stack(
                                  children: [
                                    Row(children: [
                                      Container(
                                        height: height * 1.2,
                                        width: width / 3,
                                        child: FadeInImage.memoryNetwork(
                                            fit: BoxFit.cover,
                                            placeholder: kTransparentImage,
                                            image: 'asset/skills.jpg'),
                                      ),
                                      Container(
                                        height: height * 1.2,
                                        width: 5 * width / 9,
                                        child: Padding(
                                          padding: const EdgeInsets.all(50.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SelectableText(
                                                'Skills',
                                                style: GoogleFonts.getFont(
                                                  'Pacifico',
                                                  textStyle: TextStyle(
                                                    fontSize: width / 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    height: 1,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: height / 10,
                                                width: width / 10,
                                              ),
                                              SelectableText(
                                                'I am a full Stack Developer and have experience of making great looking responsive mobile apps and websites.' +
                                                    ' The websites and apps made by me are easy to maintain. I have an affinity for graphic designing and front end development but' +
                                                    ' I can work equally efficiently on backend as well. I like making digital art. Following are the key highlights -',
                                                style: GoogleFonts.getFont(
                                                  'Source Code Pro',
                                                  textStyle: TextStyle(
                                                    fontSize: width / 90,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    height: 1,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: height / 20,
                                                width: width / 20,
                                              ),
                                              Container(
                                                child: Wrap(
                                                  children: [
                                                    skillbutton("Flutter"),
                                                    skillbutton("Dart"),
                                                    skillbutton("Rive"),
                                                    skillbutton("Firebase"),
                                                    skillbutton("Java"),
                                                    skillbutton("C++"),
                                                    skillbutton("Python"),
                                                    skillbutton("C"),
                                                    skillbutton("UI/UX"),
                                                    skillbutton(
                                                        "Android Developer"),
                                                    skillbutton(
                                                        "iOS Developer"),
                                                    skillbutton(
                                                        "Web Developer"),
                                                    skillbutton(
                                                        "Adobe Illustrator"),
                                                    skillbutton(
                                                        "Adobe InDesign"),
                                                    skillbutton(
                                                        "Adobe Photoshop"),
                                                    skillbutton("GitHub"),
                                                    skillbutton("Git"),
                                                    skillbutton("Assembly"),
                                                    skillbutton("Verilog"),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: height / 15,
                                                width: width / 15,
                                              ),
                                              SelectableText(
                                                '"  I want to make things that inspire\n       and truly make a difference.     "',
                                                style: GoogleFonts.getFont(
                                                  'Nanum Gothic',
                                                  textStyle: TextStyle(
                                                    fontSize: width / 40,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.pink,
                                                    height: 1,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ],
                                ),
                              ),
                              // projects
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 15 * 16 + 6,
                                      15 * 16 + 5, 15 * 16 + 5),
                                ),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                      minWidth: width, minHeight: 1 * height),
                                  child: Padding(
                                    padding: const EdgeInsets.all(40),
                                    child: Wrap(
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Center(
                                                child: Text(
                                              "My Projects",
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.getFont(
                                                'Pacifico',
                                                textStyle: TextStyle(
                                                  fontSize: width / 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255,
                                                      2 * 16 + 7,
                                                      6 * 16 + 6,
                                                      7 * 16 + 8),
                                                ),
                                              ),
                                            )),
                                            Padding(
                                              padding: const EdgeInsets.all(20),
                                              child: projects(),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // Idea
                              // Container(
                              //     decoration: BoxDecoration(
                              //       image: DecorationImage(
                              //         image: AssetImage("asset/projects.jpeg"),
                              //         fit: BoxFit.cover,
                              //       ),
                              //     ),
                              //     child: Stack(children: [
                              //       ConstrainedBox(
                              //         constraints: BoxConstraints(
                              //             minWidth: width, minHeight: height),
                              //         // child: FadeInImage.memoryNetwork(
                              //         //     repeat: ImageRepeat.repeatY,
                              //         //     fit: BoxFit.fitWidth,
                              //         //     placeholder: kTransparentImage,
                              //         //     image: 'assets/projects.jpg'),
                              //       ),
                              //       SizedBox(
                              //         height: height,
                              //       ),
                              //     ])),
                              // Contacts
                              Container(
                                width: width,
                                height: 1 * height,
                                child: Stack(children: [
                                  Container(
                                    height: height,
                                    width: width,
                                    child: FadeInImage.memoryNetwork(
                                        fit: BoxFit.fitWidth,
                                        placeholder: kTransparentImage,
                                        image: 'asset/contacts.jpg'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(100.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(width / 100),
                                        color:
                                            Color.fromARGB(130, 255, 255, 255),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SelectableText(
                                              'Contact Me',
                                              style: GoogleFonts.getFont(
                                                'Pacifico',
                                                textStyle: TextStyle(
                                                  fontSize: width / 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255,
                                                      3 * 1 + 4,
                                                      4 * 2 + 7,
                                                      6 * 4 + 14),
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
                              ),

                              // copyright
                              Container(
                                color: Colors.black,
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                      minWidth: width, minHeight: height / 16),
                                  child: Center(
                                    child: Text(
                                      "CopyRight \u00a9 2021 onwards, Archit Sangal. All Rights Reserved.",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: height / 190 + width / 190),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
                  ]),
                ))));
  }

  // Notification Bubbling - https://api.flutter.dev/flutter/widgets/NotificationListener-class.html
  bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
    setState(() {
      _offset = scrollNotification.metrics.pixels;
    });
    return true;
  }

  Padding skillbutton(String text) {
    double width = MediaQuery.of(context).size.width;
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
              'Nanum Gothic',
              textStyle: TextStyle(
                fontSize: width / 80,
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

  Container projects() {
    return Container(
      child: card(
          'portfolio.png',
          'Portfolio In Flutter',
          'Primary Developer',
          "This is a flutter project. This is the very project you are looking at right now. It is responsive(still not completely implemented). Animation used for moon and shooting star use rive. It use new scrolling techinques like 'Parallex Effect' and 'zoom out'(still not completely implemented).",
          "link",
          "link",
          [
            'dart',
            'flutter',
            'rive',
          ],
          true),
    );
  }

  ClipRRect card(String image, String projectName, String role, String text,
      String github, String link, List<String> skills, bool onGoing) {
    final height = MediaQuery.of(context).size.height > 980
        ? MediaQuery.of(context).size.height
        : 960;
    final width = MediaQuery.of(context).size.width > 1900
        ? MediaQuery.of(context).size.width
        : 1271;

    List<Padding> skillslist = [];
    for (String skill_i in skills) {
      skillslist.add(skillused(skill_i));
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(40.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: height / 3 * 2),
        child: Container(
          height: height / 3 * 2,
          width: width / 4,
          margin: const EdgeInsets.all(60.0),
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
                offset: Offset(1.0, 1.0), //(x,y)
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
                    child: FadeInImage.memoryNetwork(
                        height: 5 / 18 * height,
                        width: width / 3,
                        fit: BoxFit.cover,
                        imageScale: 1,
                        placeholder: kTransparentImage,
                        image: 'projects_images/' + image),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(minHeight: 1 / 18 * height),
                    child: Center(
                      child: AutoSizeText(
                        projectName + ' | ' + role,
                        maxFontSize: 25,
                        style: GoogleFonts.getFont(
                          'Nanum Gothic',
                          textStyle: TextStyle(
                            fontSize: width / 80,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(
                                255, 2 * 16 + 7, 6 * 16 + 6, 7 * 16 + 8),
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(minHeight: 2 / 18 * height),
                    child: Center(
                      child: AutoSizeText(
                        text,
                        maxFontSize: 20,
                        style: GoogleFonts.getFont(
                          'Nanum Gothic',
                          textStyle: TextStyle(
                            fontSize: width / 80,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(
                                255, 1 * 16 + 6, 8 * 16 + 7, 10 * 16 + 7),
                            height: 1,
                          ),
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
                            child: RaisedButton(
                              onPressed: _launchURL,
                              child: Text('Show Flutter homepage'),
                            ),
                          ),
                        ],
                      )),
                  ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 1 / 18 * height),
                      child: Wrap(
                        children: skillslist,
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding skillused(String text) {
    // final height = MediaQuery.of(context).size.height > 939 &&
    //         MediaQuery.of(context).size.width > 1689
    //     ? MediaQuery.of(context).size.height
    //     : 939;
    final width = MediaQuery.of(context).size.height > 939 &&
            MediaQuery.of(context).size.width > 1689
        ? MediaQuery.of(context).size.width
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
              'Nanum Gothic',
              textStyle: TextStyle(
                fontSize: 14,
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

  void _launchURL() async => await canLaunch('https://flutter.dev')
      ? await launch('https://flutter.dev')
      : throw 'Could not launch ';
}
