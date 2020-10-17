import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:simple_weather/constants.dart';
import 'package:simple_weather/utils/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocationData() async {
    LocationHelper locationHelper = LocationHelper();
    await locationHelper.getCurrentLocation();

    if (locationHelper == null) {
      // Navigator.pushReplacement(context, newRoute)
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: kLinearGradient,
      ),
      child: Center(
        child: SpinKitRipple(
          color: Colors.white,
          size: 150.0,
          duration: Duration(milliseconds: 1200),
        ),
      ),
    );
  }
}
