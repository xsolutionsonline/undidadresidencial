import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:residentapp/MainScreens/login/loginScreen.dart';
import 'package:residentapp/MainScreens/login/signUp.dart';
import 'package:residentapp/Utils/TextApp.dart';
import 'package:residentapp/Widgets/Components/Buttons/myLoginButton.dart';
import 'package:residentapp/Widgets/Design/DesignWidgets.dart';


class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}


Widget _signUpButton(BuildContext context){
  return Container(
    width: double.infinity,
    child: OutlineButton(
      borderSide: BorderSide(color: Colors.white),
      highlightedBorderColor: Theme.of(context).primaryColorLight,
      padding: EdgeInsets.all(15.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0),
      ),
      onPressed: () => Navigator.push(
        context, MaterialPageRoute(
          builder: (context) => SignUp())),
      child: Text( 
        TextApp.SIGNUP,
        style:TextStyle(fontSize: 18 , color: Colors.white),
      ),
    )
  );
}



class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: DesignWidgets.linearGradientMain(context),
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [DesignWidgets.titleCustom(),
                MyLoginButton(
                    text:TextApp.LOGIN,
                      colorText:Colors.white, 
                      colorButtonBackground:Theme.of(context).primaryColor, 
                      widgetToNavigate: LoginScreen()
                ),
                _signUpButton(context)
              ],
            )
          )
        )
        
      ),
    );
  }
}