import 'package:flutter/material.dart';
import 'package:flutter_appritehack/src/constant/anime_constant.dart';
import 'package:flutter_appritehack/src/widget/modal_page.dart';
import 'package:video_player/video_player.dart';


class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Stack(
        children:[
           Center(child: DemoVideo()),
        Positioned(
          bottom: 30,
          child: Getstarted())
        ]
       
      )
    );
  }
}

// Demo Video

class DemoVideo extends StatefulWidget {
  const DemoVideo({super.key});

  @override
  State<DemoVideo> createState() => _DemoVideoState();
}

class _DemoVideoState extends State<DemoVideo> {
  late VideoPlayerController _controller;
  VoidCallback? listener;
  

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = VideoPlayerController.network(
  //       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
        
  //     ..initialize().then((_) {
  //       // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
  //       setState(() {});
  //     })
  //     ..play();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _controller.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // return _controller.value.isInitialized ?  AspectRatio(
    //               aspectRatio: 1,
    //               child: VideoPlayer(_controller),
    //             ) : Placeholder();
    return Placeholder();
  }
}

class Getstarted extends StatefulWidget {
  const Getstarted({super.key});

  @override
  State<Getstarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> with SingleTickerProviderStateMixin {

  late final AnimationController _animationController;
  late final Animation<double> _curvedAnimation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _curvedAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Play,Smarter, For Your Finance.',
            style: TextStyle(
              fontSize: 43,
              fontWeight: FontWeight.bold
            ),
            ),
            ElevatedButton(
        style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        minimumSize: MaterialStateProperty.all<Size>(Size(
          MediaQuery.of(context).size.width * 0.9, 50)),
        ),
        onPressed: (){
          _animationController.animateTo(0).then((value) {
                  _openListingPage(context);
                });
        },
        child: const Text("Let's Go"),
      )
          ]
        ),
      ),
    );
  }

  void _openListingPage(BuildContext context) {
    Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: Constants.animationDuration,
        reverseTransitionDuration: Constants.animationDuration,
        pageBuilder: (BuildContext context, Animation<double> animation, _) {
          return const ModalPage();
        },
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            _, Widget child) {
          final offsetAnimation = Tween<Offset>(
            begin: const Offset(0, 1),
            end: const Offset(0, 0),
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            ),
          );

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
        opaque: false,
        barrierDismissible: true,
        barrierColor: Colors.white.withOpacity(0.5),
      ),
    );
  }
}


