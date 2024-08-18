import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    required this.btnText,
    super.key,
  });

    final String btnText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(btnText, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),),
    );
  }
}