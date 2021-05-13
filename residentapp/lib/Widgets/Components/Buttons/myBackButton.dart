import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:residentapp/MainScreens/welcomeScreen.dart';
import 'package:residentapp/Utils/TextApp.dart';


class MyBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () =>Navigator.push(
        context, MaterialPageRoute(
          builder: (context) => WelcomeScreen())),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10),
        child: Row(children: [
          Icon(
            Icons.keyboard_arrow_left,
            color:Colors.white
            ),
            Text(TextApp.BACK,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.white
            ))
        ],),
        ),
    );
  }
}