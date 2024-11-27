 import 'package:flutter/material.dart';
import 'package:myapp/6Rowwithimahetit.dart';
 

class AddCarPage extends StatefulWidget {
  @override
  _AddCarPageState createState() => _AddCarPageState();
}

class _AddCarPageState extends State<AddCarPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _extraImageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF007DfC),
        title: Text('إضافة سيارة',style: TextStyle(color: Colors.white),)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'عنوان السيارة'),
            ),
            TextField(
              controller: _priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'السعر'),
            ),
            TextField(
              controller: _countryController,
              decoration: InputDecoration(labelText: 'سنة الصنع'),
            ),
            TextField(
              controller: _imageController,
              decoration: InputDecoration(labelText: 'صورة السيارة'),
            ),
            TextField(
              controller: _extraImageController,
              decoration: InputDecoration(labelText: 'صورة إضافية'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // إنشاء السيارة الجديدة
                final newCar = Car(
                  image: _imageController.text,
                  extraImage: _extraImageController.text,
                  title: _titleController.text,
                  country: _countryController.text,
                  price: double.parse(_priceController.text),
                  details: {
                    'name': _titleController.text,
                    'year': _countryController.text,
                    'color': 'أبيض',
                    'doors': '4',
                    'manufacturer': 'شركة جديدة',
                    'fuel': 'بترول',
                    'engine': 'V6',
                  },
                );

                // العودة مع السيارة المضافة
                Navigator.pop(context, newCar);
              },
              child: Text('إضافة السيارة',style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
