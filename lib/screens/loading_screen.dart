import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:simple_weather/constants.dart';
import 'package:simple_weather/screens/main_screen.dart';
import 'package:simple_weather/screens/no_location.dart';
import 'package:simple_weather/utils/location.dart';
import 'package:simple_weather/utils/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  LocationHelper locationData;
  bool _gotLocation = true;
  bool _gotWeather = true;

  Future<void> getLocationData() async {
    locationData = LocationHelper();
    await locationData.getCurrentLocation();

    if (locationData.latitude == null || locationData.longitude == null) {
      // todo: Handle no location
      _gotLocation = false;
    }
  }

  void getWeatherData() async {
    // Fetch the location
    await getLocationData();

    // Fetch the current weather
    WeatherData weatherData = WeatherData(locationData: locationData);
    await weatherData.getCurrentTemperature();

    if (weatherData.currentTemperature == null ||
        weatherData.currentCondition == null) {
      // todo: Handle no weather
      _gotWeather = false;
    }

    if (_gotLocation == false || _gotWeather == false) {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) {
            return NoLocation();
          },
        ),
      );
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
            return MainScreen(weatherData: weatherData,);
          },
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    getWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
      ),
    );
  }
}
