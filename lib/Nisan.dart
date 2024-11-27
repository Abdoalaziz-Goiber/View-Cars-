import 'package:flutter/material.dart';
import 'package:myapp/8buy.dart';
 

class NissanPage extends StatelessWidget {
  final List<Map<String, dynamic>> cars = [
    {
      'image': 'asset/ll.png',
      'title': 'نيسان التيما',
      'year': '2024',
      'color': 'أسود',
      'doors': '4',
      'manufacturer': 'نيسان',
      'fuel': 'بنزين',
      'price': 25000.0,
    },
    {
      'image': 'asset/aa.png',
      'title': 'نيسان كيكس',
      'year': '2023',
      'color': 'رمادي',
      'doors': '4',
      'manufacturer': 'نيسان',
      'fuel': 'بترول',
      'price': 30000.0,
    },
       {
      'image': 'asset/bmcc.png',
      'title': 'سيارة نيسان  ',
      'year': '2018',
      'color': 'ذهبي',
      'doors': '2',
      'manufacturer': 'نيسان',
      'fuel': 'بترول',
      'price': 30000.0,
    },
 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 168, 201, 228),
      appBar: AppBar(backgroundColor: Color(0xFF007DfC),
        title: Text("نيسان",style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          final car = cars[index];
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  
                  Container(
                    width: double.infinity,  
                    height: 200, 
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(car['image']), 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,  
                      children: [
                        Text(
                          car['title'],
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                   
                        Row(
                          children: [
                            Text("السنة: ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                            Text(car['year'], style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("اللون: ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                            Text(car['color'], style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("الأبواب: ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                            Text(car['doors'], style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("المصنع: ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                            Text(car['manufacturer'], style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("نوع الوقود: ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                            Text(car['fuel'], style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        SizedBox(height: 10),
               
                        Text(
                          "السعر: \$${car['price']}",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                        SizedBox(height: 10),

                        // زر الدفع
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                       
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaymentPage(price: car['price']),
                                ),
                              );
                            },
                            child: Text('شراء الآن', style: TextStyle(fontSize: 18, color: Colors.white)),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF007DfC),  
                              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                              textStyle: TextStyle(fontSize: 18),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
