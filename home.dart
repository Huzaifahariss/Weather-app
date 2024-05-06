import 'package:weatherapp/main.dart';
import 'package:weatherapp/models/city.dart';
import 'package:weather/weather.dart';
import 'package:flutter/material.dart';
import '../models/constants.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Constants myConstants = Constants();

  int temperature = 0;
  int maxTemp = 0;
  String weatherStateName = 'Loading...';
  int humidity = 0;
  int windSpeed = 0;

  var currentDate = 'Loading...';
  String imageUrl='';
  int woeid = 44418; // This is the where on Earth Id for London which is our default city
  String location = 'London'; // This is our default city


  // get the cities and selected cities data
  var selectedCities = City.getSelectedCities();
  List<String> cities = ['London']; // Default city is London this list will hold our selected cities.


  List consolidateWeatherList = []; // This list will hold the consolidated weather data for the selected cities

  //Api calls url
  String searchLocationUrl = 'https://api.openweathermap.org/data/2.5/weather?q=karachi&appid=e678c8ea3940bb33775d9d70cf16dacd';
  String searchWeatherUrl = 'https://api.openweathermap.org/data/2.5/weather';
  



WeatherFactory wf = new weatherFactory('1ea5bf6292e8f2442419a49028e75235');

  // get the where on eart id
  void fetchLocation(String location) async{
    // ignore: unused_local_variable
    var searchResult = await https.get(Uri.parse(searchLocationUrl + location));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      )
    );
  }
}