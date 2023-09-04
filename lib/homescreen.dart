import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xfff1f1f1),
          child: Column(
            children: [
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                color: Color(0xfff1f1f1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.menu,color: Colors.black,size: 30,),
                    Text("Mobile Projector",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 35,
                            width: 108,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xfffb5051),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage("assets/images/premium.png"),
                                height: 20,
                                width: 20,
                                color: Colors.white,
                                ),
                                Text("Premium",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),)
                              ],
                            ),
                          ),
                      SizedBox(
                        width: 10,
                      ),

                      Icon(Icons.cast,color: Colors.black,size: 28,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width/1.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [Color(0xffff512f),Color(0xfff09819)],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                ),
                child: Column(
                  children: [

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
