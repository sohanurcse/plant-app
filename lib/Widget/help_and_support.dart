import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        width: MediaQuery.of(context).size.width / 1.3,
        height: MediaQuery.of(context).size.height / 1.2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              alignment: Alignment.center,
              child: const Text(
                "Help & Support",
                style: TextStyle(fontSize: 22, color: Colors.blueGrey),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 50.0,right: 50.0),
              child: Divider(
                height: 2,
              ),
            ),
            const SizedBox(height: 20,),

            Row(
              children: const [
                Icon(Icons.person,size: 30.0,color: Colors.green,),
                SizedBox(width: 5.0,),
                Text("Customar Services",style: TextStyle(fontSize: 18,color: Colors.blueGrey),),
              ],
            ),
            

            Row(
              children: [
                const Text("Select your City",style: TextStyle(fontSize: 14,color: Colors.blueGrey),),
                DropdownButton(
                    iconSize: 30,

                    items: const [
                      DropdownMenuItem(
                          value: "Easy",
                          child: Text("Dhaka")),
                      DropdownMenuItem(
                          value: "Explanation",
                          child: Text("Rajshahi")),
                      DropdownMenuItem(
                          value: "Explanation",
                          child: Text("Khulna")),
                      DropdownMenuItem(
                          value: "Explanation",
                          child: Text("Borisal")),
                      DropdownMenuItem(
                          value: "Explanation",
                          child: Text("Rangpur")),
                      DropdownMenuItem(
                          value: "Explanation",
                          child: Text("Sylet")),
                      DropdownMenuItem(
                          value: "Cumilla",
                          child: Text("Cumilla")),
                      DropdownMenuItem(
                          value: "Mymansingh",
                          child: Text("Mymansingh")),
                    ], onChanged: (val){

                },),
              ],
            ),

            const Text("data")
          ],
        ),
      ),
    );
  }
}
