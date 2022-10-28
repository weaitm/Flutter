import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen.dart';

class Screen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WelcomeState2();
}

class _WelcomeState2 extends State<Screen2>{
  @override
  Widget build(BuildContext context) {

    Color ScreenBackground = Colors.white;

     // ignore: non_constant_identifier_names
    Container buildButtonColumn(Color Backcolor, String label, Color fontColor, double width, double height) {
      return Container(
        margin: const EdgeInsets.all(6),
        child: ElevatedButton(
          // ignore: sort_child_properties_last
          child: SizedBox(
            width: width,
            height: height,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Icon(Icons.play_arrow_outlined, color: Colors.white),
              SizedBox(
              child: Center(
                child: Text(
                  label,
                  style: TextStyle(
                      fontSize: 20,
                      color: fontColor,
                    ),
                  ),
                )
              ),
            ],)
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Screen()));
          },
          style: ElevatedButton.styleFrom(
            primary: Backcolor,
            onPrimary: Colors.grey,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0))
          ),
          
          
        )
      );
    }

    Container buildMusicColumn(Color Backcolor, String label, String label2){
      return Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [
          buildButtonColumn(Backcolor, '', Colors.white, 42, 42),
          Column(children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),),
              Text(
              label2,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey
              ),)
          ],),
          const Spacer(flex: 1,),
          // ignore: prefer_const_literals_to_create_immutables
          Row(children: [
            const Icon(Icons.circle,size: 6,color: Colors.grey,),
            const Icon(Icons.circle,size: 6,color: Colors.grey,),
            const Icon(Icons.circle,size: 6,color: Colors.grey,),
          ],)
          
        ]),
      );
    }

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start ,children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromRGBO(242, 201, 76, 1),
            ),
            margin: const EdgeInsets.fromLTRB(0, 53, 0, 0),
            alignment: Alignment.bottomCenter,
            child: Image.asset("assets/Frame.png"),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 13, 0, 0),
            child: const Text("PeterMach",
              style: TextStyle(
                color: Colors.grey,
              ),
              ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 1, 0, 0),
            child: const Text("Mind Deep Relax",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: const Text("Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              ),
          ),
          buildButtonColumn(const Color.fromRGBO(3, 158, 162, 1), "Play Next Session", Colors.white, 342, 50),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 24, 0, 0),
            
            child: Column(children: [
              buildMusicColumn(const Color.fromRGBO(47, 128, 237, 1),'Sweet Memories','December 29 Pre-Launch'),
              const Divider(),
              buildMusicColumn(const Color.fromRGBO(3, 158, 162, 1),'A Day Dream','December 29 Pre-Launch'),
              const Divider(),
              buildMusicColumn(const Color.fromRGBO(240, 146, 53, 1),'Mind Explore','December 29 Pre-Launch'),
              const Divider(),
            ]),
          )
        ]),
      )
      
    );
  }

}
