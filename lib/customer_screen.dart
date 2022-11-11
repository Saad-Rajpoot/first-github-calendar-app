import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Services/app_drawer.dart';
import 'Services/search.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({Key? key}) : super(key: key);

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
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AppDrawer()));
                    },
                    child: Icon(
                      Icons.menu,
                      size: 50,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "CUSTOMERS",
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
        // child: Column(
        //   children: [
        //     SizedBox(
        //       height: 40,
        //     ),
        //     Search(),
        //     SizedBox(
        //       height: 35,
        //     ),
        //     Expanded(
        //       child: ListView.builder(
        //           shrinkWrap: true,
        //           padding: EdgeInsets.zero,
        //           physics: BouncingScrollPhysics(),
        //           itemCount: 4,
        //           itemBuilder: (context, index) {
        //             return Container(
        //               margin: EdgeInsets.symmetric(vertical: 15),
        //               decoration: BoxDecoration(
        //                   color: Colors.white,
        //                   borderRadius: BorderRadius.circular(30)),
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Container(
        //                     padding: EdgeInsets.symmetric(horizontal: 5),
        //                     decoration: BoxDecoration(
        //                       color: Colors.red,
        //                       borderRadius: BorderRadius.only(
        //                           topLeft: Radius.circular(20),
        //                           topRight: Radius.circular(20)),
        //                     ),
        //                     child: Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Text(
        //                           "AARON",
        //                           style: TextStyle(
        //                               fontSize: 20,
        //                               fontWeight: FontWeight.w700,
        //                               color: Colors.white),
        //                         ),
        //                         IconButton(
        //                             onPressed: () {},
        //                             icon: Icon(
        //                               Icons.calendar_today,
        //                               color: Colors.white,
        //                             ))
        //                       ],
        //                     ),
        //                   ),
        //                   Padding(
        //                     padding: EdgeInsets.symmetric(
        //                         horizontal: 10, vertical: 5),
        //                     child: Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: [
        //                         Row(
        //                           children: [
        //                             Text(
        //                               "SMS : ",
        //                               style: TextStyle(
        //                                   fontSize: 18,
        //                                   fontWeight: FontWeight.w600),
        //                             ),
        //                             Text(
        //                               "0392392389",
        //                               style: TextStyle(
        //                                   fontSize: 16,
        //                                   fontWeight: FontWeight.w500),
        //                             )
        //                           ],
        //                         ),
        //                         Row(
        //                           children: [
        //                             Text(
        //                               "Email : ",
        //                               style: TextStyle(
        //                                   fontSize: 18,
        //                                   fontWeight: FontWeight.w600),
        //                             ),
        //                             Text(
        //                               "ali@gmail.com",
        //                               style: TextStyle(
        //                                   fontSize: 16,
        //                                   fontWeight: FontWeight.w500),
        //                             )
        //                           ],
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                   Divider(
        //                     height: 1,
        //                     color: Colors.black,
        //                   ),
        //                   Padding(
        //                     padding: EdgeInsets.symmetric(
        //                         horizontal: 10, vertical: 5),
        //                     child: Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: [
        //                         Text(
        //                           "Last Appointment",
        //                           style: TextStyle(
        //                               fontSize: 18,
        //                               fontWeight: FontWeight.w600),
        //                         ),
        //                         Text(
        //                           "20/43/4",
        //                           style: TextStyle(
        //                               fontSize: 16,
        //                               fontWeight: FontWeight.w500),
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                   Divider(
        //                     height: 1,
        //                     color: Colors.black,
        //                   ),
        //                   Padding(
        //                     padding: EdgeInsets.symmetric(
        //                         horizontal: 10, vertical: 5),
        //                     child: Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: [
        //                         Text(
        //                           "Next Appointment",
        //                           style: TextStyle(
        //                               fontSize: 18,
        //                               fontWeight: FontWeight.w600),
        //                         ),
        //                         Text(
        //                           "20/43/4",
        //                           style: TextStyle(
        //                               fontSize: 16,
        //                               fontWeight: FontWeight.w500),
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             );
        //           }),
        //     )
        //   ],
        // ),

      ),
    );
  }
}
