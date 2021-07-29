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

  @override
  void initState() {
    _loadRiveFile();
    super.initState();
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
          leading: Icon(
            Icons.code,
            color: Colors.white,
          ),
          title: Text("Archit Sangal Portfolio"),
        ),
        body: child(height, width));
  }

  Center child(var height, var width) {
    var widgets = <Widget>[
      Welcome(height, width, _artboard).welcome(),
      about_me(height, width).About_me(),
      skills(height, width).Skills(), // projects
      Projects(height, width).widget_container(),
      contact_me(height, width, context).Contact_Me(),
      CopyRight(height, width).copyright(),
    ];
    return Center(
      child: RawScrollbar(
          thumbColor: Color.fromARGB(250, 1 * 16 + 6, 8 * 16 + 7, 10 * 16 + 7),
          radius: Radius.circular(5),
          thickness: 10,
          child: ListView(
            children: widgets,
          )),
    );
  }
}
