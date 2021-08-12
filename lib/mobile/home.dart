import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/mobile/CopyRight.dart';
import 'package:portfolio/mobile/Education.dart';
import 'package:portfolio/mobile/Welcome.dart';
import 'package:portfolio/mobile/about_me.dart';
import 'package:rive/rive.dart';
import 'Experience.dart';
import 'Projects.dart';
import 'about_me.dart';
import 'contact_me.dart';
import 'skills.dart';

class MyHomePageMobile extends StatefulWidget {
  MyHomePageMobile({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageMobileState createState() => _MyHomePageMobileState();
}

class _MyHomePageMobileState extends State<MyHomePageMobile> {
  final keyWelcome = GlobalKey();
  Artboard _artboard;
  // ignore: non_constant_identifier_names
  ScrollController controller_of_list;
  Welcome welcome;
  about_me aboutme;
  skills skill;
  Projects projects;
  contact_me contactme;
  CopyRight copyright;
  Education education;
  Experience experience;

  @override
  void initState() {
    controller_of_list = ScrollController();
    _loadRiveFile();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => {});
  }

  _loadRiveFile() async {
    final data = await rootBundle.load('assets/animations/mobile.riv');
    final file = RiveFile();
    if (file.import(data)) {
      final artboard = file.mainArtboard;
      artboard.addController(SimpleAnimation('Animation 1'));
      setState(() => _artboard = artboard);
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    if (width >= height) {
      height = 2024;
    }

    return SafeArea(
        child: Scaffold(
            drawer: Drawer(
              child: Container(
                color: Color.fromARGB(255, 31, 42, 77),
                child: ListView(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        controller_of_list.animateTo(height,
                            duration: Duration(milliseconds: 2000),
                            curve: Curves.easeInOutCubic);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "ABOUT ME",
                          style: TextStyle(fontSize: 15.0, color: Colors.pink),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        //Scrollable.ensureVisible(keyWelcome.currentContext);
                        Navigator.pop(context);
                        controller_of_list.animateTo(2.2 * height, //(1+1.2)
                            duration: Duration(milliseconds: 2000),
                            curve: Curves.easeInOutCubic);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "SKILLS",
                          style: TextStyle(fontSize: 15.0, color: Colors.pink),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        controller_of_list.animateTo(3.3 * height, //(1+1.2+1.1)
                            duration: Duration(milliseconds: 2000),
                            curve: Curves.easeInOutCubic);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "EDUCATION",
                          style: TextStyle(fontSize: 15.0, color: Colors.pink),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        controller_of_list.animateTo(4.3 * height, //(1+1.2+1.1)
                            duration: Duration(milliseconds: 2000),
                            curve: Curves.easeInOutCubic);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "EXPERIENCE",
                          style: TextStyle(fontSize: 15.0, color: Colors.pink),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        controller_of_list.animateTo(
                            5.3 * height, //(1+1.2+1.1+1)
                            duration: Duration(milliseconds: 2000),
                            curve: Curves.easeInOutCubic);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "PROJECTS",
                          style: TextStyle(fontSize: 15.0, color: Colors.pink),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        controller_of_list.animateTo(6.4 * height,
                            duration: Duration(milliseconds: 2000),
                            curve: Curves.easeInOutCubic);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "GET IN TOUCH",
                          style: TextStyle(fontSize: 15.0, color: Colors.pink),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              // Problem - https://stackoverflow.com/questions/51304568/scaffold-of-called-with-a-context-that-does-not-contain-a-scaffold
              // Solution - https://dev.to/codedecoders/flutter-drawer-with-custom-icon-cok (Near 7 min)
              leading: Builder(
                builder: (context) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink.withOpacity(0),
                    //shadowColor: Colors.pinkAccent,
                  ),
                  child: Icon(
                    Icons.menu_rounded,
                    color: Colors.pink,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Archit Sangal',
                  //selectionControls: TextSelectionControls(),
                  style: GoogleFonts.getFont(
                    'Dancing Script', //'Averia Serif Libre',
                    textStyle: TextStyle(
                      fontSize: width / 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 219, 216, 227),
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            ),
            body: child(height, width)));
  }

  Center child(var height, var width) {
    this.welcome = Welcome(height, width, _artboard);
    this.aboutme = about_me(height, width);
    this.skill = skills(height, width);
    this.projects = Projects(height, width);
    this.contactme = contact_me(height, width, context);
    this.copyright = CopyRight(height, width);
    this.education = Education(height, width);
    this.experience = Experience(height, width);
    var widgets = <Widget>[
      this.welcome.welcome(),
      this.aboutme.About_me(),
      this.skill.Skills(),
      this.education.education(),
      this.experience.experience(),
      this.projects.widget_container(), // projects
      this.contactme.Contact_Me(),
      this.copyright.copyright(),
    ];

    // https://github.com/flutter/flutter/issues/80925#issuecomment-824651754 controller should have same controller
    return Center(
        child: RawScrollbar(
            controller: controller_of_list,
            thumbColor:
                Color.fromARGB(250, 1 * 16 + 6, 8 * 16 + 7, 10 * 16 + 7),
            radius: Radius.circular(5),
            thickness: 10,
            child: ListView(
              controller: controller_of_list,
              children: widgets,
            )));
  }
}
