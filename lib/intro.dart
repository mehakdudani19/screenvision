import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xffff512f),Color(0xfff09819)],begin: Alignment.topLeft,end: Alignment.bottomRight)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/images/cast.png"),color: Colors.white,
            height: 150,
            width: 150,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width/1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Mobile Projector",style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Screencast & Mirror app - Mirror and share your\ndevice's screen with ease",textAlign: TextAlign.center,style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text("By continuing, you agree to our Terms of Services\nFor more information, see our Privacy Policy",textAlign: TextAlign.center,style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Colors.white,
              ),),
            ),

          ],
        ),
      ),
    );
  }
}
