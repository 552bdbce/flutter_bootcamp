import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

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
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      print(position);
    } catch(e){
      print(e);
    }
  }
  void somethingThatExpectsLessThan10(int n){
    if (n>10){
      throw 'exception';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
