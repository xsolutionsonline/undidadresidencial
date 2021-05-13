import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:residentapp/MainScreens/cards/cardsTab1.dart';
import 'package:residentapp/MainScreens/lists/listPublication.dart';
import 'tabs/display.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController _controller;
  
  @override
  void initState(){
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();

  }

  TabBar getTabBar(){
    return TabBar(
      tabs: <Tab>[
        Tab(icon:Icon(Icons.storefront)),
        Tab(icon:Icon(Icons.pool)),
        Tab(icon:Icon(Icons.policy_rounded)),
      ],
      controller: _controller,
    );
  }

  TabBarView getTabBarView(var displays){
    return TabBarView(
      children: displays,
      controller: _controller,
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unidad Residencial'),
        bottom: getTabBar(),
      ),
      body: getTabBarView(<Widget>[
        ListPublication(),
        DisplayWidget('assets/images/tab2.png'),
        DisplayWidget('assets/images/tab3.png')
      ]),
    );
  }
}