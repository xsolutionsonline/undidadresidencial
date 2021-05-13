import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class MySignUpLabelButton extends StatelessWidget {

    final String firstText;
    final String secondText;
    final Color secondTextColor;
    final Widget widgetToNavigate;

  MySignUpLabelButton({
    this.firstText,
    this.secondText,
    this.secondTextColor,
    this.widgetToNavigate
  });

  @override
  Widget build(BuildContext context) {

    return FlatButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) =>widgetToNavigate)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              firstText,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            Text(
              secondText,
              style: TextStyle(
                  color: secondTextColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            )
          ],
        ));
  }
}