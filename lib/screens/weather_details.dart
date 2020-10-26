import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_weather/utils/weather.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({@required this.weatherData});

  final WeatherData weatherData;
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  double currentTemperature;
  int windSpeed;
  int realFeal;
  int humidity;

  void updateDisplayInfo(WeatherData weatherData) {
    setState(() {
      currentTemperature = weatherData.currentTemperature;
      windSpeed = weatherData.windSpeed.round();
      realFeal = weatherData.realFeal.round();
      humidity = weatherData.humidity.round();
    });
  }

  @override
  void initState() {
    super.initState();
    updateDisplayInfo(widget.weatherData);
  }

  Widget tableItem(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(icon),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Weather Details'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 40),
        child: Table(
          border: TableBorder.all(color: Colors.white54),
          children: [
            TableRow(children: [
              tableItem(currentTemperature.toString()+'°', 'Temperature',
                  FontAwesomeIcons.temperatureLow),
              tableItem(realFeal.toString()+'°', 'Real Feel',
                  FontAwesomeIcons.thermometerThreeQuarters),
            ]),
            TableRow(children: [
              tableItem(windSpeed.toString()+' km/h', 'Wind Speed',
                  FontAwesomeIcons.wind),
              tableItem(humidity.toString()+'°', 'Humidity',
                  FontAwesomeIcons.thermometerHalf),
            ]),
          ],
        ),
      ),
    );
  }}