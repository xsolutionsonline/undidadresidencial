import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:residentapp/MainScreens/homeScreen.dart';
import 'package:residentapp/MainScreens/login/mySignUpLabelButton.dart';
import 'package:residentapp/MainScreens/login/signUp.dart';
import 'package:residentapp/Utils/TextApp.dart';
import 'package:residentapp/Widgets/Components/Buttons/myBackButton.dart';
import 'package:residentapp/Widgets/Components/Buttons/myLoginButton.dart';
import 'package:residentapp/Widgets/Components/Containers/containerShape1.dart';
import 'package:residentapp/Widgets/Components/Fields/myFieldForm.dart';
import 'package:residentapp/Widgets/Design/DesignWidgets.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        MyFieldForm(tittle:TextApp.EMAIL_ID),
        MyFieldForm(tittle:TextApp.PASSWORD, isPassword:true)
      ],
    );
  }

  Widget _forgottenPassword() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.centerRight,
        child: Text(TextApp.FORGOT_PASSWORD,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800)));
  }

  Widget _sessionGoogle() {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: GoogleSignInButton(
            centered: true,
            borderRadius: 5,
            onPressed: () {},
            darkMode: false,
            text: TextApp.GOOGLE_SIGN));
  }

  Widget _divider() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  thickness: 1,
                ),
              ),
            ),
            Text(TextApp.OR),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ))
          ],
        ));
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
                      child: _emailPasswordWidget(),
                    ),
                    MyLoginButton(
                        text: TextApp.LOGIN,
                        colorText: Colors.white,
                        colorButtonBackground: Theme.of(context).primaryColor,
                        widgetToNavigate: HomeScreen()),
                    _forgottenPassword(),
                    _divider(),
                    _sessionGoogle(),
                   MySignUpLabelButton(
                     firstText: TextApp.DONT_HAVE_ACCOUNT,
                     secondText: TextApp.SIGNUP,
                     secondTextColor: Theme.of(context).primaryColorDark,
                     widgetToNavigate: SignUp(),
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
