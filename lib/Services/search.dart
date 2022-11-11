import 'package:flutter/material.dart';

class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
          color: Colors.white
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15),
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.red)),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Color(0xFFD8DEF1)),
        ),
        hintText: 'Search',
        hintStyle: TextStyle(color: Color(0XFF808080), fontWeight: FontWeight.w400, fontSize: 14),
        suffixIcon: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(2),
          decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.red),
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}