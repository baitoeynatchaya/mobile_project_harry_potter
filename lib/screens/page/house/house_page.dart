import 'package:flutter/material.dart';
import 'package:harry_potter/models/house.dart';
import 'package:harry_potter/repositories/house_repositoriy.dart';
import 'package:harry_potter/screens/page/house/gryffindor.dart';
import 'package:harry_potter/screens/page/house/hufflepuff.dart';
import 'package:harry_potter/screens/page/house/ravenclaw.dart';
import 'package:harry_potter/screens/page/house/slytherin.dart';

class HousePage extends StatefulWidget {
  const HousePage({super.key});

  @override
  State<HousePage> createState() => _HousePageState();
}

class _HousePageState extends State<HousePage> {
  List<House>? _houses;
  var _isLoading = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    getHouses();
  }

  getHouses() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });
    await Future.delayed(Duration(seconds: 2));
    try {
      var houses = await HouseRepository().getHouses();
      setState(() {
        _houses = houses;
        debugPrint('Number of items: ${houses.length}');
      });
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
    } finally {
      _isLoading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    buildSuccess() => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'House',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 95.0,
                    color: Color(0xFFA609F3),
                    fontFamily: 'HarryPotter'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  createHouse(
                      color: Color(0xFFA609F3),
                      image: _houses![0].image,
                      page: Gryffindor(house: _houses![0],)),
                  createHouse(
                      color: Color(0xFFA609F3),
                      image: _houses![1].image,
                      page: Hufflepuff(house: _houses![1],)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  createHouse(
                      color: Color(0xFFA609F3),
                      image: _houses![2].image,
                      page: Ravenclaw(house: _houses![2],)),
                  createHouse(
                      color: Color(0xFFA609F3),
                      image: _houses![3].image,
                      page: Slytherin(house: _houses![3],))
                ],
              ),
            ],
          ),
        );

    buildLoadingOverlay() => Container(
          color: Colors.black.withOpacity(0.2),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );

    buildError() => Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(_errorMessage ?? '', textAlign: TextAlign.center),
              SizedBox(height: 32.0),
              ElevatedButton(onPressed: getHouses, child: Text('Retry'))
            ]),
          ),
        );
    return Scaffold(
      backgroundColor: Color(0xFF1B1828),
      body: Stack(
        children: [
          if (_houses?.isNotEmpty ?? false) buildSuccess(),
          if (_errorMessage != null) buildError(),
          if (_isLoading) buildLoadingOverlay()
        ],
      ),
    );
  }

  Widget createHouse(
      {required Color color, required String image, dynamic page}) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
      child: Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
            border: Border.all(
              color: color,
              width: 3.0,
            ),
            shape: BoxShape.rectangle),
        child: Image.network(image, fit: BoxFit.cover, height: 250, width: 250),
      ),
    );
  }
}
