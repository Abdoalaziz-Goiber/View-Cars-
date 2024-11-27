 import 'package:flutter/material.dart';
 import 'package:myapp/2Login.dart';
 //حق الايميل 
 
class comfieldadd extends StatelessWidget {
  final String hindtext;
  final TextEditingController mycntr;
  final Icon sub;
  final TextInputType kepporedtype;
   final String? Function(String?)? validator;
  const comfieldadd({super.key, required this.hindtext, required this.mycntr,required this.validator, required this.sub, required this.kepporedtype, required TextDirection textDirection, required IconButton suffixIcon, required bool obscureText});
  @override
  Widget build(BuildContext context){

    return   TextFormField(
        textDirection: TextDirection.rtl, 
      keyboardType:  kepporedtype,
      validator:validator ,
              controller: mycntr,
            decoration:  InputDecoration(
           
              
            contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            filled: true,
            fillColor:Color.fromRGBO(220, 219, 219, 0.835),
            hintText: hindtext,
            hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
            prefixIcon: sub,
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              
              borderSide: BorderSide(color: Colors.blue,width: 2),
              borderRadius: BorderRadius.all(Radius.circular(100))
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey,),
              borderRadius: BorderRadius.all(Radius.circular(100))
            )
          ),

        );
  } 
  
 }
 