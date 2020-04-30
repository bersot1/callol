import 'package:callol/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';
import 'main.dart';

class SplashHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>  with AnimationMixin {  
  
  Animation<double> size;
  
  @override
  void initState() {
    size = 0.0.tweenTo(100.0).animatedBy(controller); 
    controller.play(duration: 0.4.seconds); 
    super.initState();
    
    Future.delayed(Duration(seconds: 5), () async {
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context) => MyApp())
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/profile-picture.png"), 
              width: size.value, 
              height: size.value, 
            ),
          ],
        ),
      ),
    );
  }

}
