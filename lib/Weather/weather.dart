// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
//
// class Weather extends StatefulWidget {
//   static const id ='settings';
//   const Weather({Key? key}) : super(key: key);
//
//   @override
//   _WeatherState createState() => _WeatherState();
// }
//
// class _WeatherState extends State<Weather> {
//   @override
//   Widget build(BuildContext context) {
//     return   Scaffold(
//       appBar: AppBar(
//         title: Text('Weather Screen'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 10),
//         child: Text(
//           'Weather Screen',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }
// import 'package:clima/services/location.dart';
// import 'package:clima/services/networking.dart';
// import 'package:clima/screens/city_screen.dart';
import 'city_screen.dart';
import 'location.dart';
import 'networking.dart';

const apiKey = '98a5fbfba83a4d015e293dc36d211549';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName)async{
    NetworkHelper networkHelper =  NetworkHelper
      ('$openWeatherMapURL?q=$cityName&pid=$apiKey&units=metric');
    var WeatherData =await networkHelper.getData();
    return WeatherData;

  }
  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
