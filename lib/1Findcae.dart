import 'package:flutter/material.dart';
import 'package:myapp/Buton.dart';
//اول صفحة ه
 
 

class FinfCar extends StatefulWidget {
  const FinfCar({super.key});

  @override
  State<FinfCar> createState() => _FinfCarState();
}

class _FinfCarState extends State<FinfCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body:Stack(
      
  
        children: [
          Image.asset("asset/M.jpg",),
          Positioned.fill(child:   Image.asset("asset/1732035704337.jpg",fit: BoxFit.cover,),),

            SafeArea(child: Padding(
              padding:EdgeInsets.only(left: 20,top: 20),
          
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 190,top: 40),
                  child: Text("اكتشف سيارتك  ",style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold),),
                ),
                  Padding(
                  padding: const EdgeInsets.only(left: 180,top: 10),
                  child: Text(" المثالية    ",style: TextStyle(color: Colors.black,fontSize: 36,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding:EdgeInsets.only(top: 450,left: 25),
               
                  child: MaterialButton(
                     padding: EdgeInsets.symmetric( horizontal: 125,vertical: 15),
                    color: Colors.blue,
                    onPressed: ( ){
                      Navigator.of(context).pushNamed("login");
                    },child: Text(" تسجيل الدخول  ",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                    color: Colors.white),),
                    ),
                    ),
                
                SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: MaterialButton(
                        padding: EdgeInsets.symmetric( horizontal: 140,vertical: 15),
                        
                                        color: Colors.white,
                                        onPressed: ( ){ Navigator.of(context).pushNamed("LoginUp");},
                                        child: Text("انشاء حساب",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                                        color: Colors.black),)
                                        ,),
                    ),
                ],
              ),
            ))
          
        ]
      
      ) ,
    );
      
    
  }
  }
