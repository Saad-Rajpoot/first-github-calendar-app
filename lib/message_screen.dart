import 'package:flutter/material.dart';

import 'Services/app_drawer.dart';

class MessageScreen extends StatelessWidget {
const MessageScreen({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black,
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AppDrawer()));
                  },
                  child: Icon(
                    Icons.menu,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "MESSAGES",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
      ),
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0), child: Container()),
      elevation: 0,
    ),
    body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "AARON",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    "+912732873",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Message:",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Last Appointment",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "2 july 2021",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),

                  Text(
                    "3:47 pm",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        color: Colors.red,
                        child: Icon(Icons.subdirectory_arrow_left_outlined, color: Colors.white, size: 20,)),
                  )
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
