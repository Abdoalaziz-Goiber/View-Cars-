 import 'package:flutter/material.dart';

class BodywuthScrean extends StatefulWidget {
  const BodywuthScrean({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  _BodywuthScreanState createState() => _BodywuthScreanState();
}

class _BodywuthScreanState extends State<BodywuthScrean> {
  TextEditingController _searchController = TextEditingController();
  List<String> cars = [
    "بي ام دبليو",
    "دودج رام",
    "رنج روفر اتش اس إي",
    "نيسان سيفيك",
    "نيسان كيكس",
    "سيارة نيسان التيما",
    "تيوتا تندرا",
    "لكزس ال اكس",
    "لكزس ان اكس",
    "لكزس اي اس",
  ]; 
  List<String> filteredCars = []; 
  @override
  void initState() {
    super.initState();
    filteredCars = cars; //البداية
    _searchController.addListener(_onSearchChanged);   
  }

  void _onSearchChanged() {
    setState(() {
      filteredCars = cars
          .where((car) => car.contains(_searchController.text)) 
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
  
      height: widget.size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 40),
            padding: EdgeInsets.only(left: 30, right: 30,),
            height: widget.size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: Color(0xFF007DfC),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36)),
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(width: 130),
                Text(
                  "مرحبا بك",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          ),
        
        ],
      ),
    );
  }
}
