import 'package:flutter/cupertino.dart';

class AssetsImages {
  static final String path = "assets/images/";

  static Image ImageLauncher(){
    return Image.asset("${path}splash.png");
  }

  static Image ImageLogo(){
    return Image.asset("${path}logo.png");
  }
}