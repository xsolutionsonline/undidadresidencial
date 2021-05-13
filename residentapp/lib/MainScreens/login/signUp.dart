import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:residentapp/MainScreens/login/loginScreen.dart';
import 'package:residentapp/MainScreens/login/mySignUpLabelButton.dart';
import 'package:residentapp/Utils/TextApp.dart';
import 'package:residentapp/Widgets/Components/Buttons/myBackButton.dart';
import 'package:residentapp/Widgets/Components/Buttons/myLoginButton.dart';
import 'package:residentapp/Widgets/Components/Containers/containerShape1.dart';
import 'package:residentapp/Widgets/Components/Fields/myFieldForm.dart';
import 'package:residentapp/Widgets/Design/DesignWidgets.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

Widget _userEmailPasswordWidget() {
    return Column(
      children: <Widget>[
        MyFieldForm(tittle:TextApp.USER_NAME),
        MyFieldForm(tittle:TextApp.EMAIL_ID),
        MyFieldForm(tittle:TextApp.PASSWORD, isPassword:true)
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          ContainerShape1(),
          Container(
              height: double.infinity,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: height * .15),
                      child: DesignWidgets.titleCustomDark(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * .05),
                      child: _userEmailPasswordWidget(),
                    ),
                    MyLoginButton(
                        text: TextApp.LOGIN,
                        colorText: Colors.white,
                        colorButtonBackground: Theme.of(context).primaryColor,
                        widgetToNavigate: LoginScreen()),
                   MySignUpLabelButton(
                     firstText: TextApp.HAVE_ACCOUNT,
                     secondText: TextApp.LOGIN,
                     secondTextColor: Theme.of(context).primaryColorDark,
                     widgetToNavigate: LoginScreen(),
                   )
                  ],
                ),
              )),
          Positioned(top: height * .025, child: MyBackButton()),
        ],
      ),
    ));
  }
}