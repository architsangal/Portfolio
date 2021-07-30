import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/CopyRight.dart';
import 'package:portfolio/Welcome.dart';
import 'package:portfolio/about_me.dart';
import 'package:rive/rive.dart';
import 'Projects.dart';
import 'about_me.dart';
import 'contact_me.dart';
import 'skills.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Artboard _artboard;
  // ignore: non_constant_identifier_names
  ScrollController controller_of_list;
  Welcome welcome;
  about_me aboutme;
  skills skill;
  Projects projects;
  contact_me contactme;
  CopyRight copyright;

  @override
  void initState() {
    controller_of_list = ScrollController();
    _loadRiveFile();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => {});
  }

  _loadRiveFile() async {
    final data = await rootBundle.load('assets/animations/web.riv');
    final file = RiveFile();
    if (file.import(data)) {
      final artboard = file.mainArtboard;
      artboard.addController(SimpleAnimation('Animation 1'));
      setState(() => _artboard = artboard);
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          actions: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.06,
            ),
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
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.06,
            ),
            TextButton(
              onPressed: () {
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
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.06,
            ),
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
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.06,
            ),
            TextButton(
              onPressed: () {
                controller_of_list.animateTo(4.3 * height, //(1+1.2+1.1+1)
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
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.06,
            ),
            TextButton(
              onPressed: () {
                controller_of_list.animateTo(1000000,
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
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.06,
            ),
          ],
          leading: Icon(
            Icons.code,
            color: Colors.white,
          ),
          title: Text("Archit Sangal Portfolio"),
        ),
        body: child(height, width));
  }

  Center child(var height, var width) {
    this.welcome = Welcome(height, width, _artboard);
    this.aboutme = about_me(height, width);
    this.skill = skills(height, width);
    this.projects = Projects(height, width);
    this.contactme = contact_me(height, width, context);
    this.copyright = CopyRight(height, width);
    var widgets = <Widget>[
      this.welcome.welcome(),
      this.aboutme.About_me(),
      this.skill.Skills(), // projects
      this.projects.widget_container(),
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
