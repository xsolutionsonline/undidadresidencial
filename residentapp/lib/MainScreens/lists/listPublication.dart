import 'package:flutter/cupertino.dart';
import 'package:residentapp/MainScreens/cards/cardsTab1.dart';
import 'package:residentapp/Models/publications.dart';

class ListPublication extends StatefulWidget {
  @override
  _ListPublicationState createState() => _ListPublicationState();
}

class _ListPublicationState extends State<ListPublication> {
  List<Publications> publications = Publications.publications();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: publications.length,
      itemBuilder: (BuildContext context, int index){
        return Dismissible(
              key:  ObjectKey(publications[index]),
              child: CardTab1(publications[index]),
              onDismissed: (direction){
                  setState(() {
                      publications.removeAt(index);
                  });
                  
              },
        );
      });
  }
}