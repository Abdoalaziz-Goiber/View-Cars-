 import 'package:flutter/material.dart';
import 'package:myapp/6Rowwithimahetit.dart';

class EditCarPage extends StatefulWidget {
  final Car car;

  EditCarPage({required this.car});

  @override
  _EditCarPageState createState() => _EditCarPageState();
}

class _EditCarPageState extends State<EditCarPage> {
  late TextEditingController titleController;
  late TextEditingController countryController;
  late TextEditingController priceController;
  late TextEditingController colorController;
  late TextEditingController seatsController;
  late TextEditingController manufacturerController;
  late TextEditingController fuelController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.car.title);
    countryController = TextEditingController(text: widget.car.country);
    priceController = TextEditingController(text: widget.car.price.toString());
    colorController = TextEditingController(text: widget.car.details['color']);
    seatsController = TextEditingController(text: widget.car.details['doors']);
    manufacturerController = TextEditingController(text: widget.car.details['manufacturer']);
    fuelController = TextEditingController(text: widget.car.details['fuel']);
  }

  @override
  void dispose() {
    titleController.dispose();
    countryController.dispose();
    priceController.dispose();
    colorController.dispose();
    seatsController.dispose();
    manufacturerController.dispose();
    fuelController.dispose();
    super.dispose();
  }

  void _saveChanges() {
    final updatedCar = Car(
      image: widget.car.image,
      extraImage: widget.car.extraImage,
      title: titleController.text,
      country: countryController.text,
      price: double.tryParse(priceController.text) ?? widget.car.price,
      details: {
        'name': titleController.text,
        'year': countryController.text,
        'color': colorController.text,
        'doors': seatsController.text,
        'manufacturer': manufacturerController.text,
        'fuel': fuelController.text,
 
      },
    );

    Navigator.pop(context, updatedCar);  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      appBar: AppBar(
        backgroundColor:  Color(0xFF007DfC),
        title: Text("تعديل السيارة",style: TextStyle(color: Colors.white),)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: "اسم السيارة"),
            ),
            TextField(
              controller: countryController,
              decoration: InputDecoration(labelText: "سنة الصنع"),
            ),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "السعر"),
            ),
            TextField(
              controller: colorController,
              decoration: InputDecoration(labelText: "اللون"),
            ),
            TextField(
              controller: seatsController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "عدد الركاب"),
            ),
            TextField(
              controller: manufacturerController,
              decoration: InputDecoration(labelText: "الماركة"),
            ),
            TextField(
              controller: fuelController,
              decoration: InputDecoration(labelText: "نوع الوقود"),
            ),
                SizedBox(height: 20),
              ElevatedButton(
                  onPressed: _saveChanges,
                child: Text(' حفظ التغيرات',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                 primary: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
              )
           
          ],
        ),
      ),
    );
  }
}