 import 'package:flutter/material.dart';
import 'package:myapp/7informastionimage.dart';
import 'package:myapp/add.dart';
import 'package:myapp/edit.dart';
  // Assuming you have a page for viewing car details

class Rowimagewithtite extends StatefulWidget {
  const Rowimagewithtite({super.key});

  @override
  _RowimagewithtiteState createState() => _RowimagewithtiteState();
}

class _RowimagewithtiteState extends State<Rowimagewithtite> {
  final TextEditingController _searchController = TextEditingController();
  List<Car> allCars = [
    Car(
      image: "asset/bb.png", 
      extraImage: "asset/b.png",   
      title: "بي ام دبليو", 
      country: "2022", 
      price: 43000,
      details: {
        'name': 'بي ام دبليو',
        'year': '2024',
        'color': 'ابيض',
        'doors': '4',
        'manufacturer': 'بي ام دبليو',
        'fuel': 'بنزين',
        'engine': 'V8',
      },
    ),
     Car(
      image: "asset/bma.png", 
      extraImage: "asset/bmaa.png",   
      title: "بي ام دبليو", 
      country: "2024", 
      price: 50000,
      details: {
        'name': 'بي ام دبليو',
        'year': '2024',
        'color': 'كحلي',
        'doors': '4',
        'manufacturer': 'BMW',
        'fuel': 'بنزين',
        'engine': 'V8',
      },
    ),
    Car(
      image: "asset/aa.png", 
      extraImage: "asset/a.png",   
      title: "  نيسان", 
      country: "2021", 
      price: 60000,
      details: {
        'name': '  نيسان',
        'year': '2021',
        'color': 'رصاصي',
        'doors': '4',
        'manufacturer': 'نيسان',
        'fuel': 'بترول',
        'engine': 'V6',
      },
    ),
      Car(
      image: "asset/bb.png", 
      extraImage: "asset/b.png",   
      title: " نيسان كيكس", 
      country: "2018", 
      price: 75000,
      details: {
        'name': '   نيسان كيكس',
        'year': '2018',
        'color': 'أبيض',
        'doors': '4',
        'manufacturer': 'نيسان',
        'fuel': 'بترول',
        'engine': 'V6',
      },
    ),
      Car(
      image: "asset/bmbb.png", 
      extraImage: "asset/mbb.png",   
      title: " بي ام دبليو  ", 
      country: "2022", 
      price: 80000,
      details: {
        'name': '  بي ام دبليو',
        'year': '2021',
        'color': 'ازرق',
        'doors': '4',
        'manufacturer': 'بي ام دبليو',
        'fuel': 'بترول',
        'engine': 'V6',
      },
    ),
      Car(
      image: "asset/bmcc.png", 
      extraImage: "asset/bmc.png",   
      title: " بي ام دبليو ", 
      country: "2010", 
      price: 40000,
      details: {
        'name': 'بي ام دليو',
        'year': '2010',
        'color': 'ذهبي',
        'doors': '2',
        'manufacturer': 'بي دبليو',
        'fuel': 'بترول',
        'engine': 'V6',
      },
    ),
      Car(
      image: "asset/bmd.png", 
      extraImage: "asset/c.png",   
      title: "   لكزس", 
      country: "2023", 
      price: 35000,
      details: {
        'name': '   لكزس',
        'year': '2023',
        'color': 'أبيض',
        'doors': '4',
        'manufacturer': 'لكزس',
        'fuel': 'بترول',
        'engine': 'V6',
      },
    ),
      Car(
      image: "asset/lud.png", 
      extraImage: "asset/ludd.png",   
      title: "لكزس", 
      country: "2024", 
      price: 46000,
      details: {
        'name': 'لكزس',
        'year': '2024',
        'color': 'رصاصي',
        'doors': '4',
        'manufacturer': 'لكزس',
        'fuel': 'بترول',
        'engine': 'V6',
      },
    ),
      Car(
      image: "asset/lul.png", 
      extraImage: "asset/lull.png",   
      title: "لكزس", 
      country: "2023", 
      price: 55000,
      details: {
        'name': ' لكزس  ',
        'year': '2023',
        'color': 'أبيض',
        'doors': '4',
        'manufacturer': 'لكزس',
        'fuel': 'بترول',
        'engine': 'V6',
      },
    ),
     Car(
      image: "asset/rm.png", 
      extraImage: "asset/r.png",   
      title: " تيوتا  ", 
      country: "2024", 
      price: 66000,
      details: {
        'name': '   تيوتا  ',
        'year': '2024',
        'color': 'اسود',
        'doors': '4',
        'manufacturer': 'تيوتا',
        'fuel': 'بترول',
        'engine': 'V6',
      },
    ),
      Car(
      image: "asset/dd.png", 
      extraImage: "asset/d.png",   
      title: " نيسان  ", 
      country: "2020", 
      price: 42000,
      details: {
        'name': '   نيسان  ',
        'year': '2020',
        'color': 'أبيض',
        'doors': '4',
        'manufacturer': 'نيسان',
        'fuel': 'بترول',
        'engine': 'V6',
      },
    ),
      Car(
      image: "asset/cc.png", 
      extraImage: "asset/c.png",   
      title: " تيوتا  ", 
      country: "2021", 
      price: 72000,
      details: {
        'name': '   تيوتا  ',
        'year': '2021',
        'color': 'أبيض',
        'doors': '4',
        'manufacturer': 'نيسان',
        'fuel': 'بترول',
        'engine': 'V6',
      },
    ),
    Car(
      image: "asset/luf.png", 
      extraImage: "asset/luff.png",   
      title: " لكزس  ", 
      country: "2024", 
      price: 82000,
      details: {
        'name': '   لكزس  ',
        'year': '2024',
        'color': 'أبيض',
        'doors': '4',
        'manufacturer': 'لكزس',
        'fuel': 'بترول',
        'engine': 'V6',
      },
    ),
  ];

  List<Car> displayedCars = [];

  @override
  void initState() {
    super.initState();
    displayedCars = allCars;
  }

  void _filterCars(String query) {
    setState(() {
      displayedCars = allCars.where((car) {
        return car.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  void _deleteCar(Car carToDelete) {
    setState(() {
      allCars.remove(carToDelete);
      displayedCars.remove(carToDelete);
    });
  }

  void _navigateToEditCarPage(Car car) async {
    final updatedCar = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditCarPage(car: car),
      ),
    );

    if (updatedCar != null) {
      setState(() {
        int index = allCars.indexOf(car);
        if (index != -1) {
          allCars[index] = updatedCar;
          displayedCars = allCars;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            controller: _searchController,
            onChanged: _filterCars,
            decoration: InputDecoration(
              hintText: "ابحث عن سيارة",
              prefixIcon: Icon(Icons.search, color: Colors.blue),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.blue, width: 2),
              ),
            ),
          ),
        ),
        
        SizedBox(height: 20),

        ElevatedButton(
          onPressed: () async {
            final newCar = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddCarPage()),
            );

            if (newCar != null) {
              setState(() {
                allCars.add(newCar);
                displayedCars = allCars;
              });
            }
          },
          child: Text('إضافة سيارة جديدة', style: TextStyle(color: Colors.white)),
          style: ElevatedButton.styleFrom(primary: Color(0xFF007DfC)),
        ),

        SizedBox(height: 20),

        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.8,
          ),
          itemCount: displayedCars.length,
          itemBuilder: (context, index) {
            final car = displayedCars[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InformationCarPage(
                      title: car.title,
                      country: car.country,
                      image: car.image,
                      price: car.price,
                      extraImage: car.extraImage,
                      details: car.details,
                    ),
                  ),
                );
              },
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 180,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(car.image),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        car.title,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        car.country,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "\$${car.price.toStringAsFixed(0)}",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit, color: Colors.blue, size: 30),
                          onPressed: () {
                            _navigateToEditCarPage(car);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            _deleteCar(car);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class Car {
  final String image;
  final String extraImage;
  final String title;
  final String country;
  final double price;
  final Map<String, String> details;

  Car({
    required this.image,
    required this.extraImage,
    required this.title,
    required this.country,
    required this.price,
    required this.details,
  });
}
