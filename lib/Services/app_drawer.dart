import 'package:flutter/material.dart';
import 'package:flutter_calendar_app/calendar_screen.dart';
import 'package:flutter_calendar_app/message_screen.dart';

import '../customer_screen.dart';

class AppDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: Color(0XFF000000),
      child: Column(
        children: [
          SizedBox(height: 50),
          // Container(
          //     padding: EdgeInsets.all(20),
          //     child: Image.asset('assets/images/Ez Business Management.png')),
          ListTile(
            leading: Icon(Icons.calendar_today, color: Colors.white,),
            title: Text('Calendar', style: TextStyle(color: Colors.white, fontSize: 20),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CalendarScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person_outline_outlined, color: Colors.white,),
            title: Text('Customers', style: TextStyle(color: Colors.white, fontSize: 20),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomerScreen()));
            },
          ),
          ListTile(
            // leading: ImageIcon(AssetImage('assets/images/Vector (16).png')),
            leading: Icon(Icons.message, color: Colors.white,),
            title: Text('Messages', style: TextStyle(color: Colors.white, fontSize: 20),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MessageScreen()));
            },
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Divider(
              thickness: 1,
              color: Color(0XFFD8DEF1),
            ),
          ),
          ListTile(
            leading: Icon(Icons.contact_support_outlined, color: Colors.white,),
            // leading: ImageIcon(AssetImage('assets/images/Vector (15).png')),
            title: Text('Support', style: TextStyle(color: Colors.white, fontSize: 20),),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.settings_outlined, color: Colors.white,),
            // leading: ImageIcon(AssetImage('assets/images/Vector (15).png')),
            title: Text('Settings', style: TextStyle(color: Colors.white, fontSize: 20),),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.delete, color: Colors.white,),
            // leading: ImageIcon(AssetImage('assets/images/Vector (15).png')),
            title: Text('Delete Account', style: TextStyle(color: Colors.white, fontSize: 20),),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
