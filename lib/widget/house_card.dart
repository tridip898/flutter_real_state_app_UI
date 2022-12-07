import 'package:flutter/material.dart';

class HouseCard extends StatelessWidget {
  final String image;
  final String ownerName;
  final String location;
  final String price;
  final String icon;
  const HouseCard({Key? key, required this.image, required this.ownerName, required this.location, required this.price, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
              offset: Offset(0, 10)
            )
          ]
        ),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5)
                      )
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height*0.23,
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange.shade200,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white,width: 3)
                    ),
                    padding: EdgeInsets.all(05),
                    child: Image.asset(icon,height: 70,),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0,top: 10,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(location,style: TextStyle(color: Colors.grey.shade700),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(ownerName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                  Row(
                    children: [
                      Icon(Icons.price_change,size: 30,),
                      SizedBox(width: 10,),
                      Text("\$"+price,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Paradis - luxury hotel\napartments by the sea",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Image.asset("lib/icons/send.png",height: 25,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
