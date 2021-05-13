import 'dart:ffi';
import 'dart:ui';

class Publications {
  String names;
  String description;
  double value;
  int stock;
  String id;
  String image;

  Publications(this.names,this.description,this.value,this.stock,this.id,this.image);

  static List<Publications> publications(){
    return [Publications('Vendo Nevera','Nevera con dos años de uso apto 1705', double.parse("1000000"),1,'10020','assets/images/tab1.png'),
    Publications('Vendo TV 42 pulgadas','Televisor nuevo de 42 pulgadas marca lg', double.parse("600000"),1,'10021','assets/images/tab2.png'),
    Publications('Alizados progresivos','Alizadso progresivo a gratis domicilio el precio varia segun el cabello cada ml se agregan 500 pesos', double.parse("150000"),1,'10022','assets/images/tab1.png')
    ];
  }

}