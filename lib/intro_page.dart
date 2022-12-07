import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_state_app/home_page.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: InkWell(
            onTap: (){
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>HomeScreen()));
            },
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: height * 0.55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("lib/images/girl_phone.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    Positioned(
                        left: width * 0.4,
                        top: height * 0.45,
                        child: Transform.rotate(
                          angle: 0.2,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 40),
                            child: Image.asset(
                              "lib/icons/trophy.png",
                              height: 70,
                            ),
                          ),
                        )
                    ),
                  ],
                ),
             SizedBox(height: 100,),
             Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Sell Quickly",style: GoogleFonts.acme(textStyle: TextStyle(fontSize: 35,color: Colors.white,fontFamily: "Times New Roman",fontWeight: FontWeight.w600),)),
                      Text("At The Best Price",style: GoogleFonts.acme(textStyle: TextStyle(fontSize: 35,color: Colors.white,fontFamily: "Times New Roman",fontWeight: FontWeight.w600),)),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 30),
                        child: Text("No repairs, upadates or showings. Pay ZERO fees",textAlign: TextAlign.center, style: TextStyle(fontSize: 20,color: Colors.grey.shade400),),
                      ),
                    ]
                )
              ],
            ),
          )),
    );
  }
}
