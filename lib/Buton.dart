import 'package:flutter/material.dart';
//اختصار لبتون

class butomm extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const butomm({super.key, this.onPressed, required this.title});
  @override
  Widget build(BuildContext context){

    return       MaterialButton(
              height: 50,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            color: Color(0xFF0674e4),
            onPressed: onPressed
            ,child:  Text(title,style: TextStyle(fontSize: 20,color: Colors.white),),);
  } 
  
}

