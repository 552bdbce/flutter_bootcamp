import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();

    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.longitude);
    print(location.latitude);
  }
  void somethingThatExpectsLessThan10(int n){
    if (n>10){
      throw 'exception';
    }
  }
  void getData()async{
    http.Response response = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=2008d21525e04aea2aabc5e141f5eda1',));
    if (response.statusCode == 200){
      String data = response.body;
      var decodedData = jsonDecode(data);

      double temperature = decodedData['main']['temp'];
      int condition = decodedData['weather'][0]['id'];
      String cityName = decodedData['name'];
    }else{
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(

    );
  }
}
