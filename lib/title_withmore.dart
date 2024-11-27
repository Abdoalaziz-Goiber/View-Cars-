import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

///سيارات منوعه
class Thismorewithmore extends StatelessWidget {
  const Thismorewithmore({
    super.key, required this.title, required this.press,
  });
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30 ),
      child: Row(
        children: <Widget>[
          tisviewcount(text: title),
          Spacer(),
        
          
        ],
      ),
    );
  }
}

class tisviewcount extends StatelessWidget {
  const tisviewcount({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(text,style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold
            ),  textDirection: TextDirection.rtl, ),
          ),
        
        ],
      )
      
    );
  }
}

 