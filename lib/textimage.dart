  import 'package:flutter/material.dart';
import 'package:myapp/4appar.dart';
import 'package:myapp/6Rowwithimahetit.dart';
import 'package:myapp/BMw.dart';
import 'package:myapp/Luxs.dart';
import 'package:myapp/Nisan.dart';
import 'package:myapp/Touoty.dart';
import 'package:myapp/title_withmore.dart';
 

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(    
      child: Column(
        children: <Widget>[
          // هنا إضافة صفحة BodywuthScrean فوق المحتوى
          BodywuthScrean(size: size,), 
          
          Padding(
            padding: const EdgeInsets.only(left: 250,bottom: 10),
            child: Text("تصفح حسب الماركة",style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold
            ),),
          ), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
            children: [
              _buildImageContainer('asset/Screenshot 2024-11-22 215618.png', context),
              _buildImageContainer('asset/Screenshot 2024-11-22 215253.png', context),
              _buildImageContainer('asset/Screenshot 2024-11-22 215200.png', context),
              _buildImageContainer('asset/NISAN.png', context), 
            ]
          ),
          // باقي المحتوى أسفل الصور
          Padding(
            padding: const EdgeInsets.only(left: 280, bottom: 10),
            child: Thismorewithmore(
              title: "تصفح الكل",
              press: () {},
            ),
          ),
          SizedBox(height: 10),

          Rowimagewithtite(),
        
        ],
      ),
    );
  }

  // دالة بناء الصورة مع GestureDetector
  Widget _buildImageContainer(String imagePath, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15), 
      child: GestureDetector(
        onTap: () {
      
          if (imagePath == 'asset/Screenshot 2024-11-22 215618.png') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NissanPage()),  
            );
          }
           if (imagePath == 'asset/Screenshot 2024-11-22 215253.png') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Touoty()),  
            );
          }
           if (imagePath == 'asset/Screenshot 2024-11-22 215200.png') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BmW()), 
            );
          }
            if (imagePath == 'asset/NISAN.png') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LUXS()),  
            );
          }
        },
        
        child: Container(
          width: 60,  
          height: 60,  
          decoration: BoxDecoration(
            color: Colors.grey,  
            shape: BoxShape.circle,  
            image: DecorationImage(
              image: AssetImage(imagePath), 
              fit: BoxFit.cover,  
            ),
          ),
        ),
      ),
    );
  }
}

  

