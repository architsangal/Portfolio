import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/laptop/CopyRight.dart';
import 'package:portfolio/laptop/Education.dart';
import 'package:portfolio/laptop/Welcome.dart';
import 'package:portfolio/laptop/about_me.dart';
import 'Experience.dart';
import 'Projects.dart';
import 'contact_me.dart';
import 'skills.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final keyWelcome = GlobalKey();
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
    Projects.scroller = controller_of_list;
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => {});
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    if (width >= height) {
      if (width < 900) {
        height = 2024;
      }
    }

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              actions: [
                Spacer(),
                TextButton(
                  onPressed: () {
                    controller_of_list.animateTo(height,
                        duration: Duration(milliseconds: 2000),
                        curve: Curves.easeInOutCubic);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "ABOUT",
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    //Scrollable.ensureVisible(keyWelcome.currentContext);
                    controller_of_list.animateTo(2.2 * height, //(1+1.2)
                        duration: Duration(milliseconds: 2000),
                        curve: Curves.easeInOutCubic);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "SKILLS",
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    controller_of_list.animateTo(3.3 * height, //(1+1.2+1.1)
                        duration: Duration(milliseconds: 2000),
                        curve: Curves.easeInOutCubic);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "EDUCATION",
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    controller_of_list.animateTo(4.3 * height, //(1+1.2+1.1)
                        duration: Duration(milliseconds: 2000),
                        curve: Curves.easeInOutCubic);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "EXPERIENCE",
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    controller_of_list.animateTo(5.3 * height, //(1+1.2+1.1+1)
                        duration: Duration(milliseconds: 2000),
                        curve: Curves.easeInOutCubic);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "PROJECTS",
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    controller_of_list.animateTo(6.8 * height,
                        duration: Duration(milliseconds: 2000),
                        curve: Curves.easeInOutCubic);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "GET IN TOUCH",
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                ),
                Spacer(),
              ],
              title: Text(
                'Archit Sangal',
                //selectionControls: TextSelectionControls(),
                style: GoogleFonts.getFont(
                  'Dancing Script', //'Averia Serif Libre',
                  textStyle: TextStyle(
                    fontSize: width / 50,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 219, 216, 227),
                    height: 1,
                  ),
                ),
              ),
            ),
            body: child(height, width)));
  }

  Center child(var height, var width) {
    this.welcome = Welcome(height, width, 'assets/animations/web.riv');
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
