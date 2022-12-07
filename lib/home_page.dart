import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_state_app/widget/house_card.dart';

import 'house_detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              InkWell(
                onTap: (){},
                child: HouseCard(
                    image: "lib/images/flat1.webp",
                    ownerName: "Emily Watts",
                    location: "Miami, Florida, USA",
                    price: "395.0",
                    icon: "lib/icons/young-man.png"),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>HouseDetail()));
                },
                  child: HouseCard(
                      image: "lib/images/flat3.jpg",
                      ownerName: "John Doe",
                      location: "Manhatton, NYC, USA",
                      price: "455.0",
                      icon: "lib/icons/man.png")),
              InkWell(
                onTap: (){},
                child: HouseCard(
                    image: "lib/images/flat2.jpg",
                    ownerName: "William Patt",
                    location: "Dallas, Texas, USA",
                    price: "425.0",
                    icon: "lib/icons/graphic-designer.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
