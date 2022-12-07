import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
              child: Image.asset(
            "lib/icons/home.png",
            height: 40,
          )),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300, shape: BoxShape.circle),
                padding: EdgeInsets.all(5),
                child: Icon(
                  Icons.notifications_none_rounded,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.orange.shade200, shape: BoxShape.circle),
                padding: EdgeInsets.all(5),
                child: Image.asset(
                  "lib/icons/man.png",
                  height: 30,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Image.asset(
                "lib/icons/hamburger.png",
                height: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
