import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:residentapp/Models/publications.dart';

class CardTab1 extends StatelessWidget {
  Publications publications;
  CardTab1(this.publications);
  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: (){
            Scaffold.of(context).showSnackBar(SnackBar(content: Text("ENTRO A LA PUBLICACION")));
          },
          child: Card(
        child:Column(
          children: <Widget>[
              Container(
                height: 144.0,
                width: 500.0,
                child: Image.asset(publications.image,height:144.0,width:160.0)
              ),
              padding(Text(publications.names, style: TextStyle(fontSize: 18.0,),)),
              Row(children: <Widget>[
                padding(Text(publications.description, style: TextStyle(fontSize: 18.0)))
              ],
              )
          ],
        )
        
      ),
    );
  }

  Widget padding(Widget widget){
    return Padding(padding: EdgeInsets.all(7.0), child:widget);
  }
}