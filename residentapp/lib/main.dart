import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:residentapp/MainScreens/welcomeScreen.dart';
import 'package:residentapp/Utils/AssetsImages.dart';
import 'package:residentapp/Utils/ConstantsApp.dart';
import 'package:residentapp/Utils/TextApp.dart';
import 'package:residentapp/Widgets/Design/DesignWidgets.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff00897b),
        primaryColorDark:Color(0xff005b4f) ,
        primaryColorLight:Color(0xff4ebaaa) ,
        accentColor: Color(0xff212121),
        backgroundColor:Color(0xff ) ,
      
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // init Firebase
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if(snapshot.hasData){
        if (snapshot.hasError) {
          log(':( lastrimosamente no conecto a firebase ');
          return SnackBar(content: Text('error iniciando firebase'));
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          log('conecto a firebase ');
          return SplashScreen(
                          seconds: ConstantsAPP.TIME_SPLASH_SCREEN,
                          navigateAfterSeconds: WelcomeScreen(),
                          image: AssetsImages.ImageLogo(),
                          photoSize: 100,
                          loaderColor: Theme.of(context).accentColor,
                          loadingText: Text(TextApp.LOADING,
                          style: Theme.of(context).textTheme.bodyText1
                          ),
                          gradientBackground: DesignWidgets.linearGradientMain(context),
                        );
        }
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return CircularProgressIndicator();
      },
    );
  }
}