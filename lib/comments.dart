  // Notification Bubbling - https://api.flutter.dev/flutter/widgets/NotificationListener-class.html
  // bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
  //   setState(() {
  //     _offset = scrollNotification.metrics.pixels;
  //   });
  //   return true;
  // }

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

  //   /// Loads dat afrom a Rive file and initializes playback
  // _loadRiveFile() async {
  //   // Load your Rive data
  //   final data = await rootBundle.load('assets/animations/web.riv');
  //   // Create a RiveFile from the binary data
  //   final file = RiveFile();
  //   if (file.import(data)) {
  //     // Get the artboard containing the animation you want to play
  //     final artboard = file.mainArtboard;
  //     // Create a SimpleAnimation controller for the animation you want to play
  //     // and attach it to the artboard
  //     artboard.addController(SimpleAnimation('Animation 1'));
  //     // Wrapped in setState so the widget knows the animation is ready to play
  //     setState(() => _artboard = artboard);
  //   }
  // }
