import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 70,
        width: MediaQuery.of(context).size.width,
        child: Image(image: NetworkImage("https://graphicsfamily.com/wp-content/uploads/edd/2023/05/Website-Food-Banner-Design-1536x864.jpg"),
          //height: 70,
         // width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xffE5E4E2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/images/language.png"),
            height: 200,
            width: 200,
            ),
            Text("Choose Your Language",style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),),
            buttons("English"),
            buttons("Hindi"),
            SizedBox(
              height: 35,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/1.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [Color(0xffff512f),Color(0xfff09819)],begin: Alignment.topCenter,end: Alignment.bottomCenter)
              ),
              child: Center(
                child: Text("CONTINUE",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///reusing
  Widget buttons(String text){
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width/1.15,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 17,
              )),
              Icon(Icons.done,color: Colors.black,size: 22,)
            ],
          ),
        ),
      ),
    );
  }
}
