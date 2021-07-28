import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/about_me.dart';
import 'package:portfolio/welcome.dart';
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
  /// The artboard we'll use to play one of its animations
  Artboard _artboard;
  final _controller = ScrollController();

  @override
  void initState() {
    _loadRiveFile();
    super.initState();
  }

  /// Loads dat afrom a Rive file and initializes playback
  _loadRiveFile() async {
    // Load your Rive data
    final data = await rootBundle.load('assets/animations/web.riv');
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

  scrollUP() {
    final double start = 0;
    if (_controller.hasClients)
      _controller.animateTo(start,
          duration: Duration(seconds: 3), curve: Curves.easeInCubic);
  }

  // great resources - Unsplash, Undraw
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
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.arrow_upward_rounded,
            color: Colors.blueAccent[700],
            size: width / 40,
          ),
          backgroundColor: Colors.black,
          onPressed: scrollUP,
        ),
        body: Center(
          child: RawScrollbar(
              thumbColor:
                  Color.fromARGB(250, 1 * 16 + 6, 8 * 16 + 7, 10 * 16 + 7),
              radius: Radius.circular(5),
              thickness: 10,
              child: ListView(
                controller: _controller,
                children: <Widget>[
                  welcome(_artboard, height, width).Welcome(),
                  about_me(height, width).About_me(),
                  skills(height, width).Skills(), // projects
                  Projects(height, width).widget_container(),
                  contact_me(height, width, context).Contact_Me(),
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
              )),
        ));
  }

  // Notification Bubbling - https://api.flutter.dev/flutter/widgets/NotificationListener-class.html
  // bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
  //   setState(() {
  //     _offset = scrollNotification.metrics.pixels;
  //   });
  //   return true;
  // }

}
