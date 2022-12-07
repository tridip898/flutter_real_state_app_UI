import 'package:flutter/material.dart';
import 'package:real_state_app/widget/bottom_appbar.dart';
import 'package:real_state_app/widget/custom_appbar.dart';

class HouseDetail extends StatelessWidget {
  const HouseDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //appbar
              CustomAppbar(),
              //image
              Container(
                height: MediaQuery.of(context).size.height*0.43,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("lib/images/flat3.jpg"),fit: BoxFit.fill)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.videocam_outlined,size: 25,),
                          ),
                          SizedBox(width: 15,),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.camera_alt_outlined,size: 25,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("A wonderful apartments in\nthe heart of Manhattan",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.orange,),
                        SizedBox(width: 5,),
                        Text("4.6",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                      ],
                    )
                  ],
                ),
              ),
              //location
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("Manhattan, NYC, USA",style: TextStyle(color: Colors.grey.shade700,fontSize: 17),),
              ),
              //price
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset("lib/icons/happiness.png",height: 24,),
                            SizedBox(width: 5,),
                            Text("245",style: TextStyle(fontSize: 18),)
                          ],
                        ),
                        SizedBox(width: 15,),
                        Row(
                          children: [
                            Image.asset("lib/icons/sad.png",height: 24,),
                            SizedBox(width: 5,),
                            Text("68",style: TextStyle(fontSize: 18),)
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.price_change,color: Colors.grey.shade700,),
                        SizedBox(width: 10,),
                        Text("\$567",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text("Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
                    child: Text("Enjoy river houses are wooden cottages located on the river shore of the Hudson. You can enjoy our river view room with delux facility.",style: TextStyle(fontSize: 17,color: Colors.grey.shade700),),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.black,
          child: BottomAppbar(),
        ),
      ),
    );
  }
}
