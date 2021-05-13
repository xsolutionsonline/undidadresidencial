import 'package:flutter/cupertino.dart';

class DisplayWidget extends StatelessWidget {
  final img;
  DisplayWidget(this.img);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child: Image.asset(img))
      
    );
  }
}