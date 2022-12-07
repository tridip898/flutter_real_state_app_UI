import 'package:flutter/material.dart';

class BottomAppbar extends StatelessWidget {
  const BottomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white,width: 2),
                    shape: BoxShape.circle
                ),
                padding: EdgeInsets.all(3),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.orange.shade300,
                      shape: BoxShape.circle
                  ),
                  padding: EdgeInsets.all(5),
                  child: Image.asset("lib/icons/man.png",height: 35,),
                ),
              ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("John Doe",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  Text("@johndoe",style: TextStyle(fontSize: 18,color: Colors.grey.shade200),),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Image.asset("lib/icons/phone-call.png",height: 25,color: Colors.white,),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: EdgeInsets.all(10),
                child: Image.asset("lib/icons/send.png",height: 25,),
              )
            ],
          )
        ],
      ),
    );
  }
}
