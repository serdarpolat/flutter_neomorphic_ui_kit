import 'package:flutter/material.dart';

class RoundedInput extends StatelessWidget {
  const RoundedInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF2F3F7),
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
          colors: [
            Color(0xffDFE6F0),
            Color(0xffF2F3F7),
            Color(0xffF2F3F7),
            Color(0xffF2F3F7),
            Color(0xffF2F3F7),
            Color(0xffffffff),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xffDFE6F0),
            offset: Offset(0, 5),
            blurRadius: 3,
            spreadRadius: 2,
          ),
          BoxShadow(
            color: Color(0xffffffff),
            offset: Offset(0, -5),
            blurRadius: 3,
            spreadRadius: 2,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: const BorderSide(color: Colors.green, width: 2.0),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: const BorderSide(color: Colors.transparent, width: 1.0),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[800]),
          hintText: "Type in your text",
          fillColor: Colors.transparent,
        ),
      ),
    );
  }
}
